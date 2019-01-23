var tipobano = {

	"Tipos": [{
			"tipo": "Oficina",
			"banos": ["1","2","3","4","5","6"],
			
		}, 

		{ "tipo": "Casa",
			"banos": ["1","2","3","4","5","6"],
			
		},

        { "tipo": "Terreno",
			"banos": ["--"],
		},

        { "tipo": "Estacionamiento",
			"banos": ["--"],
			
		},

		{ "tipo": "Parcela",
			"banos": ["--"],
		
		},

		{ "tipo": 'Departamento', 
			"banos": ["1","2","3","4","5","6"],
		}
		]
}

jQuery(document).ready(function () {

	var iTipo = 0;
	var htmlTipo = '<option value="sin-tipo">Seleccione Tipo</option><option value="sin-tipo">--</option>';
	var htmlbanos = '<option value="sin-tipo">Seleccione cantidad de Baños</option><option value="sin-tipo">--</option>';
	


	jQuery.each(tipobano.Tipo, function () {
		htmlTipo = htmlTipo + '<option value="' + tipobano.Tipos[iTipo].tipo + '">' + tipobano.Tipos[iTipo].tipo + '</option>';
		iTipo++;
	});

	jQuery('#pedido_tipo').html(htmlTipo);
	jQuery('#pedido_bano').html(htmlbanos);
	


	jQuery('#pedido_tipo').change(function () {
		var iTipos = 0;
		var valorTipo = jQuery(this).val();
		var htmlbanos = '<option value="sin-bano">Seleccione Baño</option><option value="sin-bano">--</option>';
		
		jQuery.each(tipobano.Tipos, function () {
			if (tipobano.Tipos[iTipos].tipo == valorTipo) {
				var ibanos = 0;
				jQuery.each(tipobano.Tipos[iTipos].baños, function () {
					htmlbanos = htmlbanos + '<option value="' + tipobano.Tipos[iTipo].banos[ibanos] + '">' + tipobano.Tipos[iTipos].banos[ibanos] + '</option>';
					ibanos++;
				});
				

			}
			iTipo++;
		});
		jQuery('#pedido_bano').html(htmlbanos);
		
	});
	jQuery('#pedido_bano').change(function () {
		if (jQuery(this).val() == 'sin-tipo') {
			alert('seleccione Tipo');
		} else if (jQuery(this).val() == 'sin-bano') {
			alert('seleccione cantidad de Baños');
		}
	});
	jQuery('#pedido_tipo').change(function () {
		if (jQuery(this).val() == 'sin-tipo') {
			alert('seleccione Tipo');
		}
	});

});