/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.quiz;

import java.util.ArrayList;

/**
 *
 * @author MohamadTarif
 */
public class Db {

    public static ArrayList<Perguntas> getAvengersQuiz() {
        ArrayList<Perguntas> quiz = new ArrayList<>();
        quiz.add(new Perguntas("1. Quem é o primeiro vingador?", "Capitão América", new String[]{"Hulk", "Homem de Ferro", "Homem Aranha", "Capitão América", "Viuva Negra"}));
        quiz.add(new Perguntas("2. Qual a raça alienígena que ajuda Loki a invadir a Terra no filme Os Vingadores?", "Chitauri", new String[]{"Chitauri", "Skrull", "Marcianos", "Krees", "Badoons"}));
        quiz.add(new Perguntas("3. Para que a S.H.I.E.L.D. usa o cubo?", "Para criar armas", new String[]{"Para destruir a lua", "Para criar armas", "Para construir naves", "Para destruir Loki", "Todas as anteriores"}));
        quiz.add(new Perguntas("4. Qual atriz interpretam a heroína Viúva Negra?", "Scarlett Johansson", new String[]{"Scarlett Johansson", "Whoopi Goldberg", "cris cyborg", "Regina Cazé", "Brie Larson"}));
        quiz.add(new Perguntas("5. Qual é a letra que sobra na torre Stark no final do filme?", "A", new String[]{"S", "T", "A", "R", "K"}));
        quiz.add(new Perguntas("6. Qual o nome da banda que está estampado na camiseta do Tony Stark no filme?", "Black Sabbath", new String[]{"Legião Urbana", "AC/DC", "Mamonas Assassinas", "Nirvanna", "Black Sabbath"}));
        quiz.add(new Perguntas("7. No filme Vingadores: Era de Ultron, quem morre para salvar o Gavião Arqueiro?", "Mércurio", new String[]{"Homem de Ferro", "Thor", "Mércurio", "Capitão América", "Hulk"}));
        quiz.add(new Perguntas("8. Qual é o nome do chefe da Shield?", "Nick Fury", new String[]{"Nick Fiury", "Nyck Furi", "Nyck Fury", "Nick Fury", "Barack Obama"}));
        quiz.add(new Perguntas("9. Quem é a única pessoa capaz de acalmar Hulk?", "Viúva Negra", new String[]{"Capitão América", "Homem De Ferro", "Feiticeira Escarlete", "Agente Hill", "Viúva Negra"}));
        quiz.add(new Perguntas("10. Quem é o criador dos Herois da Marvel que sempre apareceu em todos os filmes?", "Stan Lee", new String[]{"Mauricio de Souza", "Jackie Chan", "Bruce lee", "Stan Lee", "Jet Li"}));
        return quiz;
    }
}
