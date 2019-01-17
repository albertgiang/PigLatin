public void setup(){
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++){
	  System.out.println(pigLatin(lines[i]));
	}
}

public void draw(){
        //not used
}

public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
  String letter;
  for(int i = 0; i < sWord.length(); i++){
    letter = sWord.substring(i, i + 1);
    if(letter.equals("a") || letter.equals("e") || letter.equals("i") || letter.equals("o") || letter.equals("u")){
      return i;  
    }
  }
	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  int firstVowelIndex = findFirstVowel(sWord);
  
	if(firstVowelIndex == -1){
		return sWord + "ay";
  } else if(firstVowelIndex == 1){
    return sWord + "way";
	} else if(sWord.substring(0, 2).equals("qu")){
    return sWord.substring(2) + "qu" + "ay";
  } else {
    return sWord.substring(firstVowelIndex, sWord.length()) + sWord.substring(0, firstVowelIndex) + "ay";
  }
		//return "ERROR!";
}
