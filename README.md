# dumpdb.sh
This script for automation dump database with separated the data, function and stucture of database


Urutan restore database

Struc
Data
Funct


yang lama proses di Data.sql

command : mysql -u username -pPasswordnya -f -c namadb < namafile

Dont forget to set 
innodb_file_tables=1
agar bin tiap db dipisahkan
