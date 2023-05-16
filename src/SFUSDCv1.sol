pragma solidity ^0.8.0;

import "../lib/openzeppelin-contracts/contracts/token/ERC20/extensions/ERC20Wrapper.sol";
import "../lib/openzeppelin-contracts/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";

contract SFUSDCv1 is ERC20Wrapper, ERC20Permit {

    constructor(IERC20 underlyingToken) ERC20Wrapper(underlyingToken) ERC20Permit("SFUSDC V1") ERC20("SFUSDC V1", "SFUSDC") {}

    function decimals() public view override(ERC20, ERC20Wrapper) returns (uint8) {
        return 18;
    }

}
