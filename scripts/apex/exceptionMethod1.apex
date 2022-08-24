try{
    Account acc = new account();
    insert acc;
} catch(DMLException dex){
    system.debug('DML went wrong buddy');
} catch(Exception ex){
    system.debug('something went wrong buddy');
}


system.debug('Apex is simple');