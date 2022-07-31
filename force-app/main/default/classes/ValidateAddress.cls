public with sharing class ValidateAddress {
   public void validateHomeAddress(){
    string houseName = 'Vitap Villa';
    system.debug('houseName ' + houseName);
    integer houseNumber = 18;
    system.debug('houseNumber ' + houseNumber);
    string streetName = 'Ghatlodia';
    system.debug('streetName ' + streetName);
    string cityName = 'Ahmedabad'; //heritage city
    system.debug('cityName = ' + cityName);
    string stateName = 'Gujarat';//India PM (Modi)
    system.debug('stateName ' + stateName);
    string stateISO = 'GJ';
    system.debug('stateISO ' + stateISO);
    string countryName = 'India';
    system.debug('countryName ' + countryName);
    string countryISO = 'IND';
    system.debug('countryISO ' + countryISO);


    //STARTs Q3
    integer lenghtOfStreetName = streetName.length();
    system.debug('lenghtOfStreetName = ' + lenghtOfStreetName);

    boolean streetContainsHouse = streetName.contains(houseName);
    system.debug('street contains house name = ' + streetContainsHouse);

    boolean streetContainStateISO = streetName.contains(stateISO);
    system.debug('street contains state iso ' + streetContainStateISO);

    string cityUpperCase = cityName.toUpperCase();
    system.debug('city in upper case - ' + cityUpperCase);

    houseName = houseName.toUpperCase();
    system.debug('houseName upper case is ' + houseName);

    string countryISOLowecase = countryISO.toLowerCase();
    system.debug('country ISO lower case = ' + countryISOLowecase);

    string fullAddress = houseName + ' ' + streetName + ', ' + cityName + ', ' + countryName;
    system.debug(fullAddress);

   }
}
