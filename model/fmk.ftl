<html>
<head>
  <title>Welcome!</title>
</head>
<body>
  <h1>Welcome ${user}!</h1></br>
  <h1>who's name is ${t.name}!</h1></br>
	<#if sex=0>
		�Ա�<h1>��</h1></br>
		<#elseif sex=3>
		�Ա�<h1>����</h1></br>	
		<#else>
		�Ա�<h1>Ů</h1></br>
	</#if>
	
	�������飺
	<#--���� as ������-->
	<#list array as tmp>
			${tmp_index}<br>
			<#if tmp_index=2>
			<#break>
			</#if>
			${tmp}
	</#list>
	
assin���������	

<#assign home>sheng</#assign>
${home}

assin�������飺
<#assign  arr=["3","33"]>
<#list arr  as t>
	${t}
</#list>

</body>
</html>  