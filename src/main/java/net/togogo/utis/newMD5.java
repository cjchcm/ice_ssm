package net.togogo.utis;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

//自定义加密规则
public class newMD5 {

    private final static String [] strDigits ={"0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","g"};

    public newMD5() {
    }

    //将数字密码转换成字符串
    private static String byteToArrayString(byte bByte){
        int iRet = bByte;
        if (iRet < 0){
            iRet +=256;
        }
        int iD1 = iRet / 16;
        int iD2 = iRet % 16;
        return strDigits[iD1] + strDigits[iD2];
    }

    //转换成String
    private static String byteToString(byte[] bByte){
        StringBuffer sBuffer = new StringBuffer();
        for (int i = 0; i < bByte.length; i++) {
            sBuffer.append(byteToArrayString(bByte[i]));
        }
        return sBuffer.toString();
    }


    public static String generateCode(String strObj) throws NoSuchAlgorithmException {
        String resultString = null;

        resultString = new String(strObj);

        MessageDigest md5 = MessageDigest.getInstance("MD5");

        resultString = byteToString(md5.digest(strObj.getBytes()));

        return resultString;
    }

}
