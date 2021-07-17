package br.com.java.avancado.interfacesFuncionais;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Iteracoes {

    public static void main(String[] args) {

        String[] nomes = {"noma1", "nome2", "nome3", "nome4", "nome5"};
        Integer[] numeros = {1,2,3,4,5};

        //imprimirNomesFiltrados(nomes);
        //imprimirTodosOsNomes(nomes);
        //imprimirODobroDeCadaItemDaLista(numeros);

        List<String> profissoes = new ArrayList<>();
        profissoes.add("Desenvolvedor");
        profissoes.add("Testador");
        profissoes.add("Front");
        profissoes.add("Gerente 1");
        profissoes.add("Gerente 2");

        profissoes.stream()
                .filter(profissao -> profissao.startsWith("Gerente"))
                .forEach(System.out::println);
    }

    public static void imprimirNomesFiltrados(String... nomes){

        String nomesParaIMprimirStream = Stream.of(nomes)
                .filter(nome -> nome.equals("nome4"))
                .collect(Collectors.joining());
        System.out.println(nomesParaIMprimirStream);

    }

    public static void imprimirTodosOsNomes(String... nomes){

//        Stream.of(nomes)
//                .forEach(nome -> System.out.println(nome));
//    }

//        Stream.of(nomes)
//                .forEach(nome -> System.out.println("frase: " +nome));
//    }
            Stream.of(nomes)
            .forEach(System.out::println);
    }

    public static void imprimirODobroDeCadaItemDaLista(Integer... numeros){

        Stream.of(numeros).map(numero -> numero*2)
                .forEach(System.out::println);


    }

}
