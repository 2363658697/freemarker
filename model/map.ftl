${t?size}
<#list t?keys as key>
	${key}
</#list>
<#list t?values as v>
	${v}
</#list>




<#assign f=false>

${f?string('a','b')}