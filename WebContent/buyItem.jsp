<%@ include file="jspParts/header.jsp"%><!-- ヘッダー共通部分の読み込み -->
<%@ page pageEncoding="UTF-8"%><!-- 共通部分のパーツ化にあたって、文字化けを防ぐための記述 -->
<head>
<title>購入画面 | ECsite</title>
</head>
<body>
	<div class="header">
		<div class="header-wrapper">
			<div class="logo">
				<h1>ECsite</h1>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<div class="main">
	<div class="contents">
		<div class="left-content">
			<img src="/images/note.jpg">
		</div>
		<div class="right-content">
			<h2>ノート</h2>
			<p>円<s:property value="session.buyItem_price" />円<p>
		</div>
	</div>
		<div>
			<s:form action="BuyItemAction">
				<table>
					<tr>
						<td><span>商品名</span></td>
						<td><s:property value="session.buyItem_name" /></td>
					</tr>
					<tr>
						<td><span>値段</span></td>
						<td><s:property value="session.buyItem_price" /><span>円</span></td>
					</tr>
					<tr>
						<td><span>購入個数</span></td>
						<td>
							<select name="count">
								<option value="1" selected="selected">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><span>支払い方法</span></td>
						<td>
							<input type="radio" name="pay" value="1" checked="checked">現金払い
							<input type="radio" name="pay" value="2">クレジットカード
						</td>
					</tr>
					<tr>
						<td><s:submit value="購入" /></td>
					</tr>
				</table>
			</s:form>
			<div>
				<p>前画面に戻る場合は<a href='<s:url action="GoHomeAction" />'>こちら</a></p>
				<p>マイページは<a href='<s:url action="MyPageAction" />'>こちら</a></p>
			</div>
		</div>
	</div>
	<div id="footer">
		<div id="pr">
		</div>
	</div>

</body>
</html>