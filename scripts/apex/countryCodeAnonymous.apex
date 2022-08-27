Map<string, country_code__c> mapCS = country_code__c.getAll();
//.getAll() --> returns the map of 'Name'(standard field) as KEY and Custom Setting Record as VAlue.
//KEY           VALUE
//Canada --> CAN
//Belgium --> BEL
Set<string> countries = mapCS.KeySet();
for (string eachCountry : countries) {
    //country code field vaue here?
    country_code__c cs = mapCS.get(eachCountry);
    string countryCode = cs.country_code__c;
    system.debug('Country is ' + eachCountry + ', its code is ' + countrycode);
}

system.debug('map of country code custom setting --> ' + mapCS);









{Belgium=Country_Code__c:{LastModifiedDate=2022-08-26 01:08:55, IsDeleted=false, CreatedById=0055i000004137IAAQ, CreatedDate=2022-08-26 01:08:55, Country_Code__c=BEL, Id=a025i000007gi3BAAQ, LastModifiedById=0055i000004137IAAQ, SetupOwnerId=00D5i000006JlhVEAS, Name=Belgium, SystemModstamp=2022-08-26 01:08:55}, 

Canada=Country_Code__c:{LastModifiedDate=2022-08-26 01:06:45, IsDeleted=false, CreatedById=0055i000004137IAAQ, CreatedDate=2022-08-26 01:06:45, Country_Code__c=CAN, Id=a025i000007gi1jAAA, LastModifiedById=0055i000004137IAAQ, SetupOwnerId=00D5i000006JlhVEAS, Name=Canada, SystemModstamp=2022-08-26 01:06:45}, 

India=Country_Code__c:{LastModifiedDate=2022-08-26 01:06:59, IsDeleted=false, CreatedById=0055i000004137IAAQ, CreatedDate=2022-08-26 01:06:59, Country_Code__c=IND, Id=a025i000007gi2FAAQ, LastModifiedById=0055i000004137IAAQ, SetupOwnerId=00D5i000006JlhVEAS, Name=India, SystemModstamp=2022-08-26 01:06:59}, 

Turkiye=Country_Code__c:{LastModifiedDate=2022-08-26 01:07:15, IsDeleted=false, CreatedById=0055i000004137IAAQ, CreatedDate=2022-08-26 01:07:15, Country_Code__c=TUR, Id=a025i000007gi2PAAQ, LastModifiedById=0055i000004137IAAQ, SetupOwnerId=00D5i000006JlhVEAS, Name=Turkiye, SystemModstamp=2022-08-26 01:07:15}, 

United States=Country_Code__c:{LastModifiedDate=2022-08-26 01:06:52, IsDeleted=false, CreatedById=0055i000004137IAAQ, CreatedDate=2022-08-26 01:06:52, Country_Code__c=USA, Id=a025i000007gi1tAAA, LastModifiedById=0055i000004137IAAQ, SetupOwnerId=00D5i000006JlhVEAS, Name=United States, SystemModstamp=2022-08-26 01:06:52}}