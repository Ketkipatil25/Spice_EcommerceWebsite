package com.Model;

public class Helper{
	public static String get10words(String desc) {
		
		String strs[] = desc.split(" ");
		
//		Description String greater than 10
		if(strs.length >10) {
			
			String result = "";
			
//			To return first ten words
			for(int i =0;i<10;i++) {
//				String saved in res till 10 words
				result = result+strs[i]+" ";
			}
			return (result+"...");
			
		}
		
//		String less than 10 words
		else {
			return (desc+"...");
		}
		
	}
}