/**
 * 
 */
var departamentos=["Amazonas","Áncash","Apurímac","Arequipa","Ayacucho","Cajamarca",
							 "Cuzco","Huancavelica","Huánuco","Ica","Junín","La Libertad","Lambayeque",
							 "Lima (departamento)","Loreto","Madre de Dios","Moquegua","Pasco","Piura",
							 "Puno","San Martín","Tacna","Tumbes","Ucayali"];

var ciudades=[
				["Chachapoyas","Mendoza","Bagua grande","Distrito de Molinopampa","Huancas","Jumbilla","Lamud","Aramango","Levanto","Santa María de Nieva","Chiriaco","La Jalca"],
				["Chimbote","Casma","Huarmey","Huaraz","Chiquián","Cabana","Huari","Caraz","Aija","Yungay","Chacas","Corongo","Carhuaz","Pomabamba","Llamellín","Ocros","Recuay","Sihuas","San Luis","Piscobamba"],
     			["Abancay","Andahuaylas","Tambobamba","Chuquibambilla","Chalhuanca","Chincheros","Antabamba"],
     			["Arequipa","Mollendo","Caravelí","Chivay","Achoma Yunque","Aplao","Camaná","Cotahuasi","Chuquibamba"],
     			["Ayacucho","Vilcashuamán","Huanta","Pausa","Coracora","Huancapi","Puquio","Cangallo","Huanca Sancos","San Miguel","Querobamba"],
     			["Cajamarca","San Marcos","Jaén","Cajabamba","Chota","San Miguel de Pallaques","San Ignacio","San pablo","Santa Cruz de Succhabamba","Bambamarca","Cutervo","Celendín"],
     			["Cusco","Urubamba","Aguas Calientes","Urcos","Acomayo","Paruro","Calca","Sicuani","Quillabamba","Yanaoca","Anta","Tomás","Paucartambo","Espinar"],
     			["Huancaveliza","Huaytará","Lircay","Castrovirreyna","Acobamba","Churcampa","Pampas"],
     			["Huanuco","Llata","Ambo","Tomayquichua","Tingo María","La Union","Chavinillo","Jesús","Huacaybamba","Puerto Inca","Panao","Huacrachuco"],
     			["Pisco","Ica","Cachique","Chincha Alta","Nazca","Palpa"],
     			["Huancayo","Jauja","Junín","Concepción","Chupaca","Tarma","Oroya","Satipo","Merced"],
     			["Trujillo","Lloc","Ascope","Virú","Tayabamba","Huamachuco","Otuzco","Santiago de Chuco","Chepén","Bolivar","Cascas","Julcán"],
     			["Chiclayo","Lambayeque","Ferreñafe"],
     			["Lima","Chosica","San Vicente de Cañete","Huacho","Matucana","Barranca","Oyón","Huaral","Canta","Cajatambos","Yauyos","Catapalla"],
     			["Padre Cocha","Iquitos","Caballococha","Contamana","Requeña","Nauta","Yurimaguas","San Lorenzo"],
     			["Puerto Maldonado","Iñapari","Salvación"],
     			["Ilo","Moquegua","Omate"],
     			["Cerro de Pasco","Oxapampa","Yanahuanca"],
     			["Talara","Sechura","Paita","Piura","Ayabaca","Huancabamba","Sullana","Chulucanas"],
     			["Puno","Juli","Azángaro","Lampa","Ayaviri","Juliaca","Macusani","Huancané","Yunguyo","Moho","Ilave","Sandia","Putina"],
     			["Tarapoto","Juanji","Barrio","Waycu","Lamas","Mollobamba","Tocache","Bellavista","San José de Sisa","Saposoa","Rioja","Picota"],
     			["Tacna","Locumba","Chandarave","Tarata"],
     			["Zorritos","Tumbes","Zarumilla"],
     			["Pucallpa","Aguaytia","Puerto Esperanza","Atalaya"]
     			
		];

function cambiaCiudades(){
	var departamento= document.getElementById("departamento").value;
	for (var i = 0; i < departamentos.length; i++) {
		if(departamentos[i]===departamento){
			
			var selectCiudades=document.getElementById("ciudades");
			selectCiudades.innerHTML="";
			for(var j = 0; j<ciudades[i].length;j++){
				var option = document.createElement("option");
				option.text=ciudades[i][j];
				selectCiudades.add(option);
			}
			break;
		}
	}
}

function carga(){
	cambiaCiudades();
	validaMail();
}

