import project.NumberUtils;


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
