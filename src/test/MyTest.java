import net.togogo.utis.Md5;
import net.togogo.utis.newMD5;
import org.junit.Test;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

public class MyTest {

    @Test
    public void Md5Test() throws UnsupportedEncodingException, NoSuchAlgorithmException {
        //测试jdk自带的md5
        Md5 md5 = new Md5();
        String str = "123456";

        String byMd5 = md5.EncodeByMd5(str);
        System.out.println("byMd5 = " + byMd5);
    }

    @Test
    public void newMD5Test() throws NoSuchAlgorithmException {
        String str = "123456";
        String MD5Code = newMD5.generateCode(str);
        System.out.println("MD5Code = " + MD5Code);
    }
}
