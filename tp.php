 <?php
 
 $cnx = mysqli_connect("localhost", "toto","tata","teste1");
    
 if(mysqli_connect_errno()){
    echo "Érreur de connexion à la base ".mysqli_connect_error();
}


$svr_name= "localhost"; //même chose que localhost
$user="toto";
$pwd="tata";

# Je créé la connexion vers le serveur

$con= mysqli_connect($svr_name, $user, $pwd);

# Je test la connexion

if(!$con){
    die("Échec de le connexion ".mysqli_connect_error());
}
echo "Connexion réussie";

$sql= select * from clients;





?>