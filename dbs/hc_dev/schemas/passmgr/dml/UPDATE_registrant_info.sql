UPDATE passmgr.registrant_info
SET  is_active = 'Y', mofified_on= getdate(), modified_by= 'sagrawal'
WHERE info_key = 1; 