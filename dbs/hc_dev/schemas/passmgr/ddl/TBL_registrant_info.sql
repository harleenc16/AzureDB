IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[passmgr].[registrant_info]') AND type in (N'U'))
DROP TABLE [passmgr].[registrant_info]
GO

CREATE TABLE passmgr.registrant_info(

    info_key INT PRIMARY KEY IDENTITY(1,1),
    first_name nvarchar(100),
    last_name nvarchar(100),
    dob date,
    gender nvarchar(6),
    secretq nvarchar(100),
    secreta nvarchar(30),
    is_active char(1) DEFAULT 'Y',
    created_on date DEFAULT getdate(),
    created_by nvarchar(100) NOT NULL, 
    mofified_on date,
    modified_by nvarchar(100)  
); 
-- initial data load 
INSERT INTO passmgr.registrant_info (first_name, last_name, dob, gender, secretq, secreta, created_by) VALUES ('Harleen', 'Chaudhary', '2000-06-16', 'female', 'What was the name of your first pet?', 'Buddy', 'hchaudhary');

--New record added henceforth

INSERT INTO passmgr.registrant_info (first_name, last_name, dob, gender, secretq, secreta, created_by) VALUES ('Shurmin', 'Chaudhary', '2002-07-11', 'female', 'Where were you born?', 'Ludhiana', 'hchaudhary');