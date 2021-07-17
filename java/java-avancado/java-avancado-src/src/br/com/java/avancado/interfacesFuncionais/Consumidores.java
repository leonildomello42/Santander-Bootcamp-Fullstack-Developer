package br.com.java.avancado.interfacesFuncionais;

import java.util.function.Consumer;

public class Consumidores {

    public static void main(String[] args) {

        Consumer<String> imprimirFrase = System.out::println;
        Consumer<String> imprimirFrase2 = frase -> System.out.println(frase);

        imprimirFrase.accept("Hello!");
    }
}
