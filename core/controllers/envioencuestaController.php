<?php
/*  sn -> survey number
	eval -> evaluado
*/

require ('core/models/validaEncuestaModels.php');
require ('core/functions/cifrado.php');

$models = new validaEncuestaModels();
$cifrado= new cifrado();

if(isset($_SESSION['user'])) {

		$idencuesta = isset($_POST['selencuesta']) ? mysqli_real_escape_string(new connectdb(), $_POST['selencuesta']) :  "";
		$departamento= isset($_POST['txtdepartamento']) ? mysqli_real_escape_string(new connectdb(), $_POST['txtdepartamento']) :  "";

		if (isset($_POST['enviarCorreos']) && $_GET['mode']== "enviar"){
			$num =$_POST['numEncuestados'];
			$para;
			$mensaje;
			
			for ($i=0; $i < $num ; $i++) { 
				$para=$_POST['correo'.$i];
				$mensaje = "http://localhost/encuesta/?view=preguntas&mode=list&sn=".$cifrado ->encodeBase64($idencuesta)."&eval=". md5($para);
				//echo $para." ".$mensaje;
				$models->insertaEncuestaValida(md5($para),$departamento,$idencuesta,0);
				mail($para, 'Mi título', $mensaje);
				
			}
		include('views/envioEncuesta.php');
		}
		else{
			$resp =$models->encuestas();
			$empresa = $models->MuestraEmpresa();
			include('views/envioEncuesta.php');
		}
}
else
{
header('location: ?view=login');
	
}


?>