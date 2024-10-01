
//SPDX solidity ^0.8.24;

contract ArrayExample {

    // several ways to initialize an array
    uint256[] public arr;
    uint256[] public arr2 = [1, 2, 3];
    // Fixed sized array, all elements initialize to 0
    uint256[10] public myFixedSizeArr;

    function get(uint256 i) public view returns (uint256) {
        return arr[i];
    }

    // possible to return the entire array. dont do it for dynamic arrays
    function getArray() public view returns (uint256[] memory) {
        return arr;
    }

    function push(uint256 i) public {
        // append, length += 1
        arr.push(i);
    }

    function pop() public {
        arr.pop();
    }

    function getlength() public view returns(uint256) {
        // append, length += 1
        return arr.length;
    }

      function remove(uint256 index) public {
        // Delete does not change the array length.
        // It resets the value at index to it's default value,
        // in this case 0
        delete arr[index];
    }

 function examples() external {
        // create array in memory, only fixed size can be created
        uint256[] memory a = new uint256[](5);
    }


}