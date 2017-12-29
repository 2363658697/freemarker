<#--
定义宏：   macro 宏名  参数（多个参数间空格隔开）,
参数可以赋默认值，亦可以不赋默认值，参数的默认值还可以为另一个参数  
参数可以传参，可以传数组/集合
 -->
<#macro test foo bar="BAR" baaz=-1>  
  Test text, and the params: ${foo}, ${bar},${baaz}
</#macro>

<#--调用宏时，没有默认值的参数必须要赋值，有默认值的参数可以修改值-->
<@test foo="a" />
<@test foo="a" bar="b" baaz=5*5-2  />
<@test foo="a" bar="b"  />
<@test foo="a" baaz=5*5-2  />


<#--定义宏时可以不带参数，直接在标签中写-->
<#macro ss>hello</#macro>
<#--调用-->
<@ss/>

<#--nested中可以定义参数，多个参数间用，隔开-->
<#macro do_thrice>
  <#nested 1>
  <#nested 2>
  <#nested 3>
</#macro>
<#--调用： @宏名 ; 参数（参数名随意写，参数的个数根据nested中定义的个数）-->
<@do_thrice ; y >
   ${y}Anything.
</@do_thrice>

<#macro repeat count>
  <#list 1..count as x>
    <#nested x, x/2, x==count>
  </#list>
</#macro>
<@repeat count=4 ; a, b, c>
  ${a}. ${b}<#if c> Last!</#if>
</@repeat>


<#macro test>
  Test text
  <#return>
  Will not be printed.
</#macro>
<@test/>


