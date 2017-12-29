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
       //配置ftl查找目录
        cfg.setDirectoryForTemplateLoading(new File("model"));
        //设置数据的抓取模式
        cfg.setObjectWrapper(new DefaultObjectWrapper());

        //构建数据     
        Map root = new HashMap();

        // 实例化模版对象
        Template temp = cfg.getTemplate("c.ftl");

        //定义文件输出流，把模版内容输出到html文件中
    /*    FileOutputStream fileOutputStream=new FileOutputStream("c:/a.html");
        Writer out = new OutputStreamWriter(fileOutputStream);*/
        
        
        Writer out = new OutputStreamWriter(System.out);
        temp.process(root, out);
        out.flush();
        
        
    }

}
