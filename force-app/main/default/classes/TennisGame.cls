public with sharing class TennisGame {

    private Score playerOne { get; set; }
    private Score playerTwo { get; set; }

    public TennisGame() {
        this.playerOne = new Score();
        this.playerTwo = new Score();
    }

    public string getScore() {
        return this.playerOne.toString() + '-' + this.playerTwo.toString();
    }

    public void playerOneScores() {
        this.playerOne = this.playerOne.scored();
    }

    public void playerTwoScores() {
        this.playerTwo = this.playerTwo.scored();
    }

    public class Score {
        private Integer Value;

        public Score() {
            this.Value = 0;
        }

        public Score(Integer value) {
            this.Value = value;
        }

        public Score scored() {
            if (this.Value == 0) {
                return new Score(15);
            }
            return this; // TODO throw Exception
        }

        public override string toString() {
            if (this.Value == 15) {
                return 'Fifteen';
            }
            return 'Love';
        }
    }
}
