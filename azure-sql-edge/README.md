

## How to restore database backup

Just an example on how to restore a database backup ( .bak file ) on the Azure SQL container.

Before proceeding, make sure to copy the backup file inside the contaiiner.

Suppose that we have a backup file named `MY_BACKUP_FILE.bak`. After moving the file inside
the container, we can proceed to a `RESTORE FILELISTONLY` to list the data and log files
included inside the backup:

```sql
use master;

RESTORE FILELISTONLY FROM DISK = N'/home/mssql/MY_BACKUP_FILE.bak';
```

Finally we can issue the final `RESTORE`, making sure to correctly set the path of the files
referenced in the `MOVE`:

```sql
use master;

RESTORE DATABASE mydatabase 
FROM DISK = N'/home/mssql/MY_BACKUP_FILE.bak' 
WITH NOUNLOAD, REPLACE, STATS = 10,
	MOVE 'mydatabase_Data' TO '/var/opt/mssql/mydatabase.mdf',
	MOVE 'mydatabase_Log' TO '/var/opt/mssql/mydatabase.ldf';
```