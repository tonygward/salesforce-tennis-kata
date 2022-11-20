@isTest
public with sharing class TennisGameTests {

    // https://codingdojo.org/kata/Tennis/

    @isTest
    private static void newGame() {
        TennisGame actual = new TennisGame();
        System.assertEquals('Love-Love', actual.getScore());
    }

    @isTest
    private static void playerOneScores() {
        TennisGame game = new TennisGame();
        game.playerOneScores();
        System.assertEquals('Fifteen-Love', game.getScore());
    }

    @isTest
    private static void playerTwoScores() {
        TennisGame game = new TennisGame();
        game.playerTwoScores();
        System.assertEquals('Love-Fifteen', game.getScore());
    }

    @isTest
    private static void playerOneAndPlayerTwoScores() {
        TennisGame game = new TennisGame();
        game.playerOneScores();
        game.playerTwoScores();
        System.assertEquals('Fifteen-Fifteen', game.getScore());
    }
}
