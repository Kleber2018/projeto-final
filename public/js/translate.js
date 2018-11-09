 function Translate() { 
	//initialization
	this.init =  function(attribute, lng){
		this.attribute = attribute;
		this.lng = lng;	
	}
	//translate 
	this.process = function(){
				_self = this;
				var xrhFile = new XMLHttpRequest();
				//load content data 
				xrhFile.open("GET", "http://localhost/projeto-final/public/js/lang/"+this.lng+".json", false); //Arrumar o caminho
				xrhFile.onreadystatechange = function ()
				{
					if(xrhFile.readyState === 4)
					{
						if(xrhFile.status === 200 || xrhFile.status == 0)
						{
							var LngObject = JSON.parse(xrhFile.responseText);
							var allDom = document.getElementsByTagName("*");
							for(var i =0; i < allDom.length; i++){
								var elem = allDom[i];
								var key = elem.getAttribute(_self.attribute);
								 
								if(key != null) {
									 //console.log(key);
									 elem.innerHTML = LngObject[key]  ;
								}
							}
					 
						}
					}
				}
				xrhFile.send();
    }

}
 