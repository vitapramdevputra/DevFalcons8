map<string, string> mapCntCurrency = new map<string, string>();
mapCntCurrency.put('USA', 'Dollar');
mapCntCurrency.put('France', 'Euro');
mapCntCurrency.put('Japan','Yen');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('India', 'Rupee');
mapCntCurrency.put('Turkey', 'Lira');
mapCntCurrency.put('El Salvador', 'Bitcoin');
mapCntCurrency.put('Germany','Euro');
system.debug(mapCntCurrency);


string IndiaCurrency = mapCntCurrency.get('India');
string country = 'Turkey';
string CountryCurrency = mapCntCurrency.get(country);

system.debug('India Currency is ' + IndiaCurrency);
system.debug('Turkey currency is ' + CountryCurrency);

//fetch all country
set<string> countrySet = mapCntCurrency.keySet();
system.debug('all country\'s in map are ' + countrySet);

list<string> currencies = mapCntCurrency.values();
system.debug('all currencies in map are ' + currencies);

set<string> countries = mapCntCurrency.keySet();
for(string eachKey: mapCntCurrency.keySet()){
    string printString = 'Country is ' + eachKey;

    //fetch value(currency) for each KEY(country)
    string eachValue = mapCntCurrency.get(eachKey);
    printString = printString + ', its currency is ' + eachValue;

    system.debug(printString);
}
