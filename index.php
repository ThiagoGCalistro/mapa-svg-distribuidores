<!doctype html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <title>Mapa do Brasil - Distribuidores</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script type="text/javascript" src="js/function.js"></script>
    <link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>

    <?php
        require_once ("bd/connect.php");
        $pdo = Database::conexao();
        require_once ("gerar_vetor.php");
    ?>
    
    <div class="left">
        <?php require_once ("mapa.php"); ?>
    </div>

    <div class="left informativo">
        <?php
            $est = $_GET['est'];

            echo "<div class='cabecalho'>".$Estados[$est]['est'.$est]."</div>";

            $query = $pdo->prepare('SELECT * from distribuidores where est_cod = '.$est.' and fl_ativo = 1');  
            $query->execute();

            $j = 1;
            while($row = $query->fetch(PDO::FETCH_OBJ))
            {
        ?>
                <style type="text/css">
                    #foo<?php echo $row->cod_dis ?>{display: none;}
                </style>

                <a href="#" onclick="toggle('foo<?php echo $row->cod_dis ?>');">
                    <div class="nome-distribuidor">
                            <?php echo $row->nome; ?>
                    </div>
                </a>
                    
                <div class="informacoes-distribuidor" id="foo<?php echo $row->cod_dis ?>">
                    <?php
                        echo '<span> Cidade:    '.$row->cidade.     '</span>';
                        echo '<span> CEP:       '.$row->cep.        '</span>';
                        echo '<span> Telefone:  '.$row->telefone.   '</span>';
                        echo '<span> Email:     '.$row->email.      '</span>';
                    ?> 
                </div>
        <?php
            }
        ?>
    </div>

</body>
</html>

