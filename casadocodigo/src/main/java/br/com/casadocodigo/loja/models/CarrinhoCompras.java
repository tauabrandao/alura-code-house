package br.com.casadocodigo.loja.models;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;
import org.springframework.web.context.WebApplicationContext;

@Component
@Scope(value = WebApplicationContext.SCOPE_SESSION, proxyMode = ScopedProxyMode.TARGET_CLASS)
public class CarrinhoCompras implements Serializable {

	private static final long serialVersionUID = 1L;

	private Map<CarrinhoItem, Integer> itensDoCarrinho = new LinkedHashMap<>();

	public void add(CarrinhoItem itemAInserir) {
		itensDoCarrinho.put(itemAInserir, getQuantidade(itemAInserir) + 1);
	}

	public Integer getQuantidade(CarrinhoItem itemAInserir) {
		if (!itensDoCarrinho.containsKey(itemAInserir)) {
			itensDoCarrinho.put(itemAInserir, 0);
		}
		return itensDoCarrinho.get(itemAInserir);
	}

	public int getQuantidade() {
		return itensDoCarrinho.values().stream().reduce(0, (proximo, acumulador) -> proximo + acumulador);
	}

	public Collection<CarrinhoItem> getItens() {
		return itensDoCarrinho.keySet();
	}

	public BigDecimal getTotal(CarrinhoItem item) {
		return item.getTotal(getQuantidade(item));
	}

	public BigDecimal getTotal() {
		BigDecimal total = BigDecimal.ZERO;

		for (CarrinhoItem item : itensDoCarrinho.keySet()) {
			total = total.add(getTotal(item));
		}

		return total;
	}
	
	public void remover(Integer produtoID, TipoPreco tipoPreco) {
		Produto produto = new Produto();
		produto.setId(produtoID);
		itensDoCarrinho.remove(new CarrinhoItem(produto, tipoPreco));
	}
	
	

}
