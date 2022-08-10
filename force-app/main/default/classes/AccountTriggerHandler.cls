public class AccountTriggerHandler {
   public static void updateAccountDescription(List<account> accTriggerNew, 
                                        List<account> accTriggerOld,
                                        Map<id, account> accTriggerNewMap,
                                        Map<id, account> accTriggerOldMap) {
    for (Account eachAcc : accTriggerNew) {
        //when inserted
        boolean updateDesc = false;
        //in insert oldMap is NULL so. If OLDMAP is NULL then INSERT.
        if(accTriggerOldMap == null && eachAcc.Active__c == 'Yes'){
            updateDesc = true;
        }
        //when updated. If OLDMAP is NOT NULL then UPDATE
        if(accTriggerOldMap != null){
            map<id, account> triggerOldMap = accTriggerOldMap;
            Account oldAccount = triggerOldMap.get(eachAcc.Id);
            Account newAccount = eachAcc;
            if(newAccount.Active__c == 'Yes' && newAccount.Active__c != oldAccount.Active__c){
                updateDesc = true;
            }
        }
        if(updateDesc){
            eachAcc.Description = 'Account is now active. Enjoy!!!!!';
        }
    }
   }

   public static void updateVIPForAllContacts(List<account> accTriggerNew, 
                                            List<account> accTriggerOld,
                                            Map<id, account> accTriggerNewMap,
                                            Map<id, account> accTriggerOldMap) {
       set<id> setAccIds = new set<id>();
       for (account eachAcc : accTriggerNew) {
           account oldAccount = accTriggerOldMap.get(eachacc.Id);
            if(eachAcc.vip__c != oldAccount.vip__c){
                setAccIds.add(eachAcc.Id);
            }
       }
       //check if atleast one account's vip is updated.
       if(!setAccIds.isEmpty()){
            //fetch all contacts for accounts whose vip field is changed.
            List<Contact> listContacts = [select id, name, vip__c, accountid from contact where accountid in :setAccIds];
            //check if atleast one contact is found
            if(!listContacts.isEmpty()){
                for (contact eachContact : listContacts) {
                        account newAccountRecord = accTriggerNewMap.get(eachContact.accountid);
                        eachContact.VIP__c = newAccountRecord.VIP__c;// GET IT FROM ACCOUNT's VIP FIELD
                }
                //update all the contacts
                update listContacts;
            }
       }
   }
}
