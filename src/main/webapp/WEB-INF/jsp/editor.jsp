<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>办公自动化管理系统</title>
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet" type="text/css" />

</head>

<body>
	<div class="top">
		<div class="global-width">
			<img src="${pageContext.request.contextPath}/Images/logo.gif"
				class="logo" />
		</div>
	</div>
	<div class="status">
		<div class="global-width">
			${sessionUser.nickname },你好！欢迎访问办公管理系统！&nbsp;<a  href="#" onclick="location.href='${pageContext.request.contextPath}/user/loginOut.action'">注销</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</div>
	</div>
	<form id="myForm" name="myForm" action="${pageContext.request.contextPath}/user/userInfo!updateData.action"
		method="post">
		<input type="hidden" name="u.id" value="26" /> <input type="hidden"
			name="u.sex" value="2" id="u_sex" /> <input type="hidden"
			name="u.supper" value="0" id="u_supper" />
		<div class="main">
			<div class="global-width">


				<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
				<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>办公自动化管理系统</title>
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet" type="text/css" />
</head>

<body>
	<div class="nav" id="nav">
		<div class="t"></div>
		<dl>
			<dt
				onclick="this.parentNode.className=this.parentNode.className=='open'?'':'open';">信息管理
			</dt>
			<dd>
				<a href="${pageContext.request.contextPath}/user/toindex.do"
					target="_self">个人信息</a>
			</dd>
		</dl>
		<dl>
			<dt
				onclick="this.parentNode.className=this.parentNode.className=='open'?'':'open';">
				邮件管理</dt>
			<dd>
				<a href="${pageContext.request.contextPath}/user/draftBox.action" target="_self">草稿箱</a>
			</dd>
			<dd>
				<a href="${pageContext.request.contextPath}/user/mailWrite.action" target="_self">写邮件</a>
			</dd>
			<dd>
				<a href="${pageContext.request.contextPath}/user/hadSendEmails.action" target="_self">已发邮件</a>
			</dd>
			<dd>
				<a href="${pageContext.request.contextPath}/user/mailReceive!receive.action" target="_self">收邮件</a>
			</dd>
			<dd>
				<a href="${pageContext.request.contextPath}/user/mailGarage!garage.action" target="_self">垃圾邮件</a>
			</dd>
		</dl>
		<dl>
			<dt
				onclick="this.parentNode.className=this.parentNode.className=='open'?'':'open';">
				考勤管理</dt>
			<dd>
				<a href="${pageContext.request.contextPath}/user/leave.action" target="_self">休假</a>
			</dd>
		</dl>

		<dl>

			<dt
				onclick="this.parentNode.className=this.parentNode.className=='open'?'':'open';">
				权限管理</dt>
			<dd>
				<a href="${pageContext.request.contextPath}/user/userInfo!singleAccountData.action" target="_self">个人账户</a>
			</dd>
			<c:if test="${sessionUser.ismanage eq '管理员'}">
				<dd>
					<a href="${pageContext.request.contextPath}/user/userInfo!manageAccountData.action" target="_self">管理账户</a>
				</dd>
			</c:if>
		</dl>
	</div>
</body>
				</html>

				<div class="action">
					<div class="t">个人信息</div>
					<div class="pages">
						<table width="90%" height="150px" border="0" cellspacing="0"
							cellpadding="0">
							<tr>
								<td align="right" width="30%">昵称：</td>
								<td align="left"><input type="text" name="nickname"
									value="${sessionUser.nickname }" id="nickname" /><font color="red">*</font> <span
									id="nickname_span"></span></td>

							</tr>
							<tr>
								<td align="right" width="30%">年龄：</td>
								<td align="left"><input type="text" name="uage"
									value="${sessionUser.uage }" id="uage" /></td>
							</tr>
							<tr>
								<td align="right" width="30%">性别：</td>
								<td align="left"><c:if test="${sessionUser.ugender eq '男'}">
										<input type="radio" value="男" name="ugender" checked="checked"> 男
										<input type="radio" value="女" name="ugender"> 女
									</c:if> <c:if test="${sessionUser.ugender eq '女'}">
										<input type="radio" value="男" name="ugender"> 男
										<input type="radio" value="女" name="ugender" checked="checked"> 女						
									</c:if></td>
							</tr>
							<tr>
								<td align="right" width="30%">手机：</td>
								<td align="left"><input type="text" name="uphone"
									value="${sessionUser.uphone}" id="uphone" /><font color="red">*</font> <span
									id="uphone_span"></span></td>
							</tr>
							<tr>
								<td align="right" width="30%">地址：</td>
								<td align="left"><input type="text" name="uaddr"
									value="${sessionUser.uaddr}" id="uaddr" /></td>
							</tr>
							<tr>
								<td align="left" style="padding-left: 242px;" colspan="2"><br />
									<input type="hidden" name="uid" value="${sessionUser.uid}">
									<input type="hidden" name="uname" value="${sessionUser.uname}">
									<input type="submit" id="save" value="提交数据"
									onclick="return check()" /> <input type="button" id="back"
									value="返回" onclick="location='${pageContext.request.contextPath}/user/toindex.do' " /></td>

							</tr>

						</table>

					</div>
				</div>
			</div>
		</div>
	</form>
	<div class="copyright">Copyright &nbsp; &copy; &nbsp;</div>

</body>
<script>
	function check() {
		var r1 = checkNickname('nickname', '昵称不能为空');
		var r2 = checkphone1('uphone', '手机号码不能为空');
        var r3 = checkphone2('uphone', '手机号码格式有误');
		if (r1 && r2&&r3) {
			return true;
		} else {
			return false;
		}
	}
	function checkNickname(id, info) {
		var span = document.getElementById(id + "_span");
		span.innerHTML = "";
		var ele = document.getElementById(id);
		if (ele.value == "") {
			span.innerHTML = "<font style='color:red;font-size:12px;'>" + info
					+ "</font>";
			return false;
		}
		return true;
	}
    function checkphone1(id, info) {
        var span = document.getElementById(id + "_span");
        span.innerHTML = "";
        var ele = document.getElementById(id);
        if (ele.value == "") {
            span.innerHTML = "<font style='color:red;font-size:12px;'>" + info
                + "</font>";
            return false;
        }
        return true;
    }
	function checkphone2(id, info) {
		var ele = document.getElementById(id);
		if (ele.value != "") {
			var span = document.getElementById(id + "_span");
			span.innerHTML = "";
			var regex = /^1[3|4|5|7|8][0-9]{9}$/;
			var res = regex.test(ele.value);
			if (!res) {
				span.innerHTML = "<font style='color:red;font-size:12px;'>"
						+ info + "</font>";
				return false;
			}
			return true;
		}
	}

	
</script>

</html>