import project.src.NumberUtils;


public class ratioAsString_NumberUtilsDriver{
	public static void main (String[] args){
		String[] inputs = args[0].split("[,]");
		
		if (inputs[0].equals("null") || inputs[1].equals("null")){
			System.out.println("-");}
		else{
			try{
				System.out.println(NumberUtils.ratioAsString(Double.parseDouble(inputs[0]), Double.parseDouble(inputs[1])));
			}
			catch(Exception e){
				System.out.println(e);
			}
		}
	}
}
