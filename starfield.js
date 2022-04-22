const fs = require('fs')
const characters = '✷✵⊹*·.⋆˚✧✫✺+✦';
const space = '\t';

let rand = () => characters[Math.floor(Math.random() * characters.length)];
let starfield = `${rand()}${space}`;

for(let row = 0; row < 188; row++)
{
	let cos = 0.25 - Math.cos(row * 2 * (Math.PI / 180)) * 0.1;

	if(Math.random() < cos) starfield += rand();
	
	starfield += space;
}

starfield = `${starfield.substring(0, 188)}${space}${rand()}`

fs.writeFile('starfield', starfield, error => console.error(error));
