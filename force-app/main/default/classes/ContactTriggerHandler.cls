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
}
