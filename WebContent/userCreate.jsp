<%@ include file="jspParts/header.jsp" %> <!-- ヘッダー共通部分の読み込み -->
<%@ page pageEncoding="UTF-8" %> <!-- 共通部分のパーツ化にあたって、文字化けを防ぐための記述 -->
<head>
	<title>新規登録 | ぶんぐや</title>
	<link rel="Stylesheet" href="css/loginStyle.css">
</head>
<body>
	<div class="header">
		<div class="header-wrapper">
			<s:if test="'#session.id != null">
				<div class="logo">
					<a href="GoHomeAction"><img src="images/logo.png"></a>
				</div>
			</s:if> <s:else>
				<div class="logo">
					<a href="LoginAction"><img src="images/logo.png"></a>
				</div>
			</s:else>
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
	<div id="main">
			<s:if test="errorMassage !=">
				<s:property value="errorMassage" escape="false" />
			</s:if>
			<div class="form-style">
				<h2>新規登録</h2>
				<table style="margin: 20px;">
				<s:form action="UserCreateConfirmAction">
					<tr>
						<td><label>ログインID：</label></td>
						<td><input type="text" name="loginUserId" value="" class="form-reset form" /></td>
					</tr>
					<tr>
						<td><label>ログインPASS：</label></td>
						<td><input type="text" name="loginPassword" value="" class="form-reset form" /></td>
					</tr>
					<tr>
						<td><label>ユーザー名：</label></td>
						<td><input type="text" name="userName" value="" class="form-reset form" /></td>
					</tr>
						<s:submit value="登録" class="submit" />
				</s:form>
			</table>
			</div>
		</div>
	<div class="footer">
		<p>© 2018 internous bunguya</p>
	</div>
</body>
</html>