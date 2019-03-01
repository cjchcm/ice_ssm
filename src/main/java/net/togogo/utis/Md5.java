package net.togogo.utis;

import sun.misc.BASE64Encoder;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

//jdk自带的安全机制
public class Md5 {
    //加密
    public String EncodeByMd5(String str) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        //确定算法
        MessageDigest md5 = MessageDigest.getInstance("MD5");
        BASE64Encoder base64Encoder = new BASE64Encoder();
        //加密字符串
        String newStr = base64Encoder.encode(md5.digest(str.getBytes("utf-8")));
        return newStr;
    }


    //解密
    public boolean checkCode(String pwd,String opwd) throws UnsupportedEncodingException, NoSuchAlgorithmException {
        if (EncodeByMd5(pwd).equals(opwd))
            return true;
        else
            return false;
    }
}
