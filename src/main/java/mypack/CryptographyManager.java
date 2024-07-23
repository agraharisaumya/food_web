package mypack;

public class CryptographyManager {
   String CyperText="";
   char ch;
   int n,x,NewASCII=0;
   public String encryptMyPassword(String PlainText)
   {
	   
	   for(x=0;x<PlainText.length();x++)
	   {
		   ch=PlainText.charAt(x);
		   n=(int)ch;
		   if(n>=65 && n<=90)
		   {
			   NewASCII=122-n+65;
		   }
		   else if(n>=97 && n<=122)
		   {
			   NewASCII=65+n-97;
		   }
		   else if(n>=48 && n<=57)
		   {
			   NewASCII=48-n+57;
		   }
			   else
			   {
				   NewASCII=n;
			   }
			   CyperText=CyperText+((char)NewASCII);	   
		   }
		   return CyperText;
	   }
   }
	
	

