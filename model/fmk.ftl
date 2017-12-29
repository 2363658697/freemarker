<html>
<head>
  <title>Welcome!</title>
</head>
<body>
  <h1>Welcome ${user}!</h1></br>
  <h1>who's name is ${t.name}!</h1></br>
	<#if sex=0>
		性别：<h1>男</h1></br>
		<#elseif sex=3>
		性别：<h1>人妖</h1></br>	
		<#else>
		性别：<h1>女</h1></br>
	</#if>
	
	遍历数组：
	<#--数组 as 变量名-->
	<#list array as tmp>
			${tmp_index}<br>
			<#if tmp_index=2>
			<#break>
			</#if>
			${tmp}
	</#list>
	
assin定义变量：	

<#assign home>sheng</#assign>
${home}

assin定义数组：
<#assign  arr=["3","33"]>
<#list arr  as t>
	${t}
</#list>

</body>
</html>  