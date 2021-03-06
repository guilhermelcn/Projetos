<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="imagens/favicon.ico">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css\dog.css">
<link rel="stylesheet" type="text/css" href="css\bootstrap.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/3/w3.css">
<link href="css/business-frontpage.css" rel="stylesheet">
<script src="js\dog.js" type="text/css"></script>
<link
	href="//cdnjs.cloudflare.com/ajax/libs/x-editable/1.5.0/bootstrap3-editable/css/bootstrap-editable.css"
	rel="stylesheet" />
<title>TinDog</title>
</head>
<body style="background: #FFF; color: #000;">

	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation"
		style="background:-webkit-radial-gradient(0% 100%, ellipse cover, rgba(104, 128, 138, .4)
		10%, rgba(138, 114, 76, 0) 40%),
		linear-gradient(to bottom, rgba(57, 173, 219, .25) 0%,
		rgba(42, 60, 87, .4) 100%),
		linear-gradient(135deg, #670d10 0%, #092756 100%)">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

			<a class="navbar-brand" href="#">Tindog</a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="#">Meus Dogs</a></li>
				<li><a href="LoginController.do?action=logout">Sair</a></li>
			</ul>
		</div>
	</div>
	</nav>

	<header class="business-header">
	<div class="container">
		<div class="row">
			<div class="col-lg-12"></div>
		</div>
	</div>
	</header>

	<section class="container">
	<h3>Meus cachorros</h3>

	<table class="table table-responsive table-striped table-hover">
		<thead>
			<tr>
				<td class="primeiraLinha colunas">Nome</td>
				<td class="primeiraLinha colunas">Ra&ccedil;a</td>
				<td class="primeiraLinha colunas">Sexo</td>
				<td class="primeiraLinha colunas">Idade</td>
				<td class="primeiraLinha colunas">Editar</td>
				<td class="primeiraLinha colunas">Remover</td>
			</tr>
		</thead>
		<tbody>
		<tbody>
			<c:forEach items="${myDogs}" var="dog">
				<tr>
					<td class="colunas editNome"><c:out value="${dog.nome}" /></td>
					<td class="colunas editRaca"><c:out value="${dog.raca}" /></td>
					<td class="colunas editSexo"><c:out value="${dog.sexo}" /></td>
					<td class="colunas editIdade"><c:out value="${dog.idade}" />
					</td>
					<td class="tdbuttonedit"><button class="btn btn-editar"
							data-toggle="modal" var='<c:out value="${dog.idade}" />'
							'" data-target="#editarDog">Editar</button></td>
					<td class="colunas"><a class="btn btn-remover"
						href="CachorroController.do?action=remover&idDog=<c:out value="${dog.idCachorro}" />&idUsuario=<c:out value="${usuarioLogado.idUsuario}" />">Remover
					</a></td>
				</tr>

				<!-- 			Código	Bootstrap editable -->
				<!-- 				<tr> -->
				<!-- 					<td class="colunas"><a class="editNome" data-type="text" -->
				<%-- 						value=data-value data-pk="<c:out value="${dog.idCachorro}" />" --%>
				<%-- 						data-url="CachorroController.do?action=editar&campo=nome&idDog=<c:out value="${dog.idCachorro}" />" --%>
				<%-- 						data-title="Nome do Dog"> <c:out value="${dog.nome}" /> --%>
				<!-- 					</a></td> -->
				<!-- 					<td class="colunas"><a href="#" class="editRaca" -->
				<%-- 						data-type="text" data-pk="<c:out value="${dog.idCachorro}" />" --%>
				<%-- 						data-post="CachorroController.do?action=editar&campo=raca&idUsuario=<c:out value="${usuarioLogado.idUsuario}" />" --%>
				<%-- 						data-title="Raça do Dog"> <c:out value="${dog.raca}" /> --%>
				<!-- 					</a></td> -->
				<!-- 					<td class="colunas"><a href="#" class="editSexo" -->
				<!-- 						data-type="radiolist" -->
				<%-- 						data-pk="<c:out value="${dog.idCachorro}" />" --%>
				<%-- 						data-post="CachorroController.do?action=editar&campo=sexo&idUsuario=<c:out value="${usuarioLogado.idUsuario}" />" --%>
				<%-- 						data-title="Sexo do Dog"> <c:out value="${dog.sexo}" /> --%>
				<!-- 					</a></td> -->
				<!-- 					<td class="colunas"><a href="#" class="editIdade" -->
				<%-- 						data-type="number" data-pk="<c:out value="${dog.idCachorro}" />" --%>
				<%-- 						data-post="CachorroController.do?action=editar&campo=idade&idUsuario=<c:out value="${usuarioLogado.idUsuario}" />" --%>
				<%-- 						data-title="Idade do Dog"> <c:out value="${dog.idade}" /> --%>
				<!-- 					</a></td> -->
				<!-- 									<td class="colunas"><a class="btn btn-remover" -->
				<%-- 										href="CachorroController.do?action=remover&idDog=<c:out value="${dog.idCachorro}" />&idUsuario=<c:out value="${usuarioLogado.idUsuario}" />">Remover --%>
				<!-- 									</a></td> -->
			</c:forEach>
			<!-- 				</tr> -->
		</tbody>
		<tfoot>
			<tr>
				<td colspan="4">&nbsp;</td>
				<td><button class="btn btn-inserir" data-toggle="modal"
						data-target="#cadastroDog">Adicionar Dog</button></td>
			</tr>
		</tfoot>
	</table>
	<div id="editarDog" class="modal fade" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<form>
					<%-- 					action="CachorroController.do?action=editar&idUsuario=<c:out value="${usuarioLogado.idUsuario}"/>" --%>
					<!-- 					method="post" -->

					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title">Atualizar Dog</h4>
					</div>
					<div class="modal-body">
						<!-- 						<div class="form-group"> -->
						<!-- 							<label for="idatualizar">id</label><input name="idatualizar" -->
						<!-- 								class="idatualizar" /> -->
						<!-- 						</div> -->
						<div class="form-group">
							<label for="nome">Nome</label> <input id="nome" name="nomeedit"
								type="text" placeholder="Peludinho"
								class="form-control input-md nomeedit" />
						</div>
						<div class="form-group">
							<label for="nome">Raça</label> <input id="raca" name="racaedit"
								type="text" placeholder="Yorkshine"
								class="form-control input-md racaedit" />
						</div>
						<div class="form-group">
							<h4>Sexo</h4>
							<label><input type="radio" class="sexoeditm"
								name="optradiofm" value="M" />M</label> <label><input
								type="radio" name="optradiofm" class="sexoeditf" value="F">F</label>
						</div>
						<div class="form-group">
							<h4>Idade</h4>
							<input type="number" name="idadeedit" placeholder="Idade em anos"
								class="form-control input-md idadeedit" />
						</div>
					</div>
					<div class="modal-footer">
						<div>
							<label class="btn btn-inserir">Atualizar</label>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div id="cadastroDog" class="modal fade" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<form
					action="CachorroController.do?action=cadastrar&idUsuario=<c:out value="${usuarioLogado.idUsuario}"/>"
					method="post">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title">Adicionar Dog</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label for="nome">Nome</label> <input id="nome" name="nome"
								type="text" placeholder="Peludinho"
								class="form-control input-md" />
						</div>
						<div class="form-group">
							<label for="nome">Raça</label> <input id="raca" name="raca"
								type="text" placeholder="Yorkshine"
								class="form-control input-md" />
						</div>
						<div class="form-group">
							<h4>Sexo</h4>
							<label><input type="radio" name="optradio" value="M" />M</label>
							<label><input type="radio" name="optradio" value="F">F</label>
						</div>
						<div class="form-group">
							<h4>Idade</h4>
							<input type="number" name="idade" placeholder="Idade em anos"
								class="form-control input-md" />
						</div>
					</div>
					<div class="modal-footer">
						<div>
							<button type="submit" class="btn btn-inserir" value="Login"
								role="button">Adicionar</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	</section>

	<section class="container">
	<div class="row">
		<div class="col-md-9">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<img class="img-circle img-responsive img-center"
					src="https://euacreditonoamoracreditoacredito.files.wordpress.com/2010/12/08-wd0509-marley-and-me.jpg"
					alt="">
				<h2>Marley</h2>
				<p>Se a raça Labrador ficou mais famosa de uma hora para outra,
					o reggae da Jamaica tem uma influência e tanto, pois o sobrenome de
					um famoso cantor do gênero inspirou um dono na hora de batizar seu
					parceiro de estimação.Marley & Eu tornou-se um mega sucesso
					(baseado em livro homônimo) e fez gente do mundo inteiro (donos e
					não donos) chorar muito.</p>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<img class="img-circle img-responsive img-center"
					src="http://www.petmd.com/sites/default/files/breedopedia/main-07.jpg"
					alt="">
				<h2>beethoven</h2>
				<p>Beethoven, sem dúvida, foi um grandão que deu a maior força
					para a raça São Bernardo. Afinal, Beethoven, o Magnífico (1992) fez
					tanto sucesso que teve filhotes: Beethoven 2 (1993), Beethoven 3 –
					Uma Família em Apuros (2000), Beethoven 4 (2001), Beethoven 5
					(2003), Beethoven: A Corrida para a Fama (2008) eBeethoven –
					Aventura de Natal (2011).</p>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<img class="img-circle img-responsive img-center"
					src="http://www.pawculture.com/uploads/collie-main.jpg" alt="">
				<h2>Laisse</h2>
				<p>Taí outro exemplar canino que pode brigar com Rin-Tin-Tin no
					posto de mais famoso do mundo audiovisual. Ele, ou melhor ela, é da
					raça Rough Collie e fez fama no seriado Lassie (1954-1974). A
					adorada cadela participou ainda de outros seriados e filmes, entre
					eles A Magia de Lassie (1978) e Lassie (1994).</p>
			</div>
		</div>
		<div class="col-md-3" style="padding-top: 50px;">
			<h2>Contato</h2>
			<address>
				<strong>TinDog</strong> <br>234 São Paulo <br>Vila
				Prudente, SP 90210 <br>
			</address>
			<address>
				<abbr title=Telefone">T:</abbr>(11) 2011-6577 <br> <abbr
					title="E-mail">E:</abbr> <a href="mailto:tindog@gmail.com">tindog@gmail.com.br</a>
			</address>
		</div>
	</div>
	<!-- /.row --> </section>

	<footer class="text-center">
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-12">
			<p>Copyright &copy; TinDog 2017</p>
		</div>
	</div>
	</footer>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/dog.js"></script>

</body>
</html>