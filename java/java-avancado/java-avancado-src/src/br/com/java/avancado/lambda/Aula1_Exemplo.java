package br.com.java.avancado.lambda;

public class Aula1_Exemplo {

    public static void main(String[] args) {

        Funcao funcao = valor -> valor;
        System.out.println(funcao.gerar("Leo"));
    }
}

@FunctionalInterface
interface Funcao1 {
    String gerar(String valor);
    //Integer gerarNumero(String valor);
}
