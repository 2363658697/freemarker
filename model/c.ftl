<#--
输出b.ftl中的age变量的值
<#include "a.ftl">
<#include "b.ftl">
${age}
-->
<#-- 分别输出a.ftl,b.ftl中age的变量-->
<#import "a.ftl" as a>
<#import "b.ftl" as b>
${a.age}
${b.age}
