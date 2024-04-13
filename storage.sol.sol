
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract sotorage {

    uint256 Number;  //global variable

    struct Info {
        uint256 Number;
        string name;
    }

    Info[] public info;
    mapping(string => uint256) public nameToFavortieNumber;

    function store(uint256 number) public {
            Number = number;
    }

    function retrieve() public  view returns (uint256){
        return Number;
    }

     function addPerson( string memory _name, uint256 number)
    public {
        info.push(Info(number, _name));
        nameToFavortieNumber[_name] = number;
    }
    }

