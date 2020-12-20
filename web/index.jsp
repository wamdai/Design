<%--
  Created by IntelliJ IDEA.
  User: 馒头尼桑
  Date: 2020/12/6
  Time: 11:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>首页</title>
    <link rel="stylesheet" href="css/index.css">
</head>
<body>
<div id="head">
    <h2>选择学校</h2>
</div>
<div id="item_1" >
    <c:forEach items="${provinces}" var="name">
        <a class="link_title" value="${name}" href="javascript:;">${name}</a>
    </c:forEach>
</div>
<div id="content">

</div>


</body>
<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
<script type="text/javascript">
    function get_menu(name,doc)
    {
        var xhr=new XMLHttpRequest();
        xhr.open("post","MenuServlet");
        xhr.setRequestHeader("content-type","application/x-www-form-urlencoded");
        xhr.send("id="+name);
        xhr.onreadystatechange=function () {
            if(xhr.readyState==4 && xhr.status==200)
            {
                var obj=xhr.responseText;
                var res=JSON.parse(obj);
                for(var i=0;i<res.length;i++)
                {
                    doc.innerHTML+=(i+1)+":"+"<a class='link_content' href=>"+res[i]+"</a></li>";
                }
            }
        }
    }
    $(function () {
        var xhr=new XMLHttpRequest();
        xhr.open("post","login");
        xhr.setRequestHeader("content-type","application/x-www-form-urlencoded");
        xhr.send("id=1");
    });
    $(".link_title").click(function () {
        var doc=document.getElementById("content");
        doc.innerHTML="";
        var name=encodeURI(encodeURI(this.innerText));
        get_menu(name,doc)
    })
</script>
</html>
