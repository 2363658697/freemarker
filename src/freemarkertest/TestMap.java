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

public class TestMap {

    public static void main(String[] args) throws Exception {

        Configuration cfg = new Configuration();
        // ����ftl����Ŀ¼
        cfg.setDirectoryForTemplateLoading(new File("model"));
        // �������ݵ�ץȡģʽ
        cfg.setObjectWrapper(new DefaultObjectWrapper());

        // ��������
        Map latest = new HashMap();
        latest.put("name", "ssg");
        latest.put("age", 11);
        Map root = new HashMap();
        root.put("t", latest);

        // ʵ����ģ�����
        Template temp = cfg.getTemplate("map.ftl");

        // �����ļ����������ģ�����������html�ļ���
        /*
         * FileOutputStream fileOutputStream=new FileOutputStream("c:/a.html");
         * Writer out = new OutputStreamWriter(fileOutputStream);
         */

        Writer out = new OutputStreamWriter(System.out);
        temp.process(root, out);
        out.flush();

    }

}
