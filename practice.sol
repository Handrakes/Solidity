// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

/*
contract EX4_1{
    uint public a; //변수명이지만 함수 취급을 받기 때문
    function myFunc() public{ //일종의 transaction???? 우리가 작성한 코드는 블록에 넣어놓고 불러옴
        a = 5; //정해진 account로 계속해서 불러옴, account 안의 either가 줄어듬 단, call은 gas를 사용하지 않음
    }//즉, a는 gas를 사용하지 않지만, transaction 할 때는 gas 를 사용
}
*/
/*
contract EX4_2{
    uint public a = 3;
    //uint public b = 5;
    uint public b = myFunc2();
    function myFunc2() public returns(uint) {
        a = 100;
        return a;
    }
}
*/
/*
contract Ex4_6{
    int a;
    uint b;
    bool c;
    bytes d;
    string e;
    address f;
    function assignment() public view returns(int, uint, bool, bytes memory, string memory, address){
        return (a,b,c,d,e,f);
    }
}
*/
/*
contract Ex4_9{
    uint a = 5;
    function justA() public view returns(uint){ //view 는 변경 불가, 변수 사용은 가능
        return a;
    }
    function prePlus() public returns(uint){
        return ++a; 
    }
    function postPlus() public returns(uint){
        return a++;
    }
}//calldata는 읽기만 하는 공간
*/
/*
contract Ex4_20{
    uint public a = 3;

    function myFunc() external returns(uint, uint){
        uint = b;
        return (a,b);
    }
*/
/*
    function myFunc2() external returns(uint){
        return b;
    }
}
    */

contract Ex4_21 {
    uint public pub = 1;
    uint private pri = 2;
    uint internal inter = 3;
    fuction funExt() external pure returns(uint){
        return 2;
    }
    function outPutExt() public view returns(uint){
        return this.funExt();
    }
}