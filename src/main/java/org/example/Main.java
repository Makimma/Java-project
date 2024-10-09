package org.example;

import static java.lang.Thread.sleep;

public class Main {
    public static void main(String[] args) throws InterruptedException {
        while (true) {
            System.out.println("Hello world!");
            sleep(1000);
        }
    }
}