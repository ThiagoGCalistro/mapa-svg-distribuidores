<?php
        $query = $pdo->prepare('SELECT * from estados');  
        $query->execute();

        $i = 0;
        while($row = $query->fetch(PDO::FETCH_OBJ)){
            $Estados[] = array('est'.$i => $row->estado);
            $Cod[] = array('cod'.$i => $row->cod_est-1);
            $i++;
        }
?>