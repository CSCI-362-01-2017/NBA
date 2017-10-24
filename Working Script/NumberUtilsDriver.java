import pkg.NumberUtils;

public class NumberUtilsDriver
{
	public static void main (String[] args)
	{
		double x = 2.008;
		System.out.println(NumberUtils.truncate(x, 2));
	}
}
