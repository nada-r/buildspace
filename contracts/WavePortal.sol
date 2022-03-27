// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    address[] arrayLines;

    constructor() {
        console.log("This contract is smarter than Nadar");
    }

    function wave() public {
        uint256 id_wave;
        totalWaves += 1;
        arrayLines.push(msg.sender);
        id_wave = arrayLines.length - 1;
        console.log("%s has waved!", arrayLines[id_wave]);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }
}
