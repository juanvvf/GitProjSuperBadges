public with sharing class AnimalLocator  {
	public static String getAnimalNameById(Integer 	idresposta) {

	Http http = new Http();
	HttpRequest pergunta = new HttpRequest();
	pergunta.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+ idresposta);
	pergunta.setMethod('GET');
	HttpResponse resposta = http.send(pergunta);

	String stringJson = '';
	if (resposta.getStatusCode() == 200) {
	    stringJson = resposta.getBody();
	}    	    
	    
	    Map<String, Object> resultado = (Map<String, Object>) JSON.deserializeUntyped(stringJson);
	    
	    String nomeDoBicho = '';
		nomeDoBicho = String.valueOf(((Map<String, Object>) resultado.get('animal')).get('name'));
		return nomeDoBicho;
		
    }
}