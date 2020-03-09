package br.com.casadocodigo.loja.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.casadocodigo.loja.dao.ProdutoDAO;
import br.com.casadocodigo.loja.models.Produto;

@Controller
public class HomeController {

	@Autowired
	private ProdutoDAO produtoDao;

	@RequestMapping("/")
	@Cacheable(value = "produtosHome")
	public ModelAndView index() {
		String jspFile = "home";
		ModelAndView mv = new ModelAndView(jspFile);
		List<Produto> produtos = produtoDao.listar();
		mv.addObject("produtos", produtos);

		return mv;
	}
}
