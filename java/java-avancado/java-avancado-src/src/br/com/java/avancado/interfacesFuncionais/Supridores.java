package br.com.java.avancado.interfacesFuncionais;

import java.util.function.Supplier;

public class Supridores {

    public static void main(String[] args) {

        Supplier<Pessoa> instaciaPessoa = () -> new Pessoa();
        Supplier<Pessoa> instaciaPessoa2 = Pessoa::new;

        System.out.println(instaciaPessoa.get());
    }
}

class Pessoa{

    private String name;
    private Integer idade;

    public Pessoa() {
        this.name = "Leo";
        this.idade = 30;
    }

    @Override
    public String toString() {
        return "Pessoa{" +
                "name='" + name + '\'' +
                ", idade=" + idade +
                '}';
    }
}
