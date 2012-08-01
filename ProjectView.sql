SELECT PI.projectname, 
       CASE PI.objecttype 
         WHEN 0 THEN 'Records' 
         WHEN 1 THEN 'Indexes' 
         WHEN 2 THEN 'Fields' 
         WHEN 3 THEN 'Field Formats' 
         WHEN 4 THEN 'Translate Values' 
         WHEN 5 THEN 'Pages' 
         WHEN 6 THEN 'Menus' 
         WHEN 7 THEN 'Components' 
         WHEN 8 THEN 'Record PeopleCode' 
         WHEN 9 THEN 'Menu PeopleCode' 
         WHEN 10 THEN 'Queries' 
         WHEN 11 THEN 'Tree Structures' 
         WHEN 12 THEN 'Trees' 
         WHEN 13 THEN 'Access Groups' 
         WHEN 14 THEN 'Colors' 
         WHEN 15 THEN 'Styles' 
         WHEN 16 THEN 'Business Process Maps' 
         WHEN 17 THEN 'Business Processes' 
         WHEN 18 THEN 'Activities' 
         WHEN 19 THEN 'Roles' 
         WHEN 20 THEN 'Process Definitions' 
         WHEN 21 THEN 'Servers Definitions' 
         WHEN 22 THEN 'Process Type Definitions' 
         WHEN 23 THEN 'Job Definitions' 
         WHEN 24 THEN 'Recurrence Definitions' 
         WHEN 25 THEN 'Message Catalog' -- ?? 
         WHEN 26 THEN 'Dimensions' 
         WHEN 27 THEN 'Analysis Models' 
         WHEN 28 THEN 'Cube Templates' 
         WHEN 29 THEN 'Business Interlink' 
         WHEN 30 THEN 'SQL' 
         WHEN 31 THEN 'File Layout Definitions' 
         WHEN 32 THEN 'Component Interfaces' 
         WHEN 33 THEN 'Application Engine Programs' 
         WHEN 34 THEN 'Application Engine Sections' 
         WHEN 35 THEN 'Message Nodes' 
         WHEN 36 THEN 'Message Channels' 
         WHEN 37 THEN 'Messages' 
         WHEN 38 THEN 'Approval Rule Sets' 
         WHEN 39 THEN 'Message PeopleCode' 
         WHEN 40 THEN 'Subscription PeopleCode' 
         WHEN 41 THEN 'Channel PeopleCode' 
         WHEN 42 THEN 'Component Interface PeopleCode' 
         WHEN 43 THEN 'Application Engine PeopleCode' 
         WHEN 44 THEN 'Page PeopleCode' 
         WHEN 45 THEN 'Page Field PeopleCode' 
         WHEN 46 THEN 'Component PeopleCode' 
         WHEN 47 THEN 'Component Record PeopleCode' 
         WHEN 48 THEN 'Component Record Field PeopleCode' 
         WHEN 49 THEN 'Images' 
         WHEN 50 THEN 'Style Sheets' 
         WHEN 51 THEN 'HTML' 
         WHEN 52 THEN 'File References' 
         WHEN 53 THEN 'Permission Lists' 
         WHEN 54 THEN 'Portal Registry Definitions' 
         WHEN 55 THEN 'Portal Registry Structures' 
         WHEN 56 THEN 'URL Definitions' 
         WHEN 57 THEN 'Application Packages' 
         WHEN 58 THEN 'Application Package PeopleCode' 
         WHEN 59 THEN 'Portal Registry User Homepage' 
         WHEN 60 THEN 'Analytic Types' 
         WHEN 61 THEN 'Archive Template' 
         WHEN 62 THEN 'XSLT' 
         WHEN 63 THEN 'Portal Registry User Favorite' 
         WHEN 64 THEN 'Mobile Page' 
         WHEN 65 THEN 'Relationship' 
         WHEN 66 THEN 'CI Property PeopleCode' 
         WHEN 67 THEN 'Optimization Model' 
         WHEN 68 THEN 'File Reference' 
         WHEN 69 THEN 'File Reference Type Code' 
         WHEN 70 THEN 'Archive Object' 
         WHEN 71 THEN 'Archive Template (Type 2)' 
         WHEN 72 THEN 'Diagnostic Plug-In' 
         WHEN 73 THEN 'Analytic Model' 
         WHEN 75 THEN 'Java Portlet User Preference' 
         WHEN 76 THEN 'WSRP Remote Producer' 
         WHEN 77 THEN 'WSRP Remote Portlet' 
         WHEN 78 THEN 'WSRP Cloned Portlet Handle' 
         WHEN 79 THEN 'Service' 
         WHEN 80 THEN 'Service Operation' 
         WHEN 81 THEN 'Service Operation Handler' 
         WHEN 82 THEN 'Service Operation Version' 
         WHEN 83 THEN 'Service Operation Routing' 
         WHEN 84 THEN 'IB Queue' 
         WHEN 85 THEN 'XMLP Template Definition' 
         WHEN 86 THEN 'XMLP Report Definition' 
         WHEN 87 THEN 'XMLP File Definition' 
         WHEN 88 THEN 'XMLP Data Source Definition' 
         WHEN 89 THEN 'WSDL' 
         WHEN 90 THEN 'Message Schema' 
         WHEN 91 THEN 'Connected Query' 
         WHEN 92 THEN 'Document' 
         WHEN 93 THEN 'XML Document' 
         WHEN 94 THEN 'Relational Document' 
         WHEN 95 THEN 'Dependency Documents' 
         WHEN 97 THEN 'Essbase Cube Dimension' 
         WHEN 98 THEN 'Essbase Cube Outline' 
         WHEN 99 THEN 'Essbase Cube Connection' 
         WHEN 100 THEN 'Essbase Cube Template' 
         WHEN 101 THEN 'Delimited Document' 
         WHEN 102 THEN 'Positional Document' 
         WHEN 103 THEN 'Application Data Set Definition' 
         WHEN 104 THEN 'Tests' 
         WHEN 105 THEN 'Test Cases' 
         ELSE To_char(PI.objecttype) 
       END                                        AS "Object Type", 
       PI.objectvalue1                            AS "Object Value 1", 
       CASE PI.objectid2 
         WHEN 81 THEN 
           CASE PI.objectvalue2 
             WHEN '0' THEN 'Normal' 
             WHEN '1' THEN 'Application Engine' 
             WHEN '2' THEN 'Record View' 
             WHEN '5' THEN 'Audit' 
             WHEN '6' THEN 'App Engine XSLT' 
             ELSE PI.objectvalue2 
           END 
         WHEN 100 THEN 
           CASE PI.objectvalue2 
             WHEN 'C' THEN 'Content Ref.' 
             WHEN 'F' THEN 'Folder' 
             WHEN 'V' THEN 'Favorite' 
             ELSE PI.objectvalue2 
           END 
         ELSE PI.objectvalue2 
       END                                        AS "Object Value 2", 
       PI.objectvalue3                            AS "Object Value 3", 
       PI.objectvalue4                            AS "Object Value 4", 
       Decode(PI.sourcestatus, 0, 'Unknown', 
                               1, 'Absent', 
                               2, 'Changed', 
                               3, 'Unchanged', 
                               4, '*Changed', 
                               5, '*Unchanged', 
                               6, 'Same', 
                               PI.sourcestatus)   AS "Source", 
       Decode(PI.targetstatus, 0, 'Unknown', 
                               1, 'Absent', 
                               2, 'Changed', 
                               3, 'Unchanged', 
                               4, '*Changed', 
                               5, '*Unchanged', 
                               6, 'Same', 
                               PI.targetstatus)   AS "Target", 
       Decode(PI.upgradeaction, 0, 'Copy', 
                                1, 'Delete', 
                                2, 'None', 
                                3, 'CopyProp', 
                                PI.upgradeaction) AS "Action", 
       Decode(PI.takeaction, 0, 'No', 
                             1, 'Yes', 
                             PI.takeaction)       AS "Take Action" 
FROM   psprojectitem PI 
ORDER  BY PI.projectname, 
          PI.objecttype, 
          PI.objectvalue1, 
          PI.objectvalue2, 
          PI.objectvalue3, 
          PI.objectvalue4; 