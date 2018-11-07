package com.demo.util;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public class StringUtil {
	
	/**
	 * 判断字符串是空
	 * @param str
	 * @return
	 */
	public static boolean isEmpty(String str){
		if("".equals(str)|| str==null){
			return true;
		}else{
			return false;
		}
	}
	
	/**
	 * 判断字符串不是空
	 * @param str
	 * @return
	 */
	public static boolean isNotEmpty(String str){
		if(!"".equals(str)&&str!=null){
			return true;
		}else{
			return false;
		}
	}
	
	
	/**
	 * 判断某一个字符串数组中是否含有某一字符串
	 * @param str
	 * @param strArr
	 * @return
	 */
	public static boolean existStrArr(String str,String []strArr){
		return Arrays.asList(strArr).contains(str);
	}
	
	/**
	 * String[]转int[]
	 * @param arrs
	 * @return
	 */
	public static Integer[] stringArrToIntergerArr(String[] arrs){
	    Integer[] ints = new Integer[arrs.length];
	    for(int i=0;i<arrs.length;i++){
	        ints[i] = Integer.parseInt(arrs[i]);
	    }
	    return ints;
	}
	
	/**
	 * String[]转Set<Long> 并去除重复元素
	 * Long[] 可有Set<Long>.toArray()取得
	 * @param arrs
	 * @return
	 */
	public static Set<Long> stringArrToLongSet(String[] arrs){
	    Set<Long> longSet = new HashSet<Long>();
	    for(int i=0;i<arrs.length;i++){
	    	longSet.add(Long.parseLong(arrs[i]));
	    }
	    return longSet;
	}
	
	/**
	 * 去除String[]里面空元素,并判断数组是否是空数组
	 * @param arrs
	 * @return
	 */
	public static boolean stringArrIsEmpty(String[] arrs){
		String[] strAtt = stringArrRemoveEmpty(arrs);
		return (strAtt == null || strAtt.length ==0);
	}
	
	/**
	 * 去除String[]里面空元素
	 * @param arrs
	 * @return
	 */
	public static String[] stringArrRemoveEmpty(String[] arrs){
		if(arrs == null || arrs.length == 0){
			return null;
		}else{
		
			//用StringBuffer来存放数组中的非空元素，用“;”分隔
	        StringBuffer sb = new StringBuffer();
	        for(int i=0; i<arrs.length; i++) {
	            if("".equals(arrs[i])) {
	                continue;
	            }
	            sb.append(arrs[i]);
	            if(i != arrs.length - 1) {
	                sb.append(";");
	            }
	        }
	        //用String的split方法分割，得到数组
	        return sb.length() == 0 ? null :sb.toString().split(";");
		}
	}
	
	public static void main(String[] args) {
        String[] aa = {"","","","",""};
        /*String[] stringArrRemoveEmpty = stringArrRemoveEmpty(aa);
        for(int i=0; i<stringArrRemoveEmpty.length; i++) {
            System.out.print(stringArrRemoveEmpty[i] + " ");
        }*/
        System.out.println();
        System.out.println(stringArrIsEmpty(aa));
	}
}
