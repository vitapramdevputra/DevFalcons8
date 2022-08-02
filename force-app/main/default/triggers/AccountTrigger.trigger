trigger AccountTrigger on Account (before insert, after insert) {
    system.debug('====Trigger START====');
    //this should print only in BEFORE
    if(Trigger.isBefore){
        system.debug('Before INSERT trigger called');
    }
    if(Trigger.isAfter){
        //this should print only in AFTER
        system.debug('After INSERT trigger called');
    }
    system.debug('====Trigger END====');
}