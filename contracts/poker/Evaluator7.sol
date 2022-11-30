// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

import {DpTables} from "./DpTables.sol";

import {Flush1} from "./flush/Flush1.sol";
import {Flush2} from "./flush/Flush2.sol";
import {Flush3} from "./flush/Flush3.sol";

import {NoFlush1} from "./noFlush/NoFlush1.sol";
import {NoFlush2} from "./noFlush/NoFlush2.sol";
import {NoFlush3} from "./noFlush/NoFlush3.sol";
import {NoFlush4} from "./noFlush/NoFlush4.sol";
import {NoFlush5} from "./noFlush/NoFlush5.sol";
import {NoFlush6} from "./noFlush/NoFlush6.sol";
import {NoFlush7} from "./noFlush/NoFlush7.sol";
import {NoFlush8} from "./noFlush/NoFlush8.sol";
import {NoFlush9} from "./noFlush/NoFlush9.sol";
import {NoFlush10} from "./noFlush/NoFlush10.sol";
import {NoFlush11} from "./noFlush/NoFlush11.sol";
import {NoFlush12} from "./noFlush/NoFlush12.sol";
import {NoFlush13} from "./noFlush/NoFlush13.sol";
import {NoFlush14} from "./noFlush/NoFlush14.sol";
import {NoFlush15} from "./noFlush/NoFlush15.sol";
import {NoFlush16} from "./noFlush/NoFlush16.sol";
import {NoFlush17} from "./noFlush/NoFlush17.sol";

import "hardhat/console.sol";

contract Evaluator7 {

    address public immutable DP_TABLES;
    address[3] public  FLUSH_ADDRESSES;
    address[17] public NOFLUSH_ADDRESSES;

    uint8 STRAIGHT_FLUSH  = 0;
    uint8 FOUR_OF_A_KIND  = 1;
    uint8 FULL_HOUSE      = 2;
    uint8 FLUSH           = 3;
    uint8 STRAIGHT        = 4;
    uint8 THREE_OF_A_KIND = 5;
    uint8 TWO_PAIR        = 6;
    uint8 ONE_PAIR        = 7;
    uint8 HIGH_CARD       = 8;

    uint[52] public binaries_by_id = [  // 52
        0x1,  0x1,  0x1,  0x1,
        0x2,  0x2,  0x2,  0x2,
        0x4,  0x4,  0x4,  0x4,
        0x8,  0x8,  0x8,  0x8,
        0x10, 0x10, 0x10, 0x10,
        0x20, 0x20, 0x20, 0x20,
        0x40, 0x40, 0x40, 0x40,
        0x80, 0x80, 0x80, 0x80,
        0x100,  0x100,  0x100,  0x100,
        0x200,  0x200,  0x200,  0x200,
        0x400,  0x400,  0x400,  0x400,
        0x800,  0x800,  0x800,  0x800,
        0x1000, 0x1000, 0x1000, 0x1000
    ];

    uint[52] public suitbit_by_id = [ // 52
        0x1,  0x8,  0x40, 0x200,
        0x1,  0x8,  0x40, 0x200,
        0x1,  0x8,  0x40, 0x200,
        0x1,  0x8,  0x40, 0x200,
        0x1,  0x8,  0x40, 0x200,
        0x1,  0x8,  0x40, 0x200,
        0x1,  0x8,  0x40, 0x200,
        0x1,  0x8,  0x40, 0x200,
        0x1,  0x8,  0x40, 0x200,
        0x1,  0x8,  0x40, 0x200,
        0x1,  0x8,  0x40, 0x200,
        0x1,  0x8,  0x40, 0x200,
        0x1,  0x8,  0x40, 0x200
    ];

    constructor(address _dpTables, address[3] memory _flushes, address[17] memory _noflushes)  {
        DP_TABLES = _dpTables;

        for (uint i=0; i<_flushes.length; i++) {
            FLUSH_ADDRESSES[i] = _flushes[i];
        }

        for (uint j=0; j<_noflushes.length; j++) {
            NOFLUSH_ADDRESSES[j] = _noflushes[j];
        }
    }


    function handRankV2(uint[7] calldata cards) public view returns (uint8) {
        return handRank(cards[0], cards[1], cards[2], cards[3], cards[4], cards[5], cards[6]);
    }

    function handRank(uint a, uint b, uint c, uint d, uint e, uint f, uint g) public view returns (uint8) {
        uint val = evaluate(a,b,c,d,e,f,g);

        if (val > 6185) return HIGH_CARD;        // 1277 high card
        if (val > 3325) return ONE_PAIR;        // 2860 one pair
        if (val > 2467) return TWO_PAIR;         //  858 two pair
        if (val > 1609) return THREE_OF_A_KIND;  //  858 three-kind
        if (val > 1599) return STRAIGHT;         //   10 straights
        if (val > 322)  return FLUSH;            // 1277 flushes
        if (val > 166)  return FULL_HOUSE;       //  156 full house
        if (val > 10)   return FOUR_OF_A_KIND;   //  156 four-kind
        return STRAIGHT_FLUSH;                   //   10 straight-flushes
    }

    function evaluate(uint a, uint b, uint c , uint d, uint e, uint f, uint g) public view returns (uint) {
        uint suit_hash = 0;
        uint[4] memory suit_binary = [ uint(0), uint(0), uint(0), uint(0) ]; // 4
        uint8[13] memory quinary = [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]; // 13
        uint hsh;

        suit_hash += suitbit_by_id[a];
        quinary[(a >> 2)]++;
        suit_hash += suitbit_by_id[b];
        quinary[(b >> 2)]++;
        suit_hash += suitbit_by_id[c];
        quinary[(c >> 2)]++;
        suit_hash += suitbit_by_id[d];
        quinary[(d >> 2)]++;
        suit_hash += suitbit_by_id[e];
        quinary[(e >> 2)]++;
        suit_hash += suitbit_by_id[f];
        quinary[(f >> 2)]++;
        suit_hash += suitbit_by_id[g];
        quinary[(g >> 2)]++;

        uint suits = DpTables(DP_TABLES).suits(suit_hash);
        console.log("suits : ", suits);

        if (suits > 0) {
            suit_binary[a & 0x3] |= binaries_by_id[a];
            suit_binary[b & 0x3] |= binaries_by_id[b];
            suit_binary[c & 0x3] |= binaries_by_id[c];
            suit_binary[d & 0x3] |= binaries_by_id[d];
            suit_binary[e & 0x3] |= binaries_by_id[e];
            suit_binary[f & 0x3] |= binaries_by_id[f];
            suit_binary[g & 0x3] |= binaries_by_id[g];

            uint sb = suit_binary[suits - 1];

            if (sb < 3000) {
                return Flush1(FLUSH_ADDRESSES[0]).flush(sb);
            } else if (sb < 6000) {
                return Flush2(FLUSH_ADDRESSES[1]).flush(sb - 3000);
            } else {
                return Flush3(FLUSH_ADDRESSES[2]).flush(sb - 6000);
            }

        }     

        console.log("quinary : ");
        for (uint index = 0; index < 13; index++) {
            console.log(quinary[index]);
        }
    
        hsh = hash_quinary(quinary, 13, 7); // buggy!!
        console.log("hsh : ", hsh);

        if (hsh < 3000) {
            return NoFlush1(NOFLUSH_ADDRESSES[0]).noflush(hsh);
        } else if (hsh < 6000 ) {
            return NoFlush2(NOFLUSH_ADDRESSES[1]).noflush(hsh - 3000);

        } else if (hsh < 9000) {
            return NoFlush3(NOFLUSH_ADDRESSES[2]).noflush(hsh - 6000);

        } else if (hsh < 12000) {
            return NoFlush4(NOFLUSH_ADDRESSES[3]).noflush(hsh - 9000);

        } else if (hsh < 15000) {
            return NoFlush5(NOFLUSH_ADDRESSES[4]).noflush(hsh - 12000);

        } else if (hsh < 18000) {
            return NoFlush6(NOFLUSH_ADDRESSES[5]).noflush(hsh - 15000);

        } else if (hsh < 21000) {
            return NoFlush7(NOFLUSH_ADDRESSES[6]).noflush(hsh - 18000);

        } else if (hsh < 24000) {
            return NoFlush8(NOFLUSH_ADDRESSES[7]).noflush(hsh - 21000);

        } else if (hsh < 27000) {
            return NoFlush9(NOFLUSH_ADDRESSES[8]).noflush(hsh - 24000);

        } else if (hsh < 30000) {
            return NoFlush10(NOFLUSH_ADDRESSES[9]).noflush(hsh - 27000);

        } else if (hsh < 33000) {
            return NoFlush11(NOFLUSH_ADDRESSES[10]).noflush(hsh - 30000);

        } else if (hsh < 36000) {
            return NoFlush12(NOFLUSH_ADDRESSES[11]).noflush(hsh - 33000);

        } else if (hsh < 39000) {
            return NoFlush13(NOFLUSH_ADDRESSES[12]).noflush(hsh - 36000);

        } else if (hsh < 42000) {
            return NoFlush14(NOFLUSH_ADDRESSES[13]).noflush(hsh - 39000);

        } else if (hsh < 45000) {
            return NoFlush15(NOFLUSH_ADDRESSES[14]).noflush(hsh - 42000);

        } else if (hsh < 48000) {
            return NoFlush16(NOFLUSH_ADDRESSES[15]).noflush(hsh - 45000);
        } else {
            return NoFlush17(NOFLUSH_ADDRESSES[16]).noflush(hsh - 48000);
        }

    }

    function hash_quinary(uint8[13] memory q, uint len, uint k) public view returns (uint sum) {

        for (uint i = 0; i < len; i++) {
            sum += DpTables(DP_TABLES).dp(q[i], (len - i - 1), k);

            k -= q[i];

            if (k <= 0) break;
        }
    }
}