<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0080)http://localhost:8080/mango/login.jhtml?redirectUrl=%2Fmango%2Fcart%2Flist.jhtml -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>个人中心</title>
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/product.css" rel="stylesheet" type="text/css"/>
</head>
<style type="text/css">

/*分别定义HTML中和标记之的距离样式*/

html, body, h1, form, fieldset, legend, ol, li {

    margin: 0;

    padding: 0;

}

/*定义<body>标记样式*/

body {

    background: #ffffff;

    color: #111111;

    font-family: Georgia, "Times New Roman", Times, serif;

    padding-left: 20px;

    

}

/*定义付费内容的样式*/

form#payment {

    background: #9cbc2c;

    -webkit-border-radius: 5px;

    border-radius: 5px;

    padding: 20px;

    width: 910px;

    margin:auto;

}

form#payment fieldset {

    border: none;

    margin-bottom: 10px;

}

form#payment fieldset:last-of-type { margin-bottom: 0; }

form#payment legend {

    color: #384313;

    font-size: 16px;

    font-weight: bold;

    padding-bottom: 10px;

    text-shadow: 0 1px 1px #c0d576;

}

form#payment > fieldset > legend:before {

    content: "Step " counter(fieldsets) ": ";

    counter-increment: fieldsets;

}

form#payment fieldset fieldset legend {

    color: #111111;

    font-size: 13px;

    font-weight: normal;

    padding-bottom: 0;

}

form#payment ol li {

    background: #b9cf6a;

    background: rgba(255, 255, 255, .3);

    border-color: #e3ebc3;

    border-color: rgba(255, 255, 255, .6);

    border-style: solid;

    border-width: 2px;

    -webkit-border-radius: 5px;

    line-height: 30px;

    list-style: none;

    padding: 5px 10px;

    margin-bottom: 2px;

}

form#payment ol ol li {

    background: none;

    border: none;

    float: left;

}

form#payment label {

    float: left;

    font-size: 13px;

    width: 110px;

}

form#payment fieldset fieldset label {

    background: none no-repeat left 50%;

    line-height: 20px;

    padding: 0 0 0 30px;

    width: auto;

}

form#payment fieldset fieldset label:hover { cursor: pointer; }

form#payment input:not([type=radio]), form#payment textarea {

    background: #ffffff;

    border: #FC3 solid 1px;

    -webkit-border-radius: 3px;

    font: italic 13px Georgia, "Times New Roman", Times, serif;

    outline: none;

    padding: 5px;

    width: 200px;

}

form#payment input:not([type=submit]):focus, form#payment textarea:focus {

    background: #eaeaea;

    border: #F00 solid 1px;

}

form#payment input[type=radio] {

    float: left;

    margin-right: 5px;

}

</style>
<body>

<div class="container header">
	<div class="span5">
		<div class="logo">
			<a>
				<img src="${pageContext.request.contextPath}/image/r___________renleipic_01/logo.png" alt=""/>
			</a>
		</div>
	</div>
	<div class="span9">
	&nbsp;
	</div>
	
	<%@ include file="menu.jsp" %>

</div>
<!-- Table goes in the document BODY -->

<form id="payment">

    <fieldset>

        <legend>用户详细资料</legend>

        <ol>

            <li>

                <label for="name">用户名称：</label>

                <input id="name" name="name" value="<s:property value="#session.existUser.name"/>" type="text" placeholder="请输入用户名" required autofocus>

            </li>

            <li>

                <label for="email">邮件地址：</label>

                <input id="email" value="<s:property value="#session.existUser.email"/>" name="email" type="email" placeholder="example@163.com" required>

            </li>

            <li>

                <label for="phone">联系电话：</label>

                <input id="phone"  value="<s:property value="#session.existUser.phone"/>" name="phone" type="tel" placeholder="010-12345678" required>

            </li>

        </ol>

    </fieldset>

    <fieldset>

        <legend>家庭住址（收货地址）：</legend>

        <ol>

            <li>

                <label for="address">详细地址：</label>

<%--                 <textarea id="addr" value="<s:property value="#session.existUser.addr"/>" name="addr" rows="1" required></textarea>
 --%>                <input id="addr" value="<s:property value="#session.existUser.addr"/>" name="addr" type="addr"  required>

            </li>

            <li>

                <label for="postcode">邮政编码：</label>

                <input id="postcode" value="10000" name="postcode" type="text" required>

            </li>

            <li>

                <label for="country">国&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;家：</label>

                <input id="country" value="中国" name="country" type="text" required>

            </li>

        </ol>

    </fieldset>

</form>

</body>
</html>