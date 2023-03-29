const options = {
	method: 'GET',
	headers: {
		'X-RapidAPI-Key': 'd08bf10fdemsh705b6ace39987b6p1b39bdjsn7d427ccbc6ec',
		'X-RapidAPI-Host': 'videogames-news2.p.rapidapi.com'
	}
};

fetch('https://videogames-news2.p.rapidapi.com/videogames_news/recent', options)
	.then(response => response.json())
	.then(response => console.log(response))
	.catch(err => console.error(err));
  
