package mypack;
import java.io.File;
import java.util.Random;

import com.oreilly.servlet.multipart.FileRenamePolicy;
public class renameFile implements FileRenamePolicy {
	public String file_name,fname,name;
public File rename(File f) {
	fname=f.getParent();
	name=f.getName();
	Random r=new Random();
	int num=r.nextInt(9999999);
	file_name=num+name;
	File fpath=new File(fname+"//"+file_name);
	return fpath;
}
}
