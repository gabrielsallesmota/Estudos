function Pessoa(){
    this.idade = 0

    const self = this
    setInterval(function(){  //função responsavel por disparar outra função no intervalo passado
        self.idade++
        console.log(self.idade)
    }, 1000)  //1000 é o tempo em milisegundos 
}

new Pessoa