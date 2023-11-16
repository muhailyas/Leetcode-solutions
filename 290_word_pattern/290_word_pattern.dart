class Solution {
   bool wordPattern(String pattern, String s) {
    Map<String,String?> table = {};
    List<String> string = [...s.split(' ')];
    if(string.length!=pattern.length){
        return false;
    }
    for(int i=0; i<string.length; i++){
        table[pattern[i]]=table.values.contains(string[i])?table[pattern[i]]:string[i];
    }
    for(int i=0; i<pattern.length; i++){
        if(table[pattern[i]]!=string[i]){
            return false;
        }
    }
    return true;
  }
}