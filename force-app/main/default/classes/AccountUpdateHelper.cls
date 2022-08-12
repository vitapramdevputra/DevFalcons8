public with sharing class AccountUpdateHelper {
    @InvocableMethod
    public static void updateAccountWebsite(List<id> accIds) {
        List<account> listAcc = [select id, website from account where id in :accIds];
        for (account eachAcc : listAcc) {
            eachAcc.Website = 'www.softinnovas.com';
        }
        update listAcc;
    }
}
