// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract Ex4_23 {
    uint public pub = 1;
    uint private pri = 2;
    uint internal inter = 3;
    function funExt() external pure returns(uint){
        return 2;
    }
    function outPutExt() public view returns(uint){
        return this.funExt();
    }
}