<%@ include file="jspParts/header.jsp" %> <!-- ヘッダー共通部分の読み込み -->
<%@ page pageEncoding="UTF-8" %> <!-- 共通部分のパーツ化にあたって、文字化けを防ぐための記述 -->
<head>
	<title>ホーム | ぶんぐや</title>
	<link rel="Stylesheet" href="css/homeStyle.css"/>
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
	<div class="main">
		<s:if test="#session.id != null">
			<div class="home-contents">
				<a href="GoBuyItemAction" class="submit" style="text-decoration: none;">商品の購入へ</a>
			</div>
		</s:if> <s:else>
		<div class="form-style">
			<h2>ログイン / 新規登録</h2>
			<p>当サイトをご利用の際にはログインをお願い致します。</p>
			<div class="form-group" align="center">
				<s:form action="LoginAction">
					<s:textfield name="loginUserId" class="form-reset form" placeholder="ログインID" />
					<s:password name="loginPassword" class="form-reset form" placeholder="パスワード" />
					<s:submit value="ログイン" class="btn-reset submit"/>
				</s:form>
			</div>
			<p>新規ユーザー登録は<a href='<s:url action="UserCreateAction" />'>こちら</a></p>
		</div>
		</s:else>
	</div>
	<div class="footer">
		<p>© 2018 internous bunguya</p>
	</div>
</body>
</html>