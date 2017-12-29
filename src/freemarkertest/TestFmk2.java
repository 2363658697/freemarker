package freemarkertest;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;

import freemarker.template.Configuration;
import freemarker.template.DefaultObjectWrapper;
import freemarker.template.Template;

public class TestFmk2 {

    public static void main(String[] args) throws Exception {

        Configuration cfg = new Configuration();
       //����ftl����Ŀ¼
        cfg.setDirectoryForTemplateLoading(new File("model"));
        //�������ݵ�ץȡģʽ
        cfg.setObjectWrapper(new DefaultObjectWrapper());

        //��������     
        Map root = new HashMap();

        // ʵ����ģ�����
        Template temp = cfg.getTemplate("c.ftl");

        //�����ļ����������ģ�����������html�ļ���
    /*    FileOutputStream fileOutputStream=new FileOutputStream("c:/a.html");
        Writer out = new OutputStreamWriter(fileOutputStream);*/
        
        
        Writer out = new OutputStreamWriter(System.out);
        temp.process(root, out);
        out.flush();
        
        
    }

}
