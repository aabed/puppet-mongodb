define mongo_adduser ($mongo_user=$name,$mongo_db_name,$mongo_passwd){
    exec {'add_mongo_user':
        command => "mongo $mongo_db_name --eval \"printjson(db.addUser(\'$mongo_user\',\'$mongo_passwd\'))\"",
        before  => File  ['/etc/init/mongodb.conf']          
  }         
}
