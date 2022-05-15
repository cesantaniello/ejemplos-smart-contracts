// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract crowfundingPlatzi{

    //Iniciamos variables
    uint public objetivo = 10 ether;
    uint public balance;
    uint public totalRecaudado;
    bool public estaDisponible;

    address private owner;
    address payable public artista;

    //Iniciamos modificador de acceso
    modifier isOwner(){
        require(owner == msg.sender);
        _;
    }

    //Iniciamos funciones
    function fundProject() public isOwner payable {
        
        require(msg.value > 1 ether); //aportacion minima 1 eth
        
        balance += msg.value;
        
        if(balance >= objetivo){
            payOut();
        }
        
    }
    
    function payOut() private {

        totalRecaudado = balance;
        balance = 0;

        artista.transfer(totalRecaudado);
    }

    function changeProjectState(bool change)public {
        estaDisponible = change;
    }        
}