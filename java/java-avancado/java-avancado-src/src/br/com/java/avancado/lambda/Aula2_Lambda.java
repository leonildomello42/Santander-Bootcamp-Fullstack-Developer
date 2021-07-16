package br.com.java.avancado.lambda;

public class Aula2_Lambda {

    public static void main(String[] args) {

        Funcao colocarPrefixo = valor -> "Sr. "+valor;
        System.out.println(colocarPrefixo.gerar("Leo"));
    }
}

@FunctionalInterface
interface Funcao2{
    String gerar(String valor);
}
