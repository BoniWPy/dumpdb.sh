 
DATABASENAME="namadatabasenyah"
FILENAME=$DATABASENAME"_"$(date +"%Y%m%d")
DATABASEUSER="databaseuser"
DBPASSWORD="password"

mysqldump -u $DATABASEUSER -p$DBPASSWORD --complete-insert --no-create-db --no-create-info --skip-events --skip-routines --skip-triggers $DATABASENAME > /data_mysql/backup_daily/$DATABASENAME.data.sql
mysqldump -u $DATABASEUSER -p$DBPASSWORD -f --no-data --skip-events --skip-routines --skip-triggers $DATABASENAME > /data_mysql/backup_daily/$DATABASENAME.struk.sql
mysqldump -u $DATABASEUSER -p$DBPASSWORD -f --routines --triggers --no-create-info --no-data --no-create-db --skip-opt  $DATABASENAME > /data_mysql/backup_daily/$DATABASENAME.func.sql


             
