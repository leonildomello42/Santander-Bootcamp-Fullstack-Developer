package br.com.java.avancado.interfacesFuncionais;

import java.util.function.Function;

public class Funcoes {

    public static void main(String[] args) {

        Function<String, String> retornarNomeAoContrario = texto -> new StringBuilder(texto).reverse().toString();

        Function<String, Integer> funcaoInte = string -> {
            int i = 10;
            return Integer.valueOf(string);
        };

        Function<String, Integer> funcaoInte2 = Integer::valueOf;

        System.out.println(retornarNomeAoContrario.apply("Leonildo"));
        System.out.println(funcaoInte.apply("10"));
    }
}
