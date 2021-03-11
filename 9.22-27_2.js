var queryString = decodeURIComponent(window.location.search);
queryString = queryString.substring(1);
var queries = queryString.split("&");
var topo;
nivelDeProblema(queries[0]);

function tipoDeProblema(b,x,y){
    if (b=='500'){
        b = 100 * (Math.floor(Math.random() * 4)+1);
        b= b.toString();
        
    }
    switch(b){
    case '100':
        var resultado = parseInt(x)+parseInt(y);
        document.write("<div id='clion'>"+x+ ' + ' + y + ' = ' +resultado+'</div>');
        return resultado;
        break;
    case '200':
        var resultado = parseInt(x)-parseInt(y);
        document.write(x+ ' - ' + y + ' = ' +resultado);
        return resultado;
        break;
    case '300':
        var resultado = parseInt(x)*parseInt(y);
        document.write(x+ ' X ' + y + ' = ' +resultado);
        return resultado;
        break;
    case '400':
        var resultado = parseInt(x)/parseInt(y);

        document.write(x+ ' / ' + y + ' = ' +resultado);
        return resultado;
        break;
    default:    
        document.write('Error!');
        break;
}
    
}

function nivelDeProblema(a){
    var n = parseInt(a);
    var digitoUno = new Array(7);
    var digitoDos = new Array(7);
    var x='';
    var y='';
    for (var i=0 ;i<n;i++){
        if(i==0){
            digitoUno[i]= Math.floor(Math.random() * 10) + 1;
            digitoDos[i]= Math.floor(Math.random() * 10) + 1;   
        }
        else{
            digitoUno[i]= Math.floor(Math.random() * 10);
            digitoDos[i]= Math.floor(Math.random() * 10);   
        }
        digitoUno[i]=digitoUno[i].toString();
        digitoDos[i]=digitoDos[i].toString();
        x = x+digitoUno[i];
        y = y+digitoDos[i];
        
    }  
    topo = tipoDeProblema(queries[1],x,y);
}

function validateSol(a,b){
    if (a == b){
        window.alert('Respuesta correcta! \n');
    }
    else {
        window.alert('Respuesta incorrecta! \n' + 'El resultado correcto es = '+ b +'\n');
    }
}

function refreshion(){
    getElementById('clion').innerText=nivelDeProblema(queries[0])
   
}