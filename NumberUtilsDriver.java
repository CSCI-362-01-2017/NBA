import home.dave.TestAutomation.project.sigmah_master.src.main.java.org.sigmah.client.util.NumberUtils;

public class NumberUtilsDriver
{
	public static void main (String[] args)
	{
		double x = NumberUtils.truncate(8.018);
		System.out.println(x);
	}
}
