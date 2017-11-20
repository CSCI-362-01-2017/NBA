import project.NumberUtils;

/**
	 * Driver for the truncate method that truncates the decimal part of a number.
	 * There are two versions of this method, one which takes one parameter, n, that
	 * automatically truncates to two decimal points. And another version which takes
	 * two parameters, n and decimals, which truncates n to (decimals) decimals.
	 * 
	 * Truncate:
	 	* @param n
	 	*          The number, must not be <code>null</code>.
	 	* @param decimals
	 	*          The number of decimals. <code>0</code> will truncate all the decimal part.
		* @return The truncated number.
	 */
public class truncate_NumberUtilsDriver{
	public static void main (String[] args){
		String[] inputs = args[0].split("[,]");
		try{
			if(inputs.length==1){
				System.out.println(NumberUtils.truncate(Double.parseDouble(inputs[0]), 2));
			}
			else{
				System.out.println(NumberUtils.truncate(Double.parseDouble(inputs[0]), Integer.parseInt(inputs[1])));
			}

		}
		catch(Exception e){
			System.out.println(e);
		}
	}
}
