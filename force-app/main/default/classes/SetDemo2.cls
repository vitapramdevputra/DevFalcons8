public class SetDemo2 {
    public static Set<String> capitalizeSetString(set<string> stringSet) {
        Set<String> capsSet = new Set<String>();

        for (string eachStr : stringSet) {
            string tempstr = eachStr.toUpperCase();
            capsSet.add(tempstr);
        }
        
        return capsSet;
    }
}
