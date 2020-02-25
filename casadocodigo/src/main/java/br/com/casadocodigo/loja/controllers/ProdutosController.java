package br.com.casadocodigo.loja.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.casadocodigo.loja.dao.ProdutoDAO;
import br.com.casadocodigo.loja.models.Produto;
import br.com.casadocodigo.loja.util.ReturnView;

@Controller
public class ProdutosController {

	private final String viewFolder = "produtos";

	@Autowired
	private ProdutoDAO dao;

	@RequestMapping("/produtos/form")
	public String form() {
		String jspRetorno = "form";
		return ReturnView.retornaView(viewFolder, jspRetorno);
	}

	@RequestMapping("/produtos/cadastrar")
	public String gravar(Produto produto) {
		String jspRetorno = "produtoCadastrado";

		System.out.println(produto);
		dao.gravar(produto);

		return ReturnView.retornaView(viewFolder, jspRetorno);
	}
}
