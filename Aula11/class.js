class Brasil {
	constructor(intro) {
		this.intro = intro;
	}

	mostraCapitais = function(lista) {
		return lista.map((capital) => this.intro + capital);
	}
}

class Capital extends Brasil {
    mostraCapitais = function(lista) {
		return this.intro + "Brasilia";
	}
}

var br = new Brasil('Capital do Brasil é: ');
console.log(br.mostraCapitais(['Rio', 'BH', 'Brasilia']));

var capital = new Capital('Capital do Brasil é: ');
console.log(capital.mostraCapitais([]));