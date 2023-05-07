
listaDobleEnlazada{
    int dato
    listaDobleEnlazada anterior
    listaDobleEnlazada sig
}


void principal(){
    listaDobleEnlazada lista -> dato = 1
    
}

void agregarSig(listaDobleEnlazada lista,int dato){
    listaDobleEnlazada aux
    aux = lista
    mientras aux->sig!=Null
        aux = lista ->sig
        list = lista->sig
}


void agregarAnterior(listaDobleEnlazada lista,int dato){
    listaDobleEnlazada aux -> dato = dato
    lista -> sig = aux
}

void eliminar(listaDobleEnlazada lista,int dato){

}

void buscar(listaDobleEnlazada lista,int dato){
    while()
}