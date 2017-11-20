import project.NumberUtils;

/**
	 * Driver for the ratio class that computes a ratio.
	 * 
	 * Ratio class:
	 	* @param n
	 	*          The number.
	 	* @param in
	 	*          The ratio number.
	 	* @return The ratio.
	 */
public class ratio_NumberUtilsDriver{
	public static void main (String[] args){
		String[] inputs = args[0].split("[,]");
		
		try{
			System.out.println(NumberUtils.ratio(Double.parseDouble(inputs[0]), Double.parseDouble(inputs[1])));
		}
		catch(Exception e){
			System.out.println(e);
		}
	}
}
