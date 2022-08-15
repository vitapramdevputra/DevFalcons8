public class AccountTriggerHandlerP {
   public static void createDefaultContact(List<account> accTriggerNew, map<id, account> accTriggerNewMap) {
       //5 accounts inserted
       //accTriggerNew has 5 account record details.
       //How many contacts we need to create?
        //one contact for each account.
        List<contact> newContacts = new list<contact>();
        for (account eachAccount : accTriggerNew) {
            //create new contact here.
            Contact c = new Contact();
            c.LastName = eachAccount.Name;
            c.phone = eachAccount.Phone;
            c.AccountId = eachAccount.Id;
            //insert c; //why not good?
            //we only 150 DMLs in one transaction -> governor limit.
            //so if we insert more than 150 accounts this CODE WILL FAIL.

            newContacts.add(c);
        }
        if (!newContacts.isEmpty()) {
            insert newContacts;
        }
   }

   public static void updateOpportunityToLost(List<account> accTriggerNew, map<id, account> accTriggerNewMap,
                        List<account> accTriggerOld, Map<id, account> accTriggerOldMap) {
       //update related opportunites.
            //opps to closed lost if opp is NOT Closed Won.
        //how can we get set<id> for updated accounts?
                            //via Map.
                            set<id> accSetId = accTriggerNewMap.keySet();
       //fetch or get opps related to accounts updated.
                        //we write SOQL.
        List<Opportunity> opps = [select id, StageName, AccountId from Opportunity where AccountId in :accSetId and StageName != 'Closed Won' ];
        if(!opps.isEmpty()){                   
            //update list of opp's stageName to 'Closed Lost'
            for (Opportunity eachOpp : opps) {
                eachOpp.StageName = 'Closed Lost';
            }
            update opps;
        }
       
   }
}
