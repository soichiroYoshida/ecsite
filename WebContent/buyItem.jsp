<%@ include file="jspParts/header.jsp"%><!-- ヘッダー共通部分の読み込み -->
<%@ page pageEncoding="UTF-8"%><!-- 共通部分のパーツ化にあたって、文字化けを防ぐための記述 -->
<head>
<title>購入画面 | ECsite</title>
<link rel="Stylesheet" href="css/buyItemStyle.css">
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
	<div class="item-contents">
		<div class="left-content">
			<img src="images/note.jpg" style="width: 300px">
		</div>
		<s:form action="BuyItemAction">
			<div class="right-content">
				<h2><s:property value="session.buyItem_name" /></h2>
				<p><s:property value="session.buyItem_price" />円<p>
				<ul class="count-item">
					<select name="count">
						<option value="1" selected="selected">1</option>
						<script>
							for(var i = 2; i < 21; i++) {
								document.write('<option value="i">' + i + '</option>')
							}
						</script>
					</select>
				</ul>
				<div class="pay-area">
					<h2>支払い方法</h2>
					<input type="radio" name="pay" value="1" checked="checked">コンビニ払い
					<input type="radio" name="pay" value="2">クレジットカード
					<s:submit value="購入" class="submit"/>
				</div>

			</div>

		</s:form>
	</div>
	<div class="footer">
		<p>© 2018 internous college</p>
	</div>
</body>
</html>