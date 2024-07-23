package mypack;
import java.util.Random;
public class CodeGenerator
{
	  String code="";
	    char ch;
	    int n;
String getCaptchaCode()
{
	 Random r=new Random();
	    ch=(char)(r.nextInt(25)+65);
	    code=code+ch;
	    ch=(char)(r.nextInt(25)+97);
	    code=code+ch;
	    n=r.nextInt(9);
	    code=code+n+"";
	    ch=(char)(r.nextInt(25)+97);
	    code=code+ch;
	    ch=(char)(r.nextInt(25)+65);
	    code=code+ch;
	    n=r.nextInt(9);
	    code=code+n+"";
	    code=code+ch;
	       n=r.nextInt(10);
	       if(n%2==0)
	       {
	      ch=(char)(r.nextInt(25)+97);
	        code=code+ch;
	       }
		return code;	
}
}
