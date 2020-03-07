package br.com.casadocodigo.loja.models;

import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

@Component
public class CarrinhoCompras {
	private Map<CarrinhoItem, Integer> itensDoCarrinho = new LinkedHashMap<>();

	public void add(CarrinhoItem itemAInserir) {
		itensDoCarrinho.put(itemAInserir, getQuantidade(itemAInserir) + 1);
	}

	private Integer getQuantidade(CarrinhoItem itemAInserir) {
		if (!itensDoCarrinho.containsKey(itemAInserir)) {
			itensDoCarrinho.put(itemAInserir, 0);
		}
		return itensDoCarrinho.get(itemAInserir);
	}

	public int getQuantidade() {
		return itensDoCarrinho.values().stream()
		        .reduce(0, (proximo, acumulador) -> proximo + acumulador);
	}

}
