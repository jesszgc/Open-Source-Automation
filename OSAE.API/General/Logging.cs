﻿namespace OSAE
{
    using System;
    using MySql.Data.MySqlClient;
    using System.IO;
    using System.Text;
    
    [Serializable]
    public class Logging
    {
         private static Logging privateInstance = null;

        /// <summary>
        /// Provides exlusive writes to the log file
        /// </summary>
        private static object logLocker = new object();

        private string logName = string.Empty;

        private static object memoryLock = new object();

        private Logging(string requestedLogName)
        {
            logName = requestedLogName;
        }

        public static Logging GetLogger()
        {
            lock (memoryLock)
            {
                if (privateInstance == null)
                {
                    privateInstance = new Logging("Default");
                }
            }

            return privateInstance;
        }

        public static Logging GetLogger(string requestedLogName)
        {
            lock (memoryLock)
            {
                if (privateInstance == null)
                {
                    privateInstance = new Logging(requestedLogName);
                }
                else
                {
                    privateInstance.logName = requestedLogName;
                }
            }

            return privateInstance;
        }

        public static void AddToLog(string audit, bool alwaysLog, string logFile)
        {
            try
            {
                // OSAE osae = new OSAE(string.Empty);

                // if (osae.GetObjectPropertyValue("SYSTEM", "Debug").Value == "TRUE" || alwaysLog)
                {
                    lock (logLocker)
                    {
                        string filePath = Common.ApiPath + "/Logs/" + logFile + ".log";
                        System.IO.FileInfo file = new System.IO.FileInfo(filePath);
                        file.Directory.Create();
                        StreamWriter sw = File.AppendText(filePath);
                        StringBuilder sb = new StringBuilder();

                        sw.WriteLine(System.DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss.fff tt") + "ST:" + sb.ToString() + "\r\n\r\n - " + audit);
                        sw.Close();
                        //if (osae.GetObjectPropertyValue("SYSTEM", "Prune Logs").Value == "TRUE")
                        //{
                        //    if (file.Length > 1000000)
                        //        file.Delete();
                        //}
                    }
                }
            }
            catch (Exception ex)
            {
                lock (logLocker)
                {
                    string filePath = Common.ApiPath + "/Logs/" + logFile + ".log";
                    System.IO.FileInfo file = new System.IO.FileInfo(filePath);
                    file.Directory.Create();
                    StreamWriter sw = File.AppendText(filePath);
                    sw.WriteLine(System.DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss.fff tt") + " - LOGGING ERROR: "
                        + ex.Message + " - " + ex.InnerException);
                    sw.Close();
                    if (file.Length > 1000000)
                        file.Delete();
                }
            }        
        }

        /// <summary>
        /// Adds a message to the log
        /// </summary>
        /// <param name="audit"></param>
        /// <param name="alwaysLog"></param>
        public void AddToLog(string audit, bool alwaysLog)
        {
            AddToLog(audit, alwaysLog, logName);
        }

        /// <summary>
        /// Add an entry to the degug table
        /// </summary>
        /// <param name="entry">String to add to the debug table</param>
        public void DebugLogAdd(string entry)
        {
            try
            {
                using (MySqlCommand command = new MySqlCommand())
                {
                    OSAE osae = new OSAE(string.Empty);
                    command.CommandText = "CALL osae_sp_debug_log_add (@Entry,@Process)";
                    command.Parameters.AddWithValue("@Entry", entry);
                    command.Parameters.AddWithValue("@Process", logName);
                    OSAESql.RunQuery(command);
                }
            }
            catch
            {
                // Not a lot we can do if it fails here
            }
        }

        /// <summary>
        /// Add an entry to the event log table
        /// </summary>
        /// <param name="objectName">Object Name</param>
        /// <param name="eventName">Event Name</param>
        public void EventLogAdd(string objectName, string eventName, string parameter1 = null, string parameter2 = null)
        {
            using (MySqlCommand command = new MySqlCommand())
            {
                OSAE osae = new OSAE(string.Empty);
                command.CommandText = "CALL osae_sp_event_log_add (@ObjectName, @EventName, @FromObject, @DebugInfo, @Param1, @Param2)";
                command.Parameters.AddWithValue("@ObjectName", objectName);
                command.Parameters.AddWithValue("@EventName", eventName);
                command.Parameters.AddWithValue("@FromObject", osae.GetPluginName(logName, Common.ComputerName));
                command.Parameters.AddWithValue("@DebugInfo", null);
                command.Parameters.AddWithValue("@Param1", parameter1);
                command.Parameters.AddWithValue("@Param2", parameter2);
                try
                {
                    OSAESql.RunQuery(command);
                }
                catch (Exception ex)
                {
                    AddToLog("API - EventLogAdd error: " + command.CommandText + " - error: " + ex.Message, true);
                }
            }
        }

        /// <summary>
        /// Deletes everything from the event_log table
        /// </summary>
        public void EventLogClear()
        {
            using (MySqlCommand command = new MySqlCommand())
            {
                command.CommandText = "CALL osae_sp_event_log_clear";
                try
                {
                    OSAE osae = new OSAE(string.Empty);
                    OSAESql.RunQuery(command);
                }
                catch (Exception ex)
                {
                    AddToLog("API - EventLogClear error: " + command.CommandText + " - error: " + ex.Message, true);
                }
            }
        }
    }
}
