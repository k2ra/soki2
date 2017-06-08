<?php

/**
* 
*/
class home
{	
	
	function __construct()
	{
		$this->connect    = new connectdb();
	}

	public function misEncuestas(){
		$resp =array();
		$query ="SELECT titulo,fecha_creacion,(SELECT count(*) FROM tbl_encuesta_valida WHERE completado =1 AND encuesta = a.id_encuesta) as completado,(SELECT count(*) FROM tbl_encuesta_valida WHERE completado =0 AND encuesta = a.id_encuesta) as pendiente FROM tbl_encuestas a ,tbl_encuesta_valida b WHERE a.id_encuesta = b.encuesta AND a.activo =1 group by a.id_encuesta";

		
		$result = mysqli_query($this->connect, $query);

				if ($result) {
				    // output data of each row
				    while($row = $result->fetch_assoc()) {
				        $resp[] = array("titulo" => $row["titulo"], "fecha" => $row["fecha_creacion"], "completado" => $row["completado"], "pendiente" => $row["pendiente"]);

				    }
				} else {
				    echo "0 results";
				}
				return $resp;

	}


}

?>