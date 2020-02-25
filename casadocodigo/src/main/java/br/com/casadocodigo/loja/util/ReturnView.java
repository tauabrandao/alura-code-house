package br.com.casadocodigo.loja.util;

public class ReturnView {

	public static String retornaView(String viewFolder, String jspFile) {

		StringBuilder retorno = new StringBuilder("/");
		retorno.append(viewFolder).append("/").append(jspFile);

		return retorno.toString();
	}

}
