EXEC sp_addmessage 50005, 16, 'Vendor %s cannot be found'

RAISERROR(50005, 16, 1, 'Red Hat')