<%@ include file="jspParts/header.jsp" %> <!-- ヘッダー共通部分の読み込み -->
<%@ page pageEncoding="UTF-8" %> <!-- 共通部分のパーツ化にあたって、文字化けを防ぐための記述 -->
<head>
	<title>確認画面 | ぶんぐや</title>
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
	<div id="main">
		<div id="top">
			<p>BuyItem</p>
		</div>
		<div>
		<s:form action="BuyItemAction">
			<table>
				<tr>
					<td>商品名</td>
					<td><s:property value="session.buyItem_name" /></td>
				</tr>
				<tr>
					<td>値段</td>
					<td><s:property value="session.total_price" /><span>円</span></td>
				</tr>
				<tr>
					<td>購入個数</td>
					<td><s:property value="session.count" /><span>個</span></td>
				</tr>
				<tr>
					<td>支払い方法</td>
					<td><s:property value="session.pay" /></td>
				</tr>
				<tr>
					<td><br></td>
				</tr>
				<tr>
					<td><input type="button" value="戻る" onclick="submitAction('HomeAction')"/></td>
					<td><input type="button" value="完了" onclick="submitAction('BuyItemConfirmAction')"/></td>
				</tr>
			</table>
		</s:form>
		</div>
		<div>
			<p>前画面に戻る場合は<a href='<s:url action="GoHomeAction" />'>こちら</a></p>
			<p>マイページは<a href='<s:url action="MyPageAction" />'>こちら</a></p>
		</div>
	</div>
	<div id="footer">
		<div id="pr">
		</div>
	</div>

</body>
</html>