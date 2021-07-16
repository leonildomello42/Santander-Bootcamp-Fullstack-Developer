package br.com.java.avancado.lambda;

public class Aula3_Lambda {

    public static void main(String[] args) {

        Funcao3 colocarPrefixo = valor -> {
            return valor;
        };
        System.out.println(colocarPrefixo.gerar("Leo-nildo"));
    }
}

@FunctionalInterface
interface Funcao3{
    String gerar(String valor);
}
