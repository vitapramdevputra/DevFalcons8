public class ContactTriggerHandler {
    public static void contactUpdateValidation1(List<contact> conTriggerNew, 
                                                Map<id, contact> conTriggerNewMap,
                                                List<contact> conTriggerOld, 
                                                Map<id, contact> conTriggerOldMap) {
        for (contact eachContact : conTriggerNew) {
            contact oldContact = conTriggerOldMap.get(eachContact.id);
            //oldContact --> older value of LeadSource. If old value is Partner Referral, then DON't ALLOW
            if (oldContact.LeadSource == 'Partner Referral') {
                eachContact.addError('Cannot update Partner Referral contact');//it will add validation.
            }
        }
    }
    public static void contactUpdateValidation2(List<contact> conTriggerNew, 
                                                Map<id, contact> conTriggerNewMap,
                                                List<contact> conTriggerOld, 
                                                Map<id, contact> conTriggerOldMap) {
        for (contact eachContact : conTriggerNew) {
            id contactId = eachContact.id;
            Contact oldContact = conTriggerOldMap.get(contactId);
            if(eachContact.LeadSource != oldContact.LeadSource){
                eachContact.leadsource.addError('CANNOT UPDATE LEAD SOURCE. PLEASE!!!');
            }
        }
    }

    public static void updateAccountRollUpField(set<id> accountIds) {
        //Fetch all accounts and its related contact using inner query
        List<account> listAccounts = [select id, number_of_contacts__c, (select id from Contacts) from account where id in :accountIds];
        for (account eachAccount : listAccounts) {
            List<contact> accContacts = eachAccount.contacts;
            //get number of contact.
            integer noOfContacts = accContacts.size();
            eachAccount.number_of_contacts__c = noOfContacts;
        }
        update listAccounts;

    }
}
