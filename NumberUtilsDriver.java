import pkg.NumberUtils;

public class NumberUtilsDriver{
	public static void main (String[] args){
		try{
			System.out.println(NumberUtils.truncate(Double.parseDouble(args[0]), 2));
		}
		catch(Exception e){
			System.out.println(e);
		}
	}
}
