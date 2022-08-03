List<account> listAccount = new list<account>();

for (Integer i = 0; i < 5; i++) {
    account acc = new account();
    acc.name = 'SoftInnovas 2Aug v'+i;
    acc.AccountNumber = 'Accis-'+i;
    acc.Active__c = 'Yes';
    listAccount.add(acc);
}

system.debug('size of list = ' + listAccount.size());
if (!listAccount.isEmpty()) {
    insert listAccount;
}