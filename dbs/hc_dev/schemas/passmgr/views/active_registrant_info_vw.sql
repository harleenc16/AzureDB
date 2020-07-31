CREATE VIEW passmgr.active_registrant_info_vw 
AS 
SELECT  first_name, 
         last_name,
         ['birthday'] = dob
FROM      passmgr.registrant_info 
WHERE     is_active = 'Y'

