﻿using OSAE;
using System;
using System.Data;
using System.ServiceProcess;

public partial class config : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblVersion.Text = OSAEObjectPropertyManager.GetObjectPropertyValue("SYSTEM", "DB Version").Value;
            if (OSAEObjectPropertyManager.GetObjectPropertyValue("SYSTEM", "Debug").Value == "TRUE")
            {
                ddlDebug.SelectedIndex = 0;
            }
            else
            {
                ddlDebug.SelectedIndex = 1;
            }
            CheckServiceStatus();
            GetDBSize();
        }
    }
    protected void ddlDebug_SelectedIndexChanged(object sender, EventArgs e)
    {
        string s = ddlDebug.SelectedItem.Text.ToUpper();
        OSAEObjectPropertyManager.ObjectPropertySet("SYSTEM", "Debug", ddlDebug.SelectedItem.Text.ToUpper(), "Web UI");
    }

    private void CheckServiceStatus()
    {
        try
        {
            ServiceController sc = new ServiceController("OSAE");
            switch (sc.Status)
            {
                case ServiceControllerStatus.Running:
                    serviceLabel.Text = "Running";
                    break;
                case ServiceControllerStatus.Stopped:
                    serviceLabel.Text = "Stopped";
                    break;
                case ServiceControllerStatus.Paused:
                    serviceLabel.Text = "Paused";
                    break;
                case ServiceControllerStatus.StopPending:
                    serviceLabel.Text = "Stopping";
                    break;
                case ServiceControllerStatus.StartPending:
                    serviceLabel.Text = "Starting";
                    break;
                default:
                    serviceLabel.Text = "Status Changing";
                    break;
            }
        }
        catch (Exception exc)
        {
            serviceLabel.Text = "Could not find service";
        }
    }

    private void GetDBSize()
    {
        string sql = "SELECT SUM( data_length + index_length) / 1024 / 1024 AS size FROM information_schema.TABLES WHERE table_schema = 'OSAE';";
        DataSet d = OSAESql.RunSQL(sql);
        decimal size = (decimal)d.Tables[0].Rows[0]["size"];
        dbSize.Text = String.Format("{0:0.##}", size) + "Mb";
    }
}