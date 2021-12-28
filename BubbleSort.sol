// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

contract Test {
    function bubbleSort() public pure returns(uint[] memory) {
        uint[] memory arr = new uint[](5);
        arr[0] = 1;
        arr[1] = 7;
        arr[2] = 3;
        arr[3] = 9;
        arr[4] = 6;

        uint length = arr.length;

        for(uint i=0; i<length-1; i++) {
            for(uint j=0; j<length-1; j++) {
                if(arr[j] > arr[j+1]) {
                    uint current_value = arr[j];
                    arr[j] = arr[j+1];
                    arr[j+1] = current_value;
                }
            }
        }
        return arr;
    }
}
