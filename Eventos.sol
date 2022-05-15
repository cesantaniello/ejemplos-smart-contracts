// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Eventos {
    uint[] public numeros;
    string public resultado;

    event NotificacionDeCondicion(bool condicion);

    constructor(bool condicion){
        (condicion) ? resultado = "True" : resultado = "False";

        emit NotificacionDeCondicion(condicion);

        for(uint iterador = 0; iterador < 10; iterador++){
            numeros.push(iterador);
        }
    }
}