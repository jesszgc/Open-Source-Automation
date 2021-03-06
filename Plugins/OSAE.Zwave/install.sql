CALL osae_sp_object_type_add ('ZWAVE','ZWave Plugin','','PLUGIN',1,1,0,1);
CALL osae_sp_object_type_state_add ('ON','Running','ZWAVE');
CALL osae_sp_object_type_state_add ('OFF','Stopped','ZWAVE');
CALL osae_sp_object_type_event_add ('ON','Started','ZWAVE');
CALL osae_sp_object_type_event_add ('OFF','Stopped','ZWAVE');
CALL osae_sp_object_type_method_add ('ON','Start','ZWAVE','','','','');
CALL osae_sp_object_type_method_add ('OFF','Stop','ZWAVE','','','','');
CALL osae_sp_object_type_method_add ('REMOVE FAILED NODE','Remove Failed Node','ZWAVE','Object Address','','','');
CALL osae_sp_object_type_method_add ('ADD CONTROLLER','Add Controller','ZWAVE','','','','');
CALL osae_sp_object_type_method_add ('ADD DEVICE','Add Device','ZWAVE','','','','');
CALL osae_sp_object_type_method_add ('REMOVE CONTROLLER','Remove Controller','ZWAVE','','','','');
CALL osae_sp_object_type_method_add ('REMOVE DEVICE','Remove Device','ZWAVE','','','','');
CALL osae_sp_object_type_method_add ('RESET CONTROLLER','Reset Controller','ZWAVE','','','','');
CALL osae_sp_object_type_method_add ('NODE NEIGHBOR UPDATE','Node Neighbor Update','ZWAVE','Object Address','','','');
CALL osae_sp_object_type_method_add ('NETWORK UPDATE','Network Update','ZWAVE','','','','');
CALL osae_sp_object_type_property_add ('Port','Integer','','ZWAVE',0);
CALL osae_sp_object_type_property_add ('Home ID','String','','ZWAVE',0);
CALL osae_sp_object_type_property_add ('Polling Interval','Integer','','ZWAVE',0);

CALL osae_sp_object_type_add ('ZWAVE BINARY SWITCH','ZWave Binary Switch','','BINARY SWITCH',0,0,0,1);
CALL osae_sp_object_type_state_add ('ON','On','ZWAVE BINARY SWITCH');
CALL osae_sp_object_type_state_add ('OFF','Off','ZWAVE BINARY SWITCH');
CALL osae_sp_object_type_event_add ('ON','On','ZWAVE BINARY SWITCH');
CALL osae_sp_object_type_event_add ('OFF','Off','ZWAVE BINARY SWITCH');
CALL osae_sp_object_type_method_add ('ON','On','ZWAVE BINARY SWITCH','','','','');
CALL osae_sp_object_type_method_add ('OFF','Off','ZWAVE BINARY SWITCH','','','','');
CALL osae_sp_object_type_method_add ('NODE NEIGHBOR UPDATE','Node Neighbor Update','ZWAVE BINARY SWITCH','','','','');
CALL osae_sp_object_type_method_add ('ENABLE POLLING','Enable Polling','ZWAVE BINARY SWITCH','','','','');
CALL osae_sp_object_type_property_add ('Home ID','String','','ZWAVE BINARY SWITCH',0);
CALL osae_sp_object_type_property_add ('Poll','Boolean','','ZWAVE BINARY SWITCH',0);

CALL osae_sp_object_type_add ('ZWAVE DIMMER','ZWave Dimmer','','MULTILEVEL SWITCH',0,0,0,1);
CALL osae_sp_object_type_state_add ('ON','On','ZWAVE DIMMER');
CALL osae_sp_object_type_state_add ('OFF','Off','ZWAVE DIMMER');
CALL osae_sp_object_type_event_add ('ON','On','ZWAVE DIMMER');
CALL osae_sp_object_type_event_add ('OFF','Off','ZWAVE DIMMER');
CALL osae_sp_object_type_method_add ('ON','On','ZWAVE DIMMER','Level','','','');
CALL osae_sp_object_type_method_add ('OFF','Off','ZWAVE DIMMER','','','','');
CALL osae_sp_object_type_method_add ('NODE NEIGHBOR UPDATE','Node Neighbor Update','ZWAVE DIMMER','','','','');
CALL osae_sp_object_type_method_add ('ENABLE POLLING','Enable Polling','ZWAVE DIMMER','','','','');
CALL osae_sp_object_type_property_add ('Home ID','String','','ZWAVE DIMMER',0);
CALL osae_sp_object_type_property_add ('Level','String','','ZWAVE DIMMER',0);
CALL osae_sp_object_type_property_add ('Default Dim','String','','ZWAVE DIMMER',0);
CALL osae_sp_object_type_property_add ('Poll','Boolean','','ZWAVE DIMMER',0);

CALL osae_sp_object_type_add ('ZWAVE THERMOSTAT','ZWave Thermostat','','THERMOSTAT',0,0,0,1);
CALL osae_sp_object_type_state_add ('OFF','Off','ZWAVE THERMOSTAT');
CALL osae_sp_object_type_state_add ('HEAT ON','Heat On','ZWAVE THERMOSTAT');
CALL osae_sp_object_type_state_add ('COOL ON','Cool On','ZWAVE THERMOSTAT');
CALL osae_sp_object_type_event_add ('OFF','Off','ZWAVE THERMOSTAT');
CALL osae_sp_object_type_event_add ('HEAT ON','Heat On','ZWAVE THERMOSTAT');
CALL osae_sp_object_type_event_add ('COOL ON','Cool On','ZWAVE THERMOSTAT');
CALL osae_sp_object_type_event_add ('TEMPERATURE','Temperature Changed','ZWAVE THERMOSTAT');
CALL osae_sp_object_type_event_add ('OPERATING MODE','Operating Mode Changed','ZWAVE THERMOSTAT');
CALL osae_sp_object_type_event_add ('FAN ON','Fan Turned On','ZWAVE THERMOSTAT');
CALL osae_sp_object_type_event_add ('FAN OFF','Fan Turned Off','ZWAVE THERMOSTAT');
CALL osae_sp_object_type_event_add ('HEATSP','Heat Setpoint Changed','ZWAVE THERMOSTAT');
CALL osae_sp_object_type_event_add ('COOLSP','Cool Setpoint Changed','ZWAVE THERMOSTAT');
CALL osae_sp_object_type_method_add ('HEAT','Heat','ZWAVE THERMOSTAT','','','','');
CALL osae_sp_object_type_method_add ('OFF','Off','ZWAVE THERMOSTAT','','','','');
CALL osae_sp_object_type_method_add ('HEATSP','Set Heat Target Temperature','ZWAVE THERMOSTAT','Target Temperature','','','');
CALL osae_sp_object_type_method_add ('COOLSP','Set Cool Target Temperature','ZWAVE THERMOSTAT','Target Temperature','','','');
CALL osae_sp_object_type_method_add ('COOL','Cool','ZWAVE THERMOSTAT','','','','');
CALL osae_sp_object_type_method_add ('AUTO','Auto','ZWAVE THERMOSTAT','','','','');
CALL osae_sp_object_type_method_add ('AUX HEAT','Aux Heat','ZWAVE THERMOSTAT','','','','');
CALL osae_sp_object_type_method_add ('FAN AUTO','Fan Auto','ZWAVE THERMOSTAT','','','','');
CALL osae_sp_object_type_method_add ('FAN ON','Fan On','ZWAVE THERMOSTAT','','','','');
CALL osae_sp_object_type_method_add ('ON','On','ZWAVE THERMOSTAT','','','','');
CALL osae_sp_object_type_method_add ('UNIT OFF','Unit OFF','ZWAVE THERMOSTAT','','','','');
CALL osae_sp_object_type_method_add ('NODE NEIGHBOR UPDATE','Node Neighbor Update','ZWAVE THERMOSTAT','','','','');
CALL osae_sp_object_type_method_add ('ENABLE POLLING','Enable Polling','ZWAVE THERMOSTAT','','','','');
CALL osae_sp_object_type_property_add ('Home ID','String','','ZWAVE THERMOSTAT',0);
CALL osae_sp_object_type_property_add ('Temperature','String','','ZWAVE THERMOSTAT',0);
CALL osae_sp_object_type_property_add ('Operating Mode','String','','ZWAVE THERMOSTAT',0);
CALL osae_sp_object_type_property_add ('Fan Mode','String','','ZWAVE THERMOSTAT',0);
CALL osae_sp_object_type_property_add ('Fan State','String','','ZWAVE THERMOSTAT',0);
CALL osae_sp_object_type_property_add ('Override State','String','','ZWAVE THERMOSTAT',0);
CALL osae_sp_object_type_property_add ('Heat Setpoint','String','','ZWAVE THERMOSTAT',0);
CALL osae_sp_object_type_property_add ('Cool Setpoint','String','','ZWAVE THERMOSTAT',0);
CALL osae_sp_object_type_property_add ('Poll','Boolean','','ZWAVE THERMOSTAT',0);
CALL osae_sp_object_type_property_add ('Battery Level','String','','ZWAVE THERMOSTAT',0);
CALL osae_sp_object_type_property_add ('Enable Temperature Sensor','Boolean','','ZWAVE THERMOSTAT',0);
CALL osae_sp_object_type_property_add ('Temperature Scale','String','','ZWAVE THERMOSTAT',0);
CALL osae_sp_object_type_property_option_add('ZWAVE THERMOSTAT','Temperature Scale','Celsius');
CALL osae_sp_object_type_property_option_add('ZWAVE THERMOSTAT','Temperature Scale','Farenheit');

CALL osae_sp_object_type_add ('ZWAVE REMOTE','ZWave Remote','','ZWAVE REMOTE',0,0,0,1);
CALL osae_sp_object_type_property_add ('Home ID','String','','ZWAVE REMOTE',0);

CALL osae_sp_object_type_add ('ZWAVE MULTISENSOR','ZWave Multisensor','','ZWAVE MULTISENSOR',0,0,0,1);
CALL osae_sp_object_type_state_add ('ON','On','ZWAVE MULTISENSOR');
CALL osae_sp_object_type_state_add ('OFF','Off','ZWAVE MULTISENSOR');
CALL osae_sp_object_type_event_add ('ON','On','ZWAVE MULTISENSOR');
CALL osae_sp_object_type_event_add ('OFF','Off','ZWAVE MULTISENSOR');
CALL osae_sp_object_type_event_add ('LUMINANCE','Luminance Changed','ZWAVE MULTISENSOR');
CALL osae_sp_object_type_event_add ('TEMPERATURE','Temperature Changed','ZWAVE MULTISENSOR');
CALL osae_sp_object_type_method_add ('NODE NEIGHBOR UPDATE','Node Neighbor Update','ZWAVE MULTISENSOR','','','','');
CALL osae_sp_object_type_method_add ('ENABLE POLLING','Enable Polling','ZWAVE MULTISENSOR','','','','');
CALL osae_sp_object_type_property_add ('Home ID','String','','ZWAVE MULTISENSOR',0);
CALL osae_sp_object_type_property_add ('Temperature','String','','ZWAVE MULTISENSOR',0);
CALL osae_sp_object_type_property_add ('Luminance','String','','ZWAVE MULTISENSOR',0);
CALL osae_sp_object_type_property_add ('Battery Level','String','','ZWAVE MULTISENSOR',0);
CALL osae_sp_object_type_property_add ('Poll','Boolean','','ZWAVE MULTISENSOR',0);

CALL osae_sp_object_type_add ('ZWAVE BINARY SENSOR','ZWave Binary Sensor','','ZWAVE BINARY SENSOR',0,0,0,1);
CALL osae_sp_object_type_state_add ('ON','On','ZWAVE BINARY SENSOR');
CALL osae_sp_object_type_state_add ('OFF','Off','ZWAVE BINARY SENSOR');
CALL osae_sp_object_type_event_add ('ON','On','ZWAVE BINARY SENSOR');
CALL osae_sp_object_type_event_add ('OFF','Off','ZWAVE BINARY SENSOR');
CALL osae_sp_object_type_event_add ('ALARM LEVEL','Alarm Level Changed','ZWAVE BINARY SENSOR');
CALL osae_sp_object_type_method_add ('NODE NEIGHBOR UPDATE','Node Neighbor Update','ZWAVE BINARY SENSOR','','','','');
CALL osae_sp_object_type_method_add ('ENABLE POLLING','Enable Polling','ZWAVE BINARY SENSOR','','','','');
CALL osae_sp_object_type_method_add ('SET WAKEUP INTERVAL','Set Wake-up Interval','ZWAVE BINARY SENSOR','Seconds','','','');
CALL osae_sp_object_type_property_add ('Home ID','String','','ZWAVE BINARY SENSOR',0);
CALL osae_sp_object_type_property_add ('Battery Level','String','','ZWAVE BINARY SENSOR',0);
CALL osae_sp_object_type_property_add ('Poll','Boolean','','ZWAVE BINARY SENSOR',0);
CALL osae_sp_object_type_property_add ('Alarm Level','String','','ZWAVE BINARY SENSOR',0);

CALL osae_sp_object_type_add ('ZWAVE HOME ENERGY METER','ZWave Home Energy Meter','','ZWAVE HOME ENERGY METER',0,0,0,1);
CALL osae_sp_object_type_state_add ('ON','On','ZWAVE HOME ENERGY METER');
CALL osae_sp_object_type_state_add ('OFF','Off','ZWAVE HOME ENERGY METER');
CALL osae_sp_object_type_event_add ('ON','On','ZWAVE HOME ENERGY METER');
CALL osae_sp_object_type_event_add ('OFF','Off','ZWAVE HOME ENERGY METER');
CALL osae_sp_object_type_method_add ('NODE NEIGHBOR UPDATE','Node Neighbor Update','ZWAVE HOME ENERGY METER','','','','');
CALL osae_sp_object_type_method_add ('ENABLE POLLING','Enable Polling','ZWAVE HOME ENERGY METER','','','','');
CALL osae_sp_object_type_property_add ('Home ID','String','','ZWAVE HOME ENERGY METER',0);
CALL osae_sp_object_type_property_add ('Battery Level','String','','ZWAVE HOME ENERGY METER',0);
CALL osae_sp_object_type_property_add ('Poll','Boolean','','ZWAVE HOME ENERGY METER',0);
CALL osae_sp_object_type_property_add ('Power','String','','ZWAVE HOME ENERGY METER',0);

CALL osae_sp_object_type_add ('ZWAVE SMART ENERGY SWITCH','ZWave Smart Energy Switch','','ZWAVE SMART ENERGY SWITCH',0,0,0,1);
CALL osae_sp_object_type_state_add ('ON','On','ZWAVE SMART ENERGY SWITCH');
CALL osae_sp_object_type_state_add ('OFF','Off','ZWAVE SMART ENERGY SWITCH');
CALL osae_sp_object_type_event_add ('ON','On','ZWAVE SMART ENERGY SWITCH');
CALL osae_sp_object_type_event_add ('OFF','Off','ZWAVE SMART ENERGY SWITCH');
CALL osae_sp_object_type_method_add ('ON','On','ZWAVE SMART ENERGY SWITCH','Level','','','');
CALL osae_sp_object_type_method_add ('OFF','Off','ZWAVE SMART ENERGY SWITCH','','','','');
CALL osae_sp_object_type_method_add ('NODE NEIGHBOR UPDATE','Node Neighbor Update','ZWAVE SMART ENERGY SWITCH','','','','');
CALL osae_sp_object_type_method_add ('ENABLE POLLING','Enable Polling','ZWAVE SMART ENERGY SWITCH','','','','');
CALL osae_sp_object_type_property_add ('Home ID','String','','ZWAVE SMART ENERGY SWITCH',0);
CALL osae_sp_object_type_property_add ('Poll','Boolean','','ZWAVE SMART ENERGY SWITCH',0);
CALL osae_sp_object_type_property_add ('Power','String','','ZWAVE SMART ENERGY SWITCH',0);

CALL osae_sp_object_type_add ('ZWAVE SMART ENERGY DIMMER','ZWave Smart Energy Dimmer','','ZWAVE SMART ENERGY DIMMER',0,0,0,1);
CALL osae_sp_object_type_state_add ('ON','On','ZWAVE SMART ENERGY DIMMER');
CALL osae_sp_object_type_state_add ('OFF','Off','ZWAVE SMART ENERGY DIMMER');
CALL osae_sp_object_type_event_add ('ON','On','ZWAVE SMART ENERGY DIMMER');
CALL osae_sp_object_type_event_add ('OFF','Off','ZWAVE SMART ENERGY DIMMER');
CALL osae_sp_object_type_method_add ('ON','On','ZWAVE SMART ENERGY DIMMER','','','','');
CALL osae_sp_object_type_method_add ('OFF','Off','ZWAVE SMART ENERGY DIMMER','','','','');
CALL osae_sp_object_type_method_add ('NODE NEIGHBOR UPDATE','Node Neighbor Update','ZWAVE SMART ENERGY DIMMER','','','','');
CALL osae_sp_object_type_method_add ('ENABLE POLLING','Enable Polling','ZWAVE SMART ENERGY DIMMER','','','','');
CALL osae_sp_object_type_property_add ('Home ID','String','','ZWAVE SMART ENERGY DIMMER',0);
CALL osae_sp_object_type_property_add ('Level','String','','ZWAVE SMART ENERGY DIMMER',0);
CALL osae_sp_object_type_property_add ('Default Dim','String','','ZWAVE SMART ENERGY DIMMER',0);
CALL osae_sp_object_type_property_add ('Poll','Boolean','','ZWAVE SMART ENERGY DIMMER',0);
CALL osae_sp_object_type_property_add ('Power','String','','ZWAVE SMART ENERGY DIMMER',0);