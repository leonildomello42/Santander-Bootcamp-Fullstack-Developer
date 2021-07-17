package br.com.java.avancado.threads;

public class ThreadExemplo {

    public static void main(String[] args) {

        BarraDeCarregamento2 barraDeCarregamento2 =  new BarraDeCarregamento2();
        BarraDeCarregamento2 barraDeCarregamento22 =  new BarraDeCarregamento2();
        barraDeCarregamento2.start();
        barraDeCarregamento22.start();
    }

}

class GerarPDF implements Runnable{

    @Override
    public void run() {
        System.out.println("Gerar PDF");
    }
}

class BarraDeCarregamento implements Runnable{

    @Override
    public void run() {
        System.out.println("Loading...");
    }
}

//Forma 1 usar threads

class BarraDeCarregamento2 extends Thread{
    @Override
    public void run() {
        super.run();
        System.out.println("rodei a : " + this.getName());

        try {
            Thread.sleep(5000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
