<#--
����꣺   macro ����  ���������������ո������,
�������Ը�Ĭ��ֵ������Բ���Ĭ��ֵ��������Ĭ��ֵ������Ϊ��һ������  
�������Դ��Σ����Դ�����/����
 -->
<#macro test foo bar="BAR" baaz=-1>  
  Test text, and the params: ${foo}, ${bar},${baaz}
</#macro>

<#--���ú�ʱ��û��Ĭ��ֵ�Ĳ�������Ҫ��ֵ����Ĭ��ֵ�Ĳ��������޸�ֵ-->
<@test foo="a" />
<@test foo="a" bar="b" baaz=5*5-2  />
<@test foo="a" bar="b"  />
<@test foo="a" baaz=5*5-2  />


<#--�����ʱ���Բ���������ֱ���ڱ�ǩ��д-->
<#macro ss>hello</#macro>
<#--����-->
<@ss/>

<#--nested�п��Զ������������������ã�����-->
<#macro do_thrice>
  <#nested 1>
  <#nested 2>
  <#nested 3>
</#macro>
<#--���ã� @���� ; ����������������д�������ĸ�������nested�ж���ĸ�����-->
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


