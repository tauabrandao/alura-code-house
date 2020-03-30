package br.com.casadocodigo.loja.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import br.com.casadocodigo.loja.models.Produto;

public class ProdutoValidation implements Validator {

//	verificar se classe recebida por parâmetro é de fato um Produto
	@Override
	public boolean supports(Class<?> clazz) {
		return Produto.class.isAssignableFrom(clazz);
	}

//	adicionar os erros de validação, rejeitar se o campo estiver vazio
	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmpty(errors, "titulo", "field.required");
		ValidationUtils.rejectIfEmpty(errors, "descricao", "field.required");

		Produto produto = (Produto) target;

		if (produto.getPaginas() <= 0) {
			errors.rejectValue("paginas", "field.required");
		}

	}

}
