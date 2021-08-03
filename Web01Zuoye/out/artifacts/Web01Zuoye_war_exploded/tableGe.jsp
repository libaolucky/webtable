<%--
  Created by IntelliJ IDEA.
  User: TJYSB
  Date: 2021/8/2
  Time: 22:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
  </head>
  <body>
  <table  bgcolor="#faebd7">
      <caption>表格</caption>
      <thead>
      <tr>
          <td><input id="checkall" type="checkbox"></td>
          <td>姓名</td>
          <td>年龄</td>
          <td>班级</td>
      </tr>
      </thead>
      <tbody id="quan"></tbody>

  </table>

   <script type="text/javascript">
    $(function () {
       $.ajax({
         url:"Student.json",
         data:'',
         dataType:'json',
         type:'get',
         success:function(data){
             $.each(data.rows, function(i,values){
                 $("#quan").append(
                       "<tr>"
                       +"<td><input type='checkbox'></td>"
                       +"<td >"+values.name+"</td>"
                       +"<td >"+values.age+"</td>"
                       +"<td >"+values.class+"</td></tr>");
             });
           }

       })
     })

   </script>
  </body>
</html>
