public  class SetDemo {
    public static void citySet() {
        Set<string> cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Lisbon');
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Nairobi');

        system.debug('list of cities ' + cities);
    }

    public static set<integer> setFromList(List<integer> intList) {
        Set<Integer> intSet = new Set<Integer>();
        intSet.addAll(intList);
        return intSet;
    }
}
