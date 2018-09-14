<%@ include file="jspParts/header.jsp" %> <!-- ヘッダー共通部分の読み込み -->
<%@ page pageEncoding="UTF-8" %> <!-- 共通部分のパーツ化にあたって、文字化けを防ぐための記述 -->
<head>
	<title>確認画面 | ぶんぐや</title>
	<link rel="Stylesheet" href="css/buyItemCompleteStyle.css" />
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
	<div class="main">
		<h2>購入完了</h2>
		<p>購入手続きが完了いたしました。</p>
		<a href='<s:url action="MyPageAction"/>'>マイページ</a>からの購入履歴の確認が可能です。
		<p>商品画面へ戻る場合は<a href='<s:url action="GoHomeAction"/>'>こちら</a></p>
	</div>
	<div class="footer">
		<p>© 2018 internous bunguya</p>
	</div>
</body>
</html>