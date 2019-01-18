public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord){
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
  int l = -1;
  for(int a = 0; a <= sWord.length()-1;a++){
  String t = sWord.substring(a,a+1);
  if(t.equals("a")== true || t.equals("e")== true || t.equals("i")== true || t.equals("o")== true || t.equals("u")== true ){
  l = a;
  return l;
  }
}
 return l;
}
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  if(sWord.substring(0,2).equals("qu"))
  return sWord.substring(2,sWord.length())+sWord.substring(0,2) + "ay";
	if(findFirstVowel(sWord) == -1)
	{
 return sWord + "ay";
	}
	else
	{
return sWord.substring(findFirstVowel(sWord))+sWord.substring(0,findFirstVowel(sWord)) + "ay";
	}
}
