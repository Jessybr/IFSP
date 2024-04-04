<?php 
    class Pessoa{
        public $nome;
        public $email;
        public $idade;
        public $fone;

        public function cadastroaluno(){
            echo "<br/><br/>Cadastro aluno<br/>";
            echo "Nome: ".$this->nome . " <br/>";
            echo "E-mail: ". $this->email ."<br/>";
            echo "Idade: ". $this->idade . "<br/>";
            echo "Telefone: " . $this->fone . "<br/>";
            echo "<br/>";
        }

        public function cadastroprofessor(){
            echo "<br/><br/>Cadastro professor<br/>";
            echo "Nome: ".$this->nome . " <br/>";
            echo "E-mail: ". $this->email ."<br/>";
            echo "Idade: ". $this->idade . "<br/>";
            echo "Telefone: ". $this->fone . "<br/>";
            echo "<br/>";
        } 

        public function cadastrodependente(){
            echo "<br/><br/>Cadastro dependente<br/>";
            echo "Nome: ".$this->nome . " <br/>";
            echo "E-mail: ". $this->email ."<br/>";
            echo "Idade: ". $this->idade . "<br/>";
            echo "Telefone: ". $this->fone . "<br/>";
            echo "<br/>";
        }
    }   

?>