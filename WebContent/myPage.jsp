<%@ include file="jspParts/header.jsp"%><!-- ヘッダー共通部分の読み込み -->
<%@ page pageEncoding="UTF-8"%><!-- 共通部分のパーツ化にあたって、文字化けを防ぐための記述 -->
<head>
<title>マイページ | ぶんぐや</title>
<link rel="Stylesheet" href="css/myPageStyle.css">
</head>
<body>
	<div class="header">
		<div class="header-wrapper">
			<s:if test="'#session.id != null">
				<div class="logo">
					<a href="HomeAction" style="text-decoration: none;"><img src="images/logo.png" style="width: 300px;"></a>
				</div>
			</s:if> <s:else>
				<div class="logo">
					<a href="LoginAction"  style="text-decoration: none;"><img src="images/logo.png" style="width: 300px;"></a>
				</div>
			</s:else>
			<ul class="nav-bar">
				<li><s:if test="#session.id != null">
						<a href="MyPageAction" style="background-color: rgb(255, 168, 28)">マイページ</a>
					</s:if> <s:else>
						<a href="LoginAction" style="background-color: rgb(255, 168, 28)">ログイン</a>
					</s:else></li>
				<li><s:if test="#session.id != null">
						<a href="LogoutAction" style="background-color: rgb(76, 76, 76)">ログアウト</a>
					</s:if> <s:else>
						<a href="UserCreateAction" style="background-color: rgb(76, 76, 76)">新規登録</a>
					</s:else></li>
			</ul>
		</div>
		<div class="clear"></div>
	</div>
	<div id="main">
		<div class="table-area">
			<s:if test="myPageList == null">
				<h2>ご購入情報はありません。</h2>
			</s:if>
			<s:elseif test="message == null">
				<h2>購入履歴</h2>
				<table class="table">
					<tr>
						<th>商品名</th>
						<th>値段</th>
						<th>購入個数</th>
						<th>支払い方法</th>
						<th>購入日</th>
					</tr>
					<s:iterator value="myPageList">
						<tr>
							<td><s:property value="itemName" /></td>
							<td><s:property value="totalPrice" /><span>円</span></td>
							<td><s:property value="totalCount" /><span>個</span></td>
							<td><s:property value="payment" /></td>
							<td><s:property value="insert_date" /></td>
						</tr>
					</s:iterator>
				</table>
				<s:form action="MyPageAction">
					<input type="hidden" name="deleteFlg" value="1">
					<s:submit value="履歴を削除 " method="delete" class="submit" style="background-color: rgb(255, 86, 53)" />
				</s:form>
			</s:elseif>
			<s:if test="message != null">
				<h3>
					<s:property value="message" />
				</h3>
			</s:if>
		</div>
	</div>
	<div class="footer">
		<p>© 2018 internous bunguya</p>
	</div>
</body>
</html>
