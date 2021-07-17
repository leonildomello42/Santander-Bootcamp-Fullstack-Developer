package br.com.java.avancado.interfacesFuncionais;

public class FuncaoAltaOrdem {

    public static void main(String[] args) {

        Calculo soma = (a, b) -> a+b;
        Calculo multiplicar = (a, b) -> a*b;

        System.out.println(executarOperacao(soma, 1, 3));
        System.out.println(executarOperacao(multiplicar, 1, 3));
    }

    public static int executarOperacao(Calculo calculo, int a, int b){
        return calculo.calcular(a,b);
    }
}

interface Calculo {
    public int calcular(int a, int b);
}
