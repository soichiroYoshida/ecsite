<%@ include file="jspParts/header.jsp" %> <!-- ヘッダー共通部分の読み込み -->
<%@ page pageEncoding="UTF-8" %> <!-- 共通部分のパーツ化にあたって、文字化けを防ぐための記述 -->
<head>
	<title>確認画面 | ぶんぐや</title>
	<link rel="Stylesheet" href="css/itemConfirmStyle.css" />
	<script type="text/javascript">
	function submitAction(url) {
		$('form').attr('action', url);
		$('form').submit();
	}
</script>
</head>
<body>
	<div class="header">
		<div class="header-wrapper">
			<s:if test="'#session.id != null">
				<div class="logo">
					<a href="LoginAction"><img src="images/logo.png" style="width: 300px;"></a>
				</div>
			</s:if> <s:else>
				<div class="logo">
					<a href="GoHomeAction"><img src="images/logo.png" style="width: 300px;"></a>
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
	<div class="table-area">
		<s:form action="BuyItemAction">
			<h2>購入確認</h2>
			<table class="table">
				<tr>
					<th>商品名:</th>
					<td><s:property value="session.buyItem_name" /></td>
				</tr>
				<tr>
					<th>値段:</th>
					<td><s:property value="session.total_price" />円</td>
				</tr>
				<tr>
					<th>購入個数:</th>
					<td><s:property value="session.count" />個</td>
				</tr>
				<tr>
					<th>支払い方法:</th>
					<td><s:property value="session.pay" /></td>
				</tr>
				<tr>
					<td><input type="button" value="戻る" onclick="submitAction('HomeAction')" class="submit" style="background-color:rgb(76, 76, 76)"/></td>
					<td><input type="button" value="完了" onclick="submitAction('BuyItemConfirmAction')" class="submit" /></td>
				</tr>
			</table>
		</s:form>
		</div>
	<div class="footer">
		<p>© 2018 internous bunguya</p>
	</div>

</body>
</html>