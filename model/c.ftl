<#--
���b.ftl�е�age������ֵ
<#include "a.ftl">
<#include "b.ftl">
${age}
-->
<#-- �ֱ����a.ftl,b.ftl��age�ı���-->
<#import "a.ftl" as a>
<#import "b.ftl" as b>
${a.age}
${b.age}
