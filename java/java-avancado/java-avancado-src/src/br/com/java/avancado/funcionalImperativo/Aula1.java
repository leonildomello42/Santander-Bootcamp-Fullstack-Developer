package br.com.java.avancado.funcionalImperativo;

import java.util.function.UnaryOperator;

public class Aula1 {

    public static void main(String[] args) {

        UnaryOperator<Integer> calcularValorVezesTrinta = valor -> valor*3;
        int valor = 10;

        System.out.println("O resultado é :: " + calcularValorVezesTrinta.apply(10));
    }
}
