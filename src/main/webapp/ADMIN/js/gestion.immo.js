$(document).ready(
		function() {
			var $commune = $('#commune');
			var $quartier = $('#quartier');

			/*
			 * $.ajax({ url : 'commune.do', data : 'go', dataType : 'json',
			 * success : function(json) { $.each(json, function(index, value) {
			 * $commune.append('<option value="' + index + '">' + value + '</option>');
			 * }); } });
			 */

			$commune.on('change', function() {

				var val = $(this).val();
				// $loading.show();
				event.preventDefault(); // Bloquer le comportement du navigateur
				// par defaut
				if (val != '') {
					$quartier.empty();
					// var formData = $(this).serialize(); //on recupère les
					// données
					// du formulaire
					$.ajax({
						method : 'GET',
						url : 'quartier.do',
						contentType: "application/json",
						data : 'id=' + val,
						dataType : 'json'
					}).done(
							function(reponse) {
								console.log(reponse);
								$.each(reponse, function(index, value) {
									$quartier.append('<option value="' + value.id
											+ '">' + value.libelle + '</option>');
								});
								// $loading.hide();

							}).fail(function(error) {
						// $loading.hide();
						console.log(error);
					}).always(function() {
						// $loading.hide();
						console.log("Merci!");
					});
				}

			});
		});