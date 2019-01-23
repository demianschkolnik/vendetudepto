var tipobano = {

	"Tipos": [{
			"tipo": "Oficina",
			"baños": ["1","2","3","4","5","6"],
			"dormitorios": ['--'],
			"piso": ['--'],
			"orientacion":['Norte', 'Sur', 'Este', 'Oeste']}, 

		{ "tipo": "Casa",
			"baños": ["1","2","3","4","5","6"],
			"dormitorios": ["1","2","3","4","5","6"],
			"piso": ['1','2','3','4'],
			"orientacion":['--']},

        { "tipo": "Terreno",
			"baños": ["--"],
			"dormitorios": ['--'],
			"piso": ['--'],
			"orientacion":['--']},

        { "tipo": "Estacionamiento",
			"baños": ["--"],
			"dormitorios": ['--'],
			"piso": ['--'],
			"orientacion":['--']},

		{ "tipo": "Parcela",
			"baños": ["--"],
			"dormitorios": ['--'],
			"piso": ['--'],
			"orientacion":['--']},

		{ "tipo": 'Departamento', 
			"baños": ["1","2","3","4","5","6"],
			"dormitorios": ["1","2","3","4","5","6"],
			"piso": [],
			"orientacion":['Norte', 'Sur', 'Este', 'Oeste']}
		]
}

jQuery(document).ready(function () {

	var iTipo = 0;
	var htmlTipo = '<option value="sin-tipo">Seleccione Tipo</option><option value="sin-tipo">--</option>';
	var htmlbanos = '<option value="sin-tipo">Seleccione cantidad de Baños</option><option value="sin-tipo">--</option>';
	var htmldorms = '<option value="sin-tipo">Seleccione cantidad de Dormitorios</option><option value="sin-tipo">--</option>';
	var htmlpiso = '<option value="sin-tipo">Seleccione Piso</option><option value="sin-tipo">--</option>';
	var htmlorientacion = '<option value="sin-tipo">Seleccione Orientación</option><option value="sin-tipo">--</option>';


	jQuery.each(tipobano.Tipo, function () {
		htmlTipo = htmlTipo + '<option value="' + tipobano.Tipos[iTipo].tipo + '">' + tipobano.Tipos[iTipo].tipo + '</option>';
		iTipo++;
	});

	jQuery('#pedido_tipo').html(htmlTipo);
	jQuery('#pedido_banos').html(htmlbanos);
	jQuery('#pedido_dorms').html(htmldorms);
	jQuery('#pedido_piso').html(htmlpiso);
	jQuery('#pedido_orientacion').html(htmlorientacion);


	jQuery('#pedido_tipo').change(function () {
		var iTipos = 0;
		var valorTipo = jQuery(this).val();
		var htmlbanos = '<option value="sin-bano">Seleccione Baño</option><option value="sin-bano">--</option>';
		var htmldorms = '<option value="sin-bano">Seleccione cantidad de Dormitorios</option><option value="sin-bano">--</option>';
		var htmlpiso = '<option value="sin-bano">Seleccione Piso</option><option value="sin-bano">--</option>';
		var htmlorientacion = '<option value="sin-bano">Seleccione Orientacion</option><option value="sin-bano">--</option>';
		jQuery.each(tipobano.Tipos, function () {
			if (tipobano.Tipos[iTipos].tipo == valorTipo) {
				var ibanos = 0;
				var idorms = 0;
				var ipiso = 0;
				var iorientacion = 0;
				jQuery.each(tipobano.Tipos[iTipos].baños, function () {
					htmlbanos = htmlbanos + '<option value="' + tipobano.Tipos[iTipo].baños[ibanos] + '">' + tipobano.Tipos[iTipos].baños[ibanos] + '</option>';
					ibanos++;
				});
				jQuery.each(tipobano.Tipos[iTipos].dormitorios, function () {
					htmldorms = htmldorms + '<option value="' + tipobano.Tipos[iTipo].dormitorios[idorms] + '">' + tipobano.Tipos[iTipos].dormitorios[idorms] + '</option>';
					idorms++;
				});
				jQuery.each(tipobano.Tipos[iTipos].piso, function () {
					htmlpiso = htmlpiso + '<option value="' + tipobano.Tipos[iTipo].piso[ipiso] + '">' + tipobano.Tipos[iTipos].piso[ipiso] + '</option>';
					ipiso++;
				});
				jQuery.each(tipobano.Tipos[iTipos].orientacion, function () {
					htmlorientacion = htmlorientacion + '<option value="' + tipobano.Tipos[iTipo].orientacion[iorientacion] + '">' + tipobano.Tipos[iTipos].orientacion[iorientacion] + '</option>';
					iorientacion++;
				});

			}
			iTipo++;
		});
		jQuery('#pedido_banos').html(htmlbanos);
	});
	jQuery('#pedido_banos').change(function () {
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