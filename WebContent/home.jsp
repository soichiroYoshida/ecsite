<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta charset="UTF-8">
<link rel="Stylesheet" href="css/resetCss.css" />
<link rel="Stylesheet" href="css/commonStyle.css" />
<link rel="Stylesheet" href="css/homeStyle.css" />
<title>Home画面</title>
</head>
<body>
	<div class="header">
	<div class="header-wrapper">
		<div class="logo">
			<h1>ECsite</h1>
		</div>
		<ul class="nav-bar">
			<li><s:if test="#session.id != null">
					<a href="MyPageAction" style="background-color: rgb(255, 168, 28)">マイページ</a>
				</s:if> <s:else>
					<a href="LoginAction" style="background-color: rgb(255, 168, 28)">ログイン</a>
				</s:else>
			</li>
			<li>
				<s:if test="#session.id != null">
					<a href="LogoutAction" style="background-color: rgb(76, 76, 76)">ログアウト</a>
				</s:if> <s:else>
					<a href="UserCreateAction" style="background-color: rgb(76, 76, 76)">新規登録</a>
				</s:else>
			</li>
		</ul>
		<div class="clear"></div>
	</div>
	</div>
	<div class="main">
		<s:if test="#session.id != null">
		</s:if> <s:else>
		<div class="contents">
			<h2>ログイン / 新規登録</h2>
			<p>当サイトをご利用の際にはログインをお願い致します。</p>
			<div class="form-group" align="center">
				<s:form action="LoginAction">
					<s:textfield name="loginUserId" class="form-reset form" placeholder="ログインID"  />
					<s:password name="loginPassword" class="form-reset form" placeholder="パスワード"  />
					<s:submit value="ログイン" class="btn-reset submit"/>
				</s:form>
			</div>
			<p>新規ユーザー登録は<a href='<s:url action="UserCreateAction" />'>こちら</a></p>
		</div>
		</s:else>
	</div>
	<div id="footer">
		<div id="pr"></div>
	</div>
</body>
</html>