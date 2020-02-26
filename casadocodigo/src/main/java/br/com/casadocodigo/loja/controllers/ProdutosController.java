package br.com.casadocodigo.loja.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.casadocodigo.loja.dao.ProdutoDAO;
import br.com.casadocodigo.loja.models.Produto;
import br.com.casadocodigo.loja.models.TipoPreco;
import br.com.casadocodigo.loja.util.ReturnView;

@Controller
@RequestMapping("/produtos")
public class ProdutosController {

	private final String viewFolder = "produtos";

	@Autowired
	private ProdutoDAO dao;

	@RequestMapping("form")
	public ModelAndView form() {
		String jspRetorno = "form";

		ModelAndView mv = new ModelAndView(ReturnView.retornaView(viewFolder, jspRetorno));
		mv.addObject("tipos", TipoPreco.values());

		return mv;
	}

	@RequestMapping(method = RequestMethod.POST)
	public String gravar(Produto produto) {
		String jspRetorno = "produtoCadastrado";

		System.out.println(produto);
		dao.gravar(produto);

		return ReturnView.retornaView(viewFolder, jspRetorno);
	}

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView listar() {
		String jspRetorno = "lista";

		List<Produto> produtos = dao.listar();

		ModelAndView mv = new ModelAndView(ReturnView.retornaView(viewFolder, jspRetorno));
		mv.addObject("produtos", produtos);
		return mv;
	}

}
