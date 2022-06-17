package stdgo.crypto.cipher_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _cfbTests : Slice<stdgo.crypto.cipher_test.Cipher_test.T__struct_1> = ((new Slice<stdgo.crypto.cipher_test.Cipher_test.T__struct_1>(((new stdgo.crypto.cipher_test.Cipher_test.T__struct_1(((("2b7e151628aed2a6abf7158809cf4f3c" : GoString))), ((("000102030405060708090a0b0c0d0e0f" : GoString))), ((("6bc1bee22e409f96e93d7e117393172a" : GoString))), ((("3b3fd92eb72dad20333449f8e83cfb4a" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_1)), ((new stdgo.crypto.cipher_test.Cipher_test.T__struct_1(((("2b7e151628aed2a6abf7158809cf4f3c" : GoString))), ((("3B3FD92EB72DAD20333449F8E83CFB4A" : GoString))), ((("ae2d8a571e03ac9c9eb76fac45af8e51" : GoString))), ((("c8a64537a0b3a93fcde3cdad9f1ce58b" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_1)), ((new stdgo.crypto.cipher_test.Cipher_test.T__struct_1(((("2b7e151628aed2a6abf7158809cf4f3c" : GoString))), ((("C8A64537A0B3A93FCDE3CDAD9F1CE58B" : GoString))), ((("30c81c46a35ce411e5fbc1191a0a52ef" : GoString))), ((("26751f67a3cbb140b1808cf187a4f4df" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_1)), ((new stdgo.crypto.cipher_test.Cipher_test.T__struct_1(((("2b7e151628aed2a6abf7158809cf4f3c" : GoString))), ((("26751F67A3CBB140B1808CF187A4F4DF" : GoString))), ((("f69f2445df4f9b17ad2b417be66c3710" : GoString))), ((("c04b05357c5d1c0eeac4c66f9ff7f2e6" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_1))) : Slice<stdgo.crypto.cipher_test.Cipher_test.T__struct_1>));
var _commonInput : Slice<GoUInt8> = ((new Slice<GoUInt8>(
((107 : GoUInt8)),
((193 : GoUInt8)),
((190 : GoUInt8)),
((226 : GoUInt8)),
((46 : GoUInt8)),
((64 : GoUInt8)),
((159 : GoUInt8)),
((150 : GoUInt8)),
((233 : GoUInt8)),
((61 : GoUInt8)),
((126 : GoUInt8)),
((17 : GoUInt8)),
((115 : GoUInt8)),
((147 : GoUInt8)),
((23 : GoUInt8)),
((42 : GoUInt8)),
((174 : GoUInt8)),
((45 : GoUInt8)),
((138 : GoUInt8)),
((87 : GoUInt8)),
((30 : GoUInt8)),
((3 : GoUInt8)),
((172 : GoUInt8)),
((156 : GoUInt8)),
((158 : GoUInt8)),
((183 : GoUInt8)),
((111 : GoUInt8)),
((172 : GoUInt8)),
((69 : GoUInt8)),
((175 : GoUInt8)),
((142 : GoUInt8)),
((81 : GoUInt8)),
((48 : GoUInt8)),
((200 : GoUInt8)),
((28 : GoUInt8)),
((70 : GoUInt8)),
((163 : GoUInt8)),
((92 : GoUInt8)),
((228 : GoUInt8)),
((17 : GoUInt8)),
((229 : GoUInt8)),
((251 : GoUInt8)),
((193 : GoUInt8)),
((25 : GoUInt8)),
((26 : GoUInt8)),
((10 : GoUInt8)),
((82 : GoUInt8)),
((239 : GoUInt8)),
((246 : GoUInt8)),
((159 : GoUInt8)),
((36 : GoUInt8)),
((69 : GoUInt8)),
((223 : GoUInt8)),
((79 : GoUInt8)),
((155 : GoUInt8)),
((23 : GoUInt8)),
((173 : GoUInt8)),
((43 : GoUInt8)),
((65 : GoUInt8)),
((123 : GoUInt8)),
((230 : GoUInt8)),
((108 : GoUInt8)),
((55 : GoUInt8)),
((16 : GoUInt8))) : Slice<GoUInt8>));
var _commonKey128 : Slice<GoUInt8> = ((new Slice<GoUInt8>(
((43 : GoUInt8)),
((126 : GoUInt8)),
((21 : GoUInt8)),
((22 : GoUInt8)),
((40 : GoUInt8)),
((174 : GoUInt8)),
((210 : GoUInt8)),
((166 : GoUInt8)),
((171 : GoUInt8)),
((247 : GoUInt8)),
((21 : GoUInt8)),
((136 : GoUInt8)),
((9 : GoUInt8)),
((207 : GoUInt8)),
((79 : GoUInt8)),
((60 : GoUInt8))) : Slice<GoUInt8>));
var _commonKey192 : Slice<GoUInt8> = ((new Slice<GoUInt8>(
((142 : GoUInt8)),
((115 : GoUInt8)),
((176 : GoUInt8)),
((247 : GoUInt8)),
((218 : GoUInt8)),
((14 : GoUInt8)),
((100 : GoUInt8)),
((82 : GoUInt8)),
((200 : GoUInt8)),
((16 : GoUInt8)),
((243 : GoUInt8)),
((43 : GoUInt8)),
((128 : GoUInt8)),
((144 : GoUInt8)),
((121 : GoUInt8)),
((229 : GoUInt8)),
((98 : GoUInt8)),
((248 : GoUInt8)),
((234 : GoUInt8)),
((210 : GoUInt8)),
((82 : GoUInt8)),
((44 : GoUInt8)),
((107 : GoUInt8)),
((123 : GoUInt8))) : Slice<GoUInt8>));
var _commonKey256 : Slice<GoUInt8> = ((new Slice<GoUInt8>(
((96 : GoUInt8)),
((61 : GoUInt8)),
((235 : GoUInt8)),
((16 : GoUInt8)),
((21 : GoUInt8)),
((202 : GoUInt8)),
((113 : GoUInt8)),
((190 : GoUInt8)),
((43 : GoUInt8)),
((115 : GoUInt8)),
((174 : GoUInt8)),
((240 : GoUInt8)),
((133 : GoUInt8)),
((125 : GoUInt8)),
((119 : GoUInt8)),
((129 : GoUInt8)),
((31 : GoUInt8)),
((53 : GoUInt8)),
((44 : GoUInt8)),
((7 : GoUInt8)),
((59 : GoUInt8)),
((97 : GoUInt8)),
((8 : GoUInt8)),
((215 : GoUInt8)),
((45 : GoUInt8)),
((152 : GoUInt8)),
((16 : GoUInt8)),
((163 : GoUInt8)),
((9 : GoUInt8)),
((20 : GoUInt8)),
((223 : GoUInt8)),
((244 : GoUInt8))) : Slice<GoUInt8>));
var _commonIV : Slice<GoUInt8> = ((new Slice<GoUInt8>(
((0 : GoUInt8)),
((1 : GoUInt8)),
((2 : GoUInt8)),
((3 : GoUInt8)),
((4 : GoUInt8)),
((5 : GoUInt8)),
((6 : GoUInt8)),
((7 : GoUInt8)),
((8 : GoUInt8)),
((9 : GoUInt8)),
((10 : GoUInt8)),
((11 : GoUInt8)),
((12 : GoUInt8)),
((13 : GoUInt8)),
((14 : GoUInt8)),
((15 : GoUInt8))) : Slice<GoUInt8>));
var _cbcAESTests : Slice<stdgo.crypto.cipher_test.Cipher_test.T_ofbTest> = ((new Slice<stdgo.crypto.cipher_test.Cipher_test.T_ofbTest>(((new stdgo.crypto.cipher_test.Cipher_test.T_ofbTest(((("CBC-AES128" : GoString))), _commonKey128, _commonIV, _commonInput, ((new Slice<GoUInt8>(
((118 : GoUInt8)),
((73 : GoUInt8)),
((171 : GoUInt8)),
((172 : GoUInt8)),
((129 : GoUInt8)),
((25 : GoUInt8)),
((178 : GoUInt8)),
((70 : GoUInt8)),
((206 : GoUInt8)),
((233 : GoUInt8)),
((142 : GoUInt8)),
((155 : GoUInt8)),
((18 : GoUInt8)),
((233 : GoUInt8)),
((25 : GoUInt8)),
((125 : GoUInt8)),
((80 : GoUInt8)),
((134 : GoUInt8)),
((203 : GoUInt8)),
((155 : GoUInt8)),
((80 : GoUInt8)),
((114 : GoUInt8)),
((25 : GoUInt8)),
((238 : GoUInt8)),
((149 : GoUInt8)),
((219 : GoUInt8)),
((17 : GoUInt8)),
((58 : GoUInt8)),
((145 : GoUInt8)),
((118 : GoUInt8)),
((120 : GoUInt8)),
((178 : GoUInt8)),
((115 : GoUInt8)),
((190 : GoUInt8)),
((214 : GoUInt8)),
((184 : GoUInt8)),
((227 : GoUInt8)),
((193 : GoUInt8)),
((116 : GoUInt8)),
((59 : GoUInt8)),
((113 : GoUInt8)),
((22 : GoUInt8)),
((230 : GoUInt8)),
((158 : GoUInt8)),
((34 : GoUInt8)),
((34 : GoUInt8)),
((149 : GoUInt8)),
((22 : GoUInt8)),
((63 : GoUInt8)),
((241 : GoUInt8)),
((202 : GoUInt8)),
((161 : GoUInt8)),
((104 : GoUInt8)),
((31 : GoUInt8)),
((172 : GoUInt8)),
((9 : GoUInt8)),
((18 : GoUInt8)),
((14 : GoUInt8)),
((202 : GoUInt8)),
((48 : GoUInt8)),
((117 : GoUInt8)),
((134 : GoUInt8)),
((225 : GoUInt8)),
((167 : GoUInt8))) : Slice<GoUInt8>))) : stdgo.crypto.cipher_test.Cipher_test.T_ofbTest)), ((new stdgo.crypto.cipher_test.Cipher_test.T_ofbTest(((("CBC-AES192" : GoString))), _commonKey192, _commonIV, _commonInput, ((new Slice<GoUInt8>(
((79 : GoUInt8)),
((2 : GoUInt8)),
((29 : GoUInt8)),
((178 : GoUInt8)),
((67 : GoUInt8)),
((188 : GoUInt8)),
((99 : GoUInt8)),
((61 : GoUInt8)),
((113 : GoUInt8)),
((120 : GoUInt8)),
((24 : GoUInt8)),
((58 : GoUInt8)),
((159 : GoUInt8)),
((160 : GoUInt8)),
((113 : GoUInt8)),
((232 : GoUInt8)),
((180 : GoUInt8)),
((217 : GoUInt8)),
((173 : GoUInt8)),
((169 : GoUInt8)),
((173 : GoUInt8)),
((125 : GoUInt8)),
((237 : GoUInt8)),
((244 : GoUInt8)),
((229 : GoUInt8)),
((231 : GoUInt8)),
((56 : GoUInt8)),
((118 : GoUInt8)),
((63 : GoUInt8)),
((105 : GoUInt8)),
((20 : GoUInt8)),
((90 : GoUInt8)),
((87 : GoUInt8)),
((27 : GoUInt8)),
((36 : GoUInt8)),
((32 : GoUInt8)),
((18 : GoUInt8)),
((251 : GoUInt8)),
((122 : GoUInt8)),
((224 : GoUInt8)),
((127 : GoUInt8)),
((169 : GoUInt8)),
((186 : GoUInt8)),
((172 : GoUInt8)),
((61 : GoUInt8)),
((241 : GoUInt8)),
((2 : GoUInt8)),
((224 : GoUInt8)),
((8 : GoUInt8)),
((176 : GoUInt8)),
((226 : GoUInt8)),
((121 : GoUInt8)),
((136 : GoUInt8)),
((89 : GoUInt8)),
((136 : GoUInt8)),
((129 : GoUInt8)),
((217 : GoUInt8)),
((32 : GoUInt8)),
((169 : GoUInt8)),
((230 : GoUInt8)),
((79 : GoUInt8)),
((86 : GoUInt8)),
((21 : GoUInt8)),
((205 : GoUInt8))) : Slice<GoUInt8>))) : stdgo.crypto.cipher_test.Cipher_test.T_ofbTest)), ((new stdgo.crypto.cipher_test.Cipher_test.T_ofbTest(((("CBC-AES256" : GoString))), _commonKey256, _commonIV, _commonInput, ((new Slice<GoUInt8>(
((245 : GoUInt8)),
((140 : GoUInt8)),
((76 : GoUInt8)),
((4 : GoUInt8)),
((214 : GoUInt8)),
((229 : GoUInt8)),
((241 : GoUInt8)),
((186 : GoUInt8)),
((119 : GoUInt8)),
((158 : GoUInt8)),
((171 : GoUInt8)),
((251 : GoUInt8)),
((95 : GoUInt8)),
((123 : GoUInt8)),
((251 : GoUInt8)),
((214 : GoUInt8)),
((156 : GoUInt8)),
((252 : GoUInt8)),
((78 : GoUInt8)),
((150 : GoUInt8)),
((126 : GoUInt8)),
((219 : GoUInt8)),
((128 : GoUInt8)),
((141 : GoUInt8)),
((103 : GoUInt8)),
((159 : GoUInt8)),
((119 : GoUInt8)),
((123 : GoUInt8)),
((198 : GoUInt8)),
((112 : GoUInt8)),
((44 : GoUInt8)),
((125 : GoUInt8)),
((57 : GoUInt8)),
((242 : GoUInt8)),
((51 : GoUInt8)),
((105 : GoUInt8)),
((169 : GoUInt8)),
((217 : GoUInt8)),
((186 : GoUInt8)),
((207 : GoUInt8)),
((165 : GoUInt8)),
((48 : GoUInt8)),
((226 : GoUInt8)),
((99 : GoUInt8)),
((4 : GoUInt8)),
((35 : GoUInt8)),
((20 : GoUInt8)),
((97 : GoUInt8)),
((178 : GoUInt8)),
((235 : GoUInt8)),
((5 : GoUInt8)),
((226 : GoUInt8)),
((195 : GoUInt8)),
((155 : GoUInt8)),
((233 : GoUInt8)),
((252 : GoUInt8)),
((218 : GoUInt8)),
((108 : GoUInt8)),
((25 : GoUInt8)),
((7 : GoUInt8)),
((140 : GoUInt8)),
((106 : GoUInt8)),
((157 : GoUInt8)),
((27 : GoUInt8))) : Slice<GoUInt8>))) : stdgo.crypto.cipher_test.Cipher_test.T_ofbTest))) : Slice<stdgo.crypto.cipher_test.Cipher_test.T_ofbTest>));
var _commonCounter : Slice<GoUInt8> = ((new Slice<GoUInt8>(
((240 : GoUInt8)),
((241 : GoUInt8)),
((242 : GoUInt8)),
((243 : GoUInt8)),
((244 : GoUInt8)),
((245 : GoUInt8)),
((246 : GoUInt8)),
((247 : GoUInt8)),
((248 : GoUInt8)),
((249 : GoUInt8)),
((250 : GoUInt8)),
((251 : GoUInt8)),
((252 : GoUInt8)),
((253 : GoUInt8)),
((254 : GoUInt8)),
((255 : GoUInt8))) : Slice<GoUInt8>));
var _ctrAESTests : Slice<stdgo.crypto.cipher_test.Cipher_test.T_ofbTest> = ((new Slice<stdgo.crypto.cipher_test.Cipher_test.T_ofbTest>(((new stdgo.crypto.cipher_test.Cipher_test.T_ofbTest(((("CTR-AES128" : GoString))), _commonKey128, _commonCounter, _commonInput, ((new Slice<GoUInt8>(
((135 : GoUInt8)),
((77 : GoUInt8)),
((97 : GoUInt8)),
((145 : GoUInt8)),
((182 : GoUInt8)),
((32 : GoUInt8)),
((227 : GoUInt8)),
((38 : GoUInt8)),
((27 : GoUInt8)),
((239 : GoUInt8)),
((104 : GoUInt8)),
((100 : GoUInt8)),
((153 : GoUInt8)),
((13 : GoUInt8)),
((182 : GoUInt8)),
((206 : GoUInt8)),
((152 : GoUInt8)),
((6 : GoUInt8)),
((246 : GoUInt8)),
((107 : GoUInt8)),
((121 : GoUInt8)),
((112 : GoUInt8)),
((253 : GoUInt8)),
((255 : GoUInt8)),
((134 : GoUInt8)),
((23 : GoUInt8)),
((24 : GoUInt8)),
((123 : GoUInt8)),
((185 : GoUInt8)),
((255 : GoUInt8)),
((253 : GoUInt8)),
((255 : GoUInt8)),
((90 : GoUInt8)),
((228 : GoUInt8)),
((223 : GoUInt8)),
((62 : GoUInt8)),
((219 : GoUInt8)),
((213 : GoUInt8)),
((211 : GoUInt8)),
((94 : GoUInt8)),
((91 : GoUInt8)),
((79 : GoUInt8)),
((9 : GoUInt8)),
((2 : GoUInt8)),
((13 : GoUInt8)),
((176 : GoUInt8)),
((62 : GoUInt8)),
((171 : GoUInt8)),
((30 : GoUInt8)),
((3 : GoUInt8)),
((29 : GoUInt8)),
((218 : GoUInt8)),
((47 : GoUInt8)),
((190 : GoUInt8)),
((3 : GoUInt8)),
((209 : GoUInt8)),
((121 : GoUInt8)),
((33 : GoUInt8)),
((112 : GoUInt8)),
((160 : GoUInt8)),
((243 : GoUInt8)),
((0 : GoUInt8)),
((156 : GoUInt8)),
((238 : GoUInt8))) : Slice<GoUInt8>))) : stdgo.crypto.cipher_test.Cipher_test.T_ofbTest)), ((new stdgo.crypto.cipher_test.Cipher_test.T_ofbTest(((("CTR-AES192" : GoString))), _commonKey192, _commonCounter, _commonInput, ((new Slice<GoUInt8>(
((26 : GoUInt8)),
((188 : GoUInt8)),
((147 : GoUInt8)),
((36 : GoUInt8)),
((23 : GoUInt8)),
((82 : GoUInt8)),
((28 : GoUInt8)),
((162 : GoUInt8)),
((79 : GoUInt8)),
((43 : GoUInt8)),
((4 : GoUInt8)),
((89 : GoUInt8)),
((254 : GoUInt8)),
((126 : GoUInt8)),
((110 : GoUInt8)),
((11 : GoUInt8)),
((9 : GoUInt8)),
((3 : GoUInt8)),
((57 : GoUInt8)),
((236 : GoUInt8)),
((10 : GoUInt8)),
((166 : GoUInt8)),
((250 : GoUInt8)),
((239 : GoUInt8)),
((213 : GoUInt8)),
((204 : GoUInt8)),
((194 : GoUInt8)),
((198 : GoUInt8)),
((244 : GoUInt8)),
((206 : GoUInt8)),
((142 : GoUInt8)),
((148 : GoUInt8)),
((30 : GoUInt8)),
((54 : GoUInt8)),
((178 : GoUInt8)),
((107 : GoUInt8)),
((209 : GoUInt8)),
((235 : GoUInt8)),
((198 : GoUInt8)),
((112 : GoUInt8)),
((209 : GoUInt8)),
((189 : GoUInt8)),
((29 : GoUInt8)),
((102 : GoUInt8)),
((86 : GoUInt8)),
((32 : GoUInt8)),
((171 : GoUInt8)),
((247 : GoUInt8)),
((79 : GoUInt8)),
((120 : GoUInt8)),
((167 : GoUInt8)),
((246 : GoUInt8)),
((210 : GoUInt8)),
((152 : GoUInt8)),
((9 : GoUInt8)),
((88 : GoUInt8)),
((90 : GoUInt8)),
((151 : GoUInt8)),
((218 : GoUInt8)),
((236 : GoUInt8)),
((88 : GoUInt8)),
((198 : GoUInt8)),
((176 : GoUInt8)),
((80 : GoUInt8))) : Slice<GoUInt8>))) : stdgo.crypto.cipher_test.Cipher_test.T_ofbTest)), ((new stdgo.crypto.cipher_test.Cipher_test.T_ofbTest(((("CTR-AES256" : GoString))), _commonKey256, _commonCounter, _commonInput, ((new Slice<GoUInt8>(
((96 : GoUInt8)),
((30 : GoUInt8)),
((195 : GoUInt8)),
((19 : GoUInt8)),
((119 : GoUInt8)),
((87 : GoUInt8)),
((137 : GoUInt8)),
((165 : GoUInt8)),
((183 : GoUInt8)),
((167 : GoUInt8)),
((245 : GoUInt8)),
((4 : GoUInt8)),
((187 : GoUInt8)),
((243 : GoUInt8)),
((210 : GoUInt8)),
((40 : GoUInt8)),
((244 : GoUInt8)),
((67 : GoUInt8)),
((227 : GoUInt8)),
((202 : GoUInt8)),
((77 : GoUInt8)),
((98 : GoUInt8)),
((181 : GoUInt8)),
((154 : GoUInt8)),
((202 : GoUInt8)),
((132 : GoUInt8)),
((233 : GoUInt8)),
((144 : GoUInt8)),
((202 : GoUInt8)),
((202 : GoUInt8)),
((245 : GoUInt8)),
((197 : GoUInt8)),
((43 : GoUInt8)),
((9 : GoUInt8)),
((48 : GoUInt8)),
((218 : GoUInt8)),
((162 : GoUInt8)),
((61 : GoUInt8)),
((233 : GoUInt8)),
((76 : GoUInt8)),
((232 : GoUInt8)),
((112 : GoUInt8)),
((23 : GoUInt8)),
((186 : GoUInt8)),
((45 : GoUInt8)),
((132 : GoUInt8)),
((152 : GoUInt8)),
((141 : GoUInt8)),
((223 : GoUInt8)),
((201 : GoUInt8)),
((197 : GoUInt8)),
((141 : GoUInt8)),
((182 : GoUInt8)),
((122 : GoUInt8)),
((173 : GoUInt8)),
((166 : GoUInt8)),
((19 : GoUInt8)),
((194 : GoUInt8)),
((221 : GoUInt8)),
((8 : GoUInt8)),
((69 : GoUInt8)),
((121 : GoUInt8)),
((65 : GoUInt8)),
((166 : GoUInt8))) : Slice<GoUInt8>))) : stdgo.crypto.cipher_test.Cipher_test.T_ofbTest))) : Slice<stdgo.crypto.cipher_test.Cipher_test.T_ofbTest>));
var _aesGCMTests : Slice<stdgo.crypto.cipher_test.Cipher_test.T__struct_2> = ((new Slice<stdgo.crypto.cipher_test.Cipher_test.T__struct_2>(
((new stdgo.crypto.cipher_test.Cipher_test.T__struct_2(((("11754cd72aec309bf52f7687212e8957" : GoString))), ((("3c819d9a9bed087615030b65" : GoString))), ((("" : GoString))), ((("" : GoString))), ((("250327c674aaf477aef2675748cf6971" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_2)),
((new stdgo.crypto.cipher_test.Cipher_test.T__struct_2(((("ca47248ac0b6f8372a97ac43508308ed" : GoString))), ((("ffd2b598feabc9019262d2be" : GoString))), ((("" : GoString))), ((("" : GoString))), ((("60d20404af527d248d893ae495707d1a" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_2)),
((new stdgo.crypto.cipher_test.Cipher_test.T__struct_2(((("fbe3467cc254f81be8e78d765a2e6333" : GoString))), ((("c6697351ff4aec29cdbaabf2" : GoString))), ((("" : GoString))), ((("67" : GoString))), ((("3659cdc25288bf499ac736c03bfc1159" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_2)),
((new stdgo.crypto.cipher_test.Cipher_test.T__struct_2(((("8a7f9d80d08ad0bd5a20fb689c88f9fc" : GoString))), ((("88b7b27d800937fda4f47301" : GoString))), ((("" : GoString))), ((("50edd0503e0d7b8c91608eb5a1" : GoString))), ((("ed6f65322a4740011f91d2aae22dd44e" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_2)),
((new stdgo.crypto.cipher_test.Cipher_test.T__struct_2(((("051758e95ed4abb2cdc69bb454110e82" : GoString))), ((("c99a66320db73158a35a255d" : GoString))), ((("" : GoString))), ((("67c6697351ff4aec29cdbaabf2fbe3467cc254f81be8e78d765a2e63339f" : GoString))), ((("6ce77f1a5616c505b6aec09420234036" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_2)),
((new stdgo.crypto.cipher_test.Cipher_test.T__struct_2(((("77be63708971c4e240d1cb79e8d77feb" : GoString))), ((("e0e00f19fed7ba0136a797f3" : GoString))), ((("" : GoString))), ((("7a43ec1d9c0a5a78a0b16533a6213cab" : GoString))), ((("209fcc8d3675ed938e9c7166709dd946" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_2)),
((new stdgo.crypto.cipher_test.Cipher_test.T__struct_2(((("7680c5d3ca6154758e510f4d25b98820" : GoString))), ((("f8f105f9c3df4965780321f8" : GoString))), ((("" : GoString))), ((("c94c410194c765e3dcc7964379758ed3" : GoString))), ((("94dca8edfcf90bb74b153c8d48a17930" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_2)),
((new stdgo.crypto.cipher_test.Cipher_test.T__struct_2(((("7fddb57453c241d03efbed3ac44e371c" : GoString))), ((("ee283a3fc75575e33efd4887" : GoString))), ((("d5de42b461646c255c87bd2962d3b9a2" : GoString))), ((("" : GoString))), ((("2ccda4a5415cb91e135c2a0f78c9b2fdb36d1df9b9d5e596f83e8b7f52971cb3" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_2)),
((new stdgo.crypto.cipher_test.Cipher_test.T__struct_2(((("ab72c77b97cb5fe9a382d9fe81ffdbed" : GoString))), ((("54cc7dc2c37ec006bcc6d1da" : GoString))), ((("007c5e5b3e59df24a7c355584fc1518d" : GoString))), ((("" : GoString))), ((("0e1bde206a07a9c2c1b65300f8c649972b4401346697138c7a4891ee59867d0c" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_2)),
((new stdgo.crypto.cipher_test.Cipher_test.T__struct_2(((("fe47fcce5fc32665d2ae399e4eec72ba" : GoString))), ((("5adb9609dbaeb58cbd6e7275" : GoString))), ((("7c0e88c88899a779228465074797cd4c2e1498d259b54390b85e3eef1c02df60e743f1b840382c4bccaf3bafb4ca8429bea063" : GoString))), ((("88319d6e1d3ffa5f987199166c8a9b56c2aeba5a" : GoString))), ((("98f4826f05a265e6dd2be82db241c0fbbbf9ffb1c173aa83964b7cf5393043736365253ddbc5db8778371495da76d269e5db3e291ef1982e4defedaa2249f898556b47" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_2)),
((new stdgo.crypto.cipher_test.Cipher_test.T__struct_2(((("ec0c2ba17aa95cd6afffe949da9cc3a8" : GoString))), ((("296bce5b50b7d66096d627ef" : GoString))), ((("b85b3753535b825cbe5f632c0b843c741351f18aa484281aebec2f45bb9eea2d79d987b764b9611f6c0f8641843d5d58f3a242" : GoString))), ((("f8d00f05d22bf68599bcdeb131292ad6e2df5d14" : GoString))), ((("a7443d31c26bdf2a1c945e29ee4bd344a99cfaf3aa71f8b3f191f83c2adfc7a07162995506fde6309ffc19e716eddf1a828c5a890147971946b627c40016da1ecf3e77" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_2)),
((new stdgo.crypto.cipher_test.Cipher_test.T__struct_2(((("2c1f21cf0f6fb3661943155c3e3d8492" : GoString))), ((("23cb5ff362e22426984d1907" : GoString))), ((("42f758836986954db44bf37c6ef5e4ac0adaf38f27252a1b82d02ea949c8a1a2dbc0d68b5615ba7c1220ff6510e259f06655d8" : GoString))), ((("5d3624879d35e46849953e45a32a624d6a6c536ed9857c613b572b0333e701557a713e3f010ecdf9a6bd6c9e3e44b065208645aff4aabee611b391528514170084ccf587177f4488f33cfb5e979e42b6e1cfc0a60238982a7aec" : GoString))), ((("81824f0e0d523db30d3da369fdc0d60894c7a0a20646dd015073ad2732bd989b14a222b6ad57af43e1895df9dca2a5344a62cc57a3ee28136e94c74838997ae9823f3a" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_2)),
((new stdgo.crypto.cipher_test.Cipher_test.T__struct_2(((("d9f7d2411091f947b4d6f1e2d1f0fb2e" : GoString))), ((("e1934f5db57cc983e6b180e7" : GoString))), ((("73ed042327f70fe9c572a61545eda8b2a0c6e1d6c291ef19248e973aee6c312012f490c2c6f6166f4a59431e182663fcaea05a" : GoString))), ((("0a8a18a7150e940c3d87b38e73baee9a5c049ee21795663e264b694a949822b639092d0e67015e86363583fcf0ca645af9f43375f05fdb4ce84f411dcbca73c2220dea03a20115d2e51398344b16bee1ed7c499b353d6c597af8" : GoString))), ((("aaadbd5c92e9151ce3db7210b8714126b73e43436d242677afa50384f2149b831f1d573c7891c2a91fbc48db29967ec9542b2321b51ca862cb637cdd03b99a0f93b134" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_2)),
((new stdgo.crypto.cipher_test.Cipher_test.T__struct_2(((("fe9bb47deb3a61e423c2231841cfd1fb" : GoString))), ((("4d328eb776f500a2f7fb47aa" : GoString))), ((("f1cc3818e421876bb6b8bbd6c9" : GoString))), ((("" : GoString))), ((("b88c5c1977b35b517b0aeae96743fd4727fe5cdb4b5b42818dea7ef8c9" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_2)),
((new stdgo.crypto.cipher_test.Cipher_test.T__struct_2(((("6703df3701a7f54911ca72e24dca046a" : GoString))), ((("12823ab601c350ea4bc2488c" : GoString))), ((("793cd125b0b84a043e3ac67717" : GoString))), ((("" : GoString))), ((("b2051c80014f42f08735a7b0cd38e6bcd29962e5f2c13626b85a877101" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_2)),
((new stdgo.crypto.cipher_test.Cipher_test.T__struct_2(((("1672c3537afa82004c6b8a46f6f0d026" : GoString))), ((("05" : GoString))), ((("" : GoString))), ((("" : GoString))), ((("8e2ad721f9455f74d8b53d3141f27e8e" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_2)),
((new stdgo.crypto.cipher_test.Cipher_test.T__struct_2(((("9a4fea86a621a91ab371e492457796c0" : GoString))), ((("75" : GoString))), ((("ca6131faf0ff210e4e693d6c31c109fc5b6f54224eb120f37de31dc59ec669b6" : GoString))), ((("4f6e2585c161f05a9ae1f2f894e9f0ab52b45d0f" : GoString))), ((("5698c0a384241d30004290aac56bb3ece6fe8eacc5c4be98954deb9c3ff6aebf5d50e1af100509e1fba2a5e8a0af9670" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_2)),
((new stdgo.crypto.cipher_test.Cipher_test.T__struct_2(((("d0f1f4defa1e8c08b4b26d576392027c" : GoString))), ((("42b4f01eb9f5a1ea5b1eb73b0fb0baed54f387ecaa0393c7d7dffc6af50146ecc021abf7eb9038d4303d91f8d741a11743166c0860208bcc02c6258fd9511a2fa626f96d60b72fcff773af4e88e7a923506e4916ecbd814651e9f445adef4ad6a6b6c7290cc13b956130eef5b837c939fcac0cbbcc9656cd75b13823ee5acdac" : GoString))), ((("" : GoString))), ((("" : GoString))), ((("7ab49b57ddf5f62c427950111c5c4f0d" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_2)),
((new stdgo.crypto.cipher_test.Cipher_test.T__struct_2(((("4a0c00a3d284dea9d4bf8b8dde86685e" : GoString))), ((("f8cbe82588e784bcacbe092cd9089b51e01527297f635bf294b3aa787d91057ef23869789698ac960707857f163ecb242135a228ad93964f5dc4a4d7f88fd7b3b07dd0a5b37f9768fb05a523639f108c34c661498a56879e501a2321c8a4a94d7e1b89db255ac1f685e185263368e99735ebe62a7f2931b47282be8eb165e4d7" : GoString))), ((("6d4bf87640a6a48a50d28797b7" : GoString))), ((("8d8c7ffc55086d539b5a8f0d1232654c" : GoString))), ((("0d803ec309482f35b8e6226f2b56303239298e06b281c2d51aaba3c125" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_2)),
((new stdgo.crypto.cipher_test.Cipher_test.T__struct_2(((("0e18a844ac5bf38e4cd72d9b0942e506" : GoString))), ((("0870d4b28a2954489a0abcd5" : GoString))), ((("67c6697351ff4aec29cdbaabf2fbe3467cc254f81be8e78d765a2e63339fc99a66320db73158a35a255d051758e95ed4abb2cdc69bb454110e827441213ddc8770e93ea141e1fc673e017e97eadc6b968f385c2aecb03bfb32af3c54ec18db5c021afe43fbfaaa3afb29d1e6053c7c9475d8be6189f95cbba8990f95b1ebf1b3" : GoString))), ((("05eff700e9a13ae5ca0bcbd0484764bd1f231ea81c7b64c514735ac55e4b79633b706424119e09dcaad4acf21b10af3b33cde3504847155cbb6f2219ba9b7df50be11a1c7f23f829f8a41b13b5ca4ee8983238e0794d3d34bc5f4e77facb6c05ac86212baa1a55a2be70b5733b045cd33694b3afe2f0e49e4f321549fd824ea9" : GoString))), ((("cace28f4976afd72e3c5128167eb788fbf6634dda0a2f53148d00f6fa557f5e9e8f736c12e450894af56cb67f7d99e1027258c8571bd91ee3b7360e0d508aa1f382411a16115f9c05251cc326d4016f62e0eb8151c048465b0c6c8ff12558d43310e18b2cb1889eec91557ce21ba05955cf4c1d4847aadfb1b0a83f3a3b82b7efa62a5f03c5d6eda381a85dd78dbc55c" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_2)),
((new stdgo.crypto.cipher_test.Cipher_test.T__struct_2(((("1f6c3a3bc0542aabba4ef8f6c7169e73" : GoString))), ((("f3584606472b260e0dd2ebb2" : GoString))), ((("67c6697351ff4aec29cdbaabf2fbe3467cc254f81be8e78d765a2e63339fc99a66320db73158a35a255d051758e95ed4abb2cdc69bb454110e827441213ddc8770e93ea141e1fc673e017e97eadc6b968f385c2aecb03bfb32af3c54ec18db5c021afe43fbfaaa3afb29d1e6053c7c9475d8be6189f95cbba8990f95b1ebf1b305eff700e9a13ae5ca0bcbd0484764bd1f231ea81c7b64c514735ac55e4b79633b706424119e09dcaad4acf21b10af3b33cde3504847155cbb6f2219ba9b7df50be11a1c7f23f829f8a41b13b5ca4ee8983238e0794d3d34bc5f4e77facb6c05ac86212baa1a55a2be70b5733b045cd33694b3afe2f0e49e4f321549fd824ea90870d4b28a2954489a0abcd50e18a844ac5bf38e4cd72d9b0942e506c433afcda3847f2dadd47647de321cec4ac430f62023856cfbb20704f4ec0bb920ba86c33e05f1ecd96733b79950a3e314d3d934f75ea0f210a8f6059401beb4bc4478fa4969e623d01ada696a7e4c7e5125b34884533a94fb319990325744ee9bbce9e525cf08f5e9e25e5360aad2b2d085fa54d835e8d466826498d9a8877565705a8a3f62802944de7ca5894e5759d351adac869580ec17e485f18c0c66f17cc07cbb22fce466da610b63af62bc83b4692f3affaf271693ac071fb86d11342d8def4f89d4b66335c1c7e4248367d8ed9612ec453902d8e50af89d7709d1a596c1f41f" : GoString))), ((("95aa82ca6c49ae90cd1668baac7aa6f2b4a8ca99b2c2372acb08cf61c9c3805e6e0328da4cd76a19edd2d3994c798b0022569ad418d1fee4d9cd45a391c601ffc92ad91501432fee150287617c13629e69fc7281cd7165a63eab49cf714bce3a75a74f76ea7e64ff81eb61fdfec39b67bf0de98c7e4e32bdf97c8c6ac75ba43c02f4b2ed7216ecf3014df000108b67cf99505b179f8ed4980a6103d1bca70dbe9bbfab0ed59801d6e5f2d6f67d3ec5168e212e2daf02c6b963c98a1f7097de0c56891a2b211b01070dd8fd8b16c2a1a4e3cfd292d2984b3561d555d16c33ddc2bcf7edde13efe520c7e2abdda44d81881c531aeeeb66244c3b791ea8acfb6a68" : GoString))), ((("55864065117e07650ca650a0f0d9ef4b02aee7c58928462fddb49045bf85355b4653fa26158210a7f3ef5b3ca48612e8b7adf5c025c1b821960af770d935df1c9a1dd25077d6b1c7f937b2e20ce981b07980880214698f3fad72fa370b3b7da257ce1d0cf352bc5304fada3e0f8927bd4e5c1abbffa563bdedcb567daa64faaed748cb361732200ba3506836a3c1c82aafa14c76dc07f6c4277ff2c61325f91fdbd6c1883e745fcaadd5a6d692eeaa5ad56eead6a9d74a595d22757ed89532a4b8831e2b9e2315baea70a9b95d228f09d491a5ed5ab7076766703457e3159bbb9b17b329525669863153079448c68cd2f200c0be9d43061a60639cb59d50993d276c05caaa565db8ce633b2673e4012bebbca02b1a64d779d04066f3e949ece173825885ec816468c819a8129007cc05d8785c48077d09eb1abcba14508dde85a6f16a744bc95faef24888d53a8020515ab20307efaecbdf143a26563c67989bceedc2d6d2bb9699bb6c615d93767e4158c1124e3b6c723aaa47796e59a60d3696cd85adfae9a62f2c02c22009f80ed494bdc587f31dd892c253b5c6d6b7db078fa72d23474ee54f8144d6561182d71c862941dbc0b2cb37a4d4b23cbad5637e6be901cc73f16d5aec39c60dddee631511e57b47520b61ae1892d2d1bd2b486e30faec892f171b6de98d96108016fac805604761f8e74742b3bb7dc8a290a46bf697c3e4446e6e65832cbae7cf1aaad1" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_2)),
((new stdgo.crypto.cipher_test.Cipher_test.T__struct_2(((("0795d80bc7f40f4d41c280271a2e4f7f" : GoString))), ((("ff824c906594aff365d3cb1f" : GoString))), ((("1ad4e74d127f935beee57cff920665babe7ce56227377afe570ba786193ded3412d4812453157f42fafc418c02a746c1232c234a639d49baa8f041c12e2ef540027764568ce49886e0d913e28059a3a485c6eee96337a30b28e4cd5612c2961539fa6bc5de034cbedc5fa15db844013e0bef276e27ca7a4faf47a5c1093bd643354108144454d221b3737e6cb87faac36ed131959babe44af2890cfcc4e23ffa24470e689ce0894f5407bb0c8665cff536008ad2ac6f1c9ef8289abd0bd9b72f21c597bda5210cf928c805af2dd4a464d52e36819d521f967bba5386930ab5b4cf4c71746d7e6e964673457348e9d71d170d9eb560bd4bdb779e610ba816bf776231ebd0af5966f5cdab6815944032ab4dd060ad8dab880549e910f1ffcf6862005432afad" : GoString))), ((("98a47a430d8fd74dc1829a91e3481f8ed024d8ba34c9b903321b04864db333e558ae28653dffb2" : GoString))), ((("3b8f91443480e647473a0a0b03d571c622b7e70e4309a02c9bb7980053010d865e6aec161354dc9f481b2cd5213e09432b57ec4e58fbd0a8549dd15c8c4e74a6529f75fad0ce5a9e20e2beeb2f91eb638bf88999968de438d2f1cedbfb0a1c81f9e8e7362c738e0fddd963692a4f4df9276b7f040979ce874cf6fa3de26da0713784bdb25e4efcb840554ef5b38b5fe8380549a496bd8e423a7456df6f4ae78a07ebe2276a8e22fc2243ec4f78abe0c99c733fd67c8c492699fa5ee2289cdd0a8d469bf883520ee74efb854bfadc7366a49ee65ca4e894e3335e2b672618d362eee12a577dd8dc2ba55c49c1fc3ad68180e9b112d0234d4aa28f5661f1e036450ca6f18be0166676bd80f8a4890c6ddea306fabb7ff3cb2860aa32a827e3a312912a2dfa70f6bc1c07de238448f2d751bd0cf15bf7" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_2)),
((new stdgo.crypto.cipher_test.Cipher_test.T__struct_2(((("e2e001a36c60d2bf40d69ff5b2b1161ea218db263be16a4e" : GoString))), ((("84230643130d05425826641e" : GoString))), ((("adb034f3f4a7ca45e2993812d113a9821d50df151af978bccc6d3bc113e15bc0918fb385377dca1916022ce816d56a332649484043c0fc0f2d37d040182b00a9bbb42ef231f80b48fb3730110d9a4433e38c73264c703579a705b9c031b969ec6d98de9f90e9e78b21179c2eb1e061946cd4bbb844f031ecf6eaac27a4151311adf1b03eda97c9fbae66295f468af4b35faf6ba39f9d8f95873bbc2b51cf3dfec0ed3c9b850696336cc093b24a8765a936d14dd56edc6bf518272169f75e67b74ba452d0aae90416a997c8f31e2e9d54ffea296dc69462debc8347b3e1af6a2d53bdfdfda601134f98db42b609df0a08c9347590c8d86e845bb6373d65a26ab85f67b50569c85401a396b8ad76c2b53ff62bcfbf033e435ef47b9b591d05117c6dc681d68e" : GoString))), ((("d5d7316b8fdee152942148bff007c22e4b2022c6bc7be3c18c5f2e52e004e0b5dc12206bf002bd" : GoString))), ((("f2c39423ee630dfe961da81909159dba018ce09b1073a12a477108316af5b7a31f86be6a0548b572d604bd115ea737dde899e0bd7f7ac9b23e38910dc457551ecc15c814a9f46d8432a1a36097dc1afe2712d1ba0838fa88cb55d9f65a2e9bece0dbf8999562503989041a2c87d7eb80ef649769d2f4978ce5cf9664f2bd0849646aa81cb976e45e1ade2f17a8126219e917aadbb4bae5e2c4b3f57bbc7f13fcc807df7842d9727a1b389e0b749e5191482adacabd812627c6eae2c7a30caf0844ad2a22e08f39edddf0ae10413e47db433dfe3febbb5a5cec9ade21fbba1e548247579395880b747669a8eb7e2ec0c1bff7fed2defdb92b07a14edf07b1bde29c31ab052ff1214e6b5ebbefcb8f21b5d6f8f6e07ee57ad6e14d4e142cb3f51bb465ab3a28a2a12f01b7514ad0463f2bde0d71d221" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_2)),
((new stdgo.crypto.cipher_test.Cipher_test.T__struct_2(((("5394e890d37ba55ec9d5f327f15680f6a63ef5279c79331643ad0af6d2623525" : GoString))), ((("815e840b7aca7af3b324583f" : GoString))), ((("8e63067cd15359f796b43c68f093f55fdf3589fc5f2fdfad5f9d156668a617f7091d73da71cdd207810e6f71a165d0809a597df9885ca6e8f9bb4e616166586b83cc45f49917fc1a256b8bc7d05c476ab5c4633e20092619c4747b26dad3915e9fd65238ee4e5213badeda8a3a22f5efe6582d0762532026c89b4ca26fdd000eb45347a2a199b55b7790e6b1b2dba19833ce9f9522c0bcea5b088ccae68dd99ae0203c81b9f1dd3181c3e2339e83ccd1526b67742b235e872bea5111772aab574ae7d904d9b6355a79178e179b5ae8edc54f61f172bf789ea9c9af21f45b783e4251421b077776808f04972a5e801723cf781442378ce0e0568f014aea7a882dcbcb48d342be53d1c2ebfb206b12443a8a587cc1e55ca23beca385d61d0d03e9d84cbc1b0a" : GoString))), ((("0feccdfae8ed65fa31a0858a1c466f79e8aa658c2f3ba93c3f92158b4e30955e1c62580450beff" : GoString))), ((("b69a7e17bb5af688883274550a4ded0d1aff49a0b18343f4b382f745c163f7f714c9206a32a1ff012427e19431951edd0a755e5f491b0eedfd7df68bbc6085dd2888607a2f998c3e881eb1694109250db28291e71f4ad344a125624fb92e16ea9815047cd1111cabfdc9cb8c3b4b0f40aa91d31774009781231400789ed545404af6c3f76d07ddc984a7bd8f52728159782832e298cc4d529be96d17be898efd83e44dc7b0e2efc645849fd2bba61fef0ae7be0dcab233cc4e2b7ba4e887de9c64b97f2a1818aa54371a8d629dae37975f7784e5e3cc77055ed6e975b1e5f55e6bbacdc9f295ce4ada2c16113cd5b323cf78b7dde39f4a87aa8c141a31174e3584ccbd380cf5ec6d1dba539928b084fa9683e9c0953acf47cc3ac384a2c38914f1da01fb2cfd78905c2b58d36b2574b9df15535d82" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_2)),
((new stdgo.crypto.cipher_test.Cipher_test.T__struct_2(((("89c54b0d3bc3c397d5039058c220685f" : GoString))), ((("bc7f45c00868758d62d4bb4d" : GoString))), ((("582670b0baf5540a3775b6615605bd05" : GoString))), ((("48d16cda0337105a50e2ed76fd18e114" : GoString))), ((("fc2d4c4eee2209ddbba6663c02765e6955e783b00156f5da0446e2970b877f" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_2)),
((new stdgo.crypto.cipher_test.Cipher_test.T__struct_2(((("bad6049678bf75c9087b3e3ae7e72c13" : GoString))), ((("a0a017b83a67d8f1b883e561" : GoString))), ((("a1be93012f05a1958440f74a5311f4a1" : GoString))), ((("f7c27b51d5367161dc2ff1e9e3edc6f2" : GoString))), ((("36f032f7e3dc3275ca22aedcdc68436b99a2227f8bb69d45ea5d8842cd08" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_2)),
((new stdgo.crypto.cipher_test.Cipher_test.T__struct_2(((("66a3c722ccf9709525650973ecc100a9" : GoString))), ((("1621d42d3a6d42a2d2bf9494" : GoString))), ((("61fa9dbbed2190fbc2ffabf5d2ea4ff8" : GoString))), ((("d7a9b6523b8827068a6354a6d166c6b9" : GoString))), ((("fef3b20f40e08a49637cc82f4c89b8603fd5c0132acfab97b5fff651c4" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_2)),
((new stdgo.crypto.cipher_test.Cipher_test.T__struct_2(((("562ae8aadb8d23e0f271a99a7d1bd4d1" : GoString))), ((("f7a5e2399413b89b6ad31aff" : GoString))), ((("bbdc3504d803682aa08a773cde5f231a" : GoString))), ((("2b9680b886b3efb7c6354b38c63b5373" : GoString))), ((("e2b7e5ed5ff27fc8664148f5a628a46dcbf2015184fffb82f2651c36" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_2)),
((new stdgo.crypto.cipher_test.Cipher_test.T__struct_2(((("11754cd72aec309bf52f7687212e8957" : GoString))), ((("" : GoString))), ((("" : GoString))), ((("" : GoString))), ((("250327c674aaf477aef2675748cf6971" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_2))) : Slice<stdgo.crypto.cipher_test.Cipher_test.T__struct_2>));
var _ofbTests : Slice<stdgo.crypto.cipher_test.Cipher_test.T_ofbTest> = ((new Slice<stdgo.crypto.cipher_test.Cipher_test.T_ofbTest>(((new stdgo.crypto.cipher_test.Cipher_test.T_ofbTest(((("OFB-AES128" : GoString))), _commonKey128, _commonIV, _commonInput, ((new Slice<GoUInt8>(
((59 : GoUInt8)),
((63 : GoUInt8)),
((217 : GoUInt8)),
((46 : GoUInt8)),
((183 : GoUInt8)),
((45 : GoUInt8)),
((173 : GoUInt8)),
((32 : GoUInt8)),
((51 : GoUInt8)),
((52 : GoUInt8)),
((73 : GoUInt8)),
((248 : GoUInt8)),
((232 : GoUInt8)),
((60 : GoUInt8)),
((251 : GoUInt8)),
((74 : GoUInt8)),
((119 : GoUInt8)),
((137 : GoUInt8)),
((80 : GoUInt8)),
((141 : GoUInt8)),
((22 : GoUInt8)),
((145 : GoUInt8)),
((143 : GoUInt8)),
((3 : GoUInt8)),
((245 : GoUInt8)),
((60 : GoUInt8)),
((82 : GoUInt8)),
((218 : GoUInt8)),
((197 : GoUInt8)),
((78 : GoUInt8)),
((216 : GoUInt8)),
((37 : GoUInt8)),
((151 : GoUInt8)),
((64 : GoUInt8)),
((5 : GoUInt8)),
((30 : GoUInt8)),
((156 : GoUInt8)),
((95 : GoUInt8)),
((236 : GoUInt8)),
((246 : GoUInt8)),
((67 : GoUInt8)),
((68 : GoUInt8)),
((247 : GoUInt8)),
((168 : GoUInt8)),
((34 : GoUInt8)),
((96 : GoUInt8)),
((237 : GoUInt8)),
((204 : GoUInt8)),
((48 : GoUInt8)),
((76 : GoUInt8)),
((101 : GoUInt8)),
((40 : GoUInt8)),
((246 : GoUInt8)),
((89 : GoUInt8)),
((199 : GoUInt8)),
((120 : GoUInt8)),
((102 : GoUInt8)),
((165 : GoUInt8)),
((16 : GoUInt8)),
((217 : GoUInt8)),
((193 : GoUInt8)),
((214 : GoUInt8)),
((174 : GoUInt8)),
((94 : GoUInt8))) : Slice<GoUInt8>))) : stdgo.crypto.cipher_test.Cipher_test.T_ofbTest)), ((new stdgo.crypto.cipher_test.Cipher_test.T_ofbTest(((("OFB-AES192" : GoString))), _commonKey192, _commonIV, _commonInput, ((new Slice<GoUInt8>(
((205 : GoUInt8)),
((200 : GoUInt8)),
((13 : GoUInt8)),
((111 : GoUInt8)),
((221 : GoUInt8)),
((241 : GoUInt8)),
((140 : GoUInt8)),
((171 : GoUInt8)),
((52 : GoUInt8)),
((194 : GoUInt8)),
((89 : GoUInt8)),
((9 : GoUInt8)),
((201 : GoUInt8)),
((154 : GoUInt8)),
((65 : GoUInt8)),
((116 : GoUInt8)),
((252 : GoUInt8)),
((194 : GoUInt8)),
((139 : GoUInt8)),
((141 : GoUInt8)),
((76 : GoUInt8)),
((99 : GoUInt8)),
((131 : GoUInt8)),
((124 : GoUInt8)),
((9 : GoUInt8)),
((232 : GoUInt8)),
((23 : GoUInt8)),
((0 : GoUInt8)),
((193 : GoUInt8)),
((16 : GoUInt8)),
((4 : GoUInt8)),
((1 : GoUInt8)),
((141 : GoUInt8)),
((154 : GoUInt8)),
((154 : GoUInt8)),
((234 : GoUInt8)),
((192 : GoUInt8)),
((246 : GoUInt8)),
((89 : GoUInt8)),
((111 : GoUInt8)),
((85 : GoUInt8)),
((156 : GoUInt8)),
((109 : GoUInt8)),
((77 : GoUInt8)),
((175 : GoUInt8)),
((89 : GoUInt8)),
((165 : GoUInt8)),
((242 : GoUInt8)),
((109 : GoUInt8)),
((159 : GoUInt8)),
((32 : GoUInt8)),
((8 : GoUInt8)),
((87 : GoUInt8)),
((202 : GoUInt8)),
((108 : GoUInt8)),
((62 : GoUInt8)),
((156 : GoUInt8)),
((172 : GoUInt8)),
((82 : GoUInt8)),
((75 : GoUInt8)),
((217 : GoUInt8)),
((172 : GoUInt8)),
((201 : GoUInt8)),
((42 : GoUInt8))) : Slice<GoUInt8>))) : stdgo.crypto.cipher_test.Cipher_test.T_ofbTest)), ((new stdgo.crypto.cipher_test.Cipher_test.T_ofbTest(((("OFB-AES256" : GoString))), _commonKey256, _commonIV, _commonInput, ((new Slice<GoUInt8>(
((220 : GoUInt8)),
((126 : GoUInt8)),
((132 : GoUInt8)),
((191 : GoUInt8)),
((218 : GoUInt8)),
((121 : GoUInt8)),
((22 : GoUInt8)),
((75 : GoUInt8)),
((126 : GoUInt8)),
((205 : GoUInt8)),
((132 : GoUInt8)),
((134 : GoUInt8)),
((152 : GoUInt8)),
((93 : GoUInt8)),
((56 : GoUInt8)),
((96 : GoUInt8)),
((79 : GoUInt8)),
((235 : GoUInt8)),
((220 : GoUInt8)),
((103 : GoUInt8)),
((64 : GoUInt8)),
((210 : GoUInt8)),
((11 : GoUInt8)),
((58 : GoUInt8)),
((200 : GoUInt8)),
((143 : GoUInt8)),
((106 : GoUInt8)),
((216 : GoUInt8)),
((42 : GoUInt8)),
((79 : GoUInt8)),
((176 : GoUInt8)),
((141 : GoUInt8)),
((113 : GoUInt8)),
((171 : GoUInt8)),
((71 : GoUInt8)),
((160 : GoUInt8)),
((134 : GoUInt8)),
((232 : GoUInt8)),
((110 : GoUInt8)),
((237 : GoUInt8)),
((243 : GoUInt8)),
((157 : GoUInt8)),
((28 : GoUInt8)),
((91 : GoUInt8)),
((186 : GoUInt8)),
((151 : GoUInt8)),
((196 : GoUInt8)),
((8 : GoUInt8)),
((1 : GoUInt8)),
((38 : GoUInt8)),
((20 : GoUInt8)),
((29 : GoUInt8)),
((103 : GoUInt8)),
((243 : GoUInt8)),
((123 : GoUInt8)),
((232 : GoUInt8)),
((83 : GoUInt8)),
((143 : GoUInt8)),
((90 : GoUInt8)),
((139 : GoUInt8)),
((231 : GoUInt8)),
((64 : GoUInt8)),
((228 : GoUInt8)),
((132 : GoUInt8))) : Slice<GoUInt8>))) : stdgo.crypto.cipher_test.Cipher_test.T_ofbTest))) : Slice<stdgo.crypto.cipher_test.Cipher_test.T_ofbTest>));
var _1 : Block = ((((null : Ref<stdgo.crypto.cipher_test.Cipher_test.T_wrapper>)) : T_wrapper));
@:structInit @:using(stdgo.crypto.cipher_test.Cipher_test.T_wrapper_static_extension) class T_wrapper {
    @:keep
    public function decrypt(_dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        var _w = this;
        _w;
        _w._block.decrypt(_dst, _src);
    }
    @:keep
    public function encrypt(_dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        var _w = this;
        _w;
        _w._block.encrypt(_dst, _src);
    }
    @:keep
    public function blockSize():GoInt {
        var _w = this;
        _w;
        return _w._block.blockSize();
    }
    public var _block : Block = ((null : Block));
    public function new(?_block:Block) {
        if (_block != null) this._block = _block;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_wrapper(_block);
    }
}
@:structInit class T_ofbTest {
    public var _name : GoString = (("" : GoString));
    public var _key : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _iv : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _in : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _out : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public function new(?_name:GoString, ?_key:Slice<GoUInt8>, ?_iv:Slice<GoUInt8>, ?_in:Slice<GoUInt8>, ?_out:Slice<GoUInt8>) {
        if (_name != null) this._name = _name;
        if (_key != null) this._key = _key;
        if (_iv != null) this._iv = _iv;
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_ofbTest(_name, _key, _iv, _in, _out);
    }
}
@:structInit @:local class T__struct_0 {
    public var _name : GoString = (("" : GoString));
    public var _key : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _iv : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _in : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _out : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public function toString():String return "{" + Go.string(_name) + " " + Go.string(_key) + " " + Go.string(_iv) + " " + Go.string(_in) + " " + Go.string(_out) + "}";
    public function new(?_name:GoString, ?_key:Slice<GoUInt8>, ?_iv:Slice<GoUInt8>, ?_in:Slice<GoUInt8>, ?_out:Slice<GoUInt8>, ?toString) {
        if (_name != null) this._name = _name;
        if (_key != null) this._key = _key;
        if (_iv != null) this._iv = _iv;
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_0(_name, _key, _iv, _in, _out);
    }
}
@:structInit @:local class T__struct_1 {
    public var _key : GoString = (("" : GoString));
    public var _iv : GoString = (("" : GoString));
    public var _plaintext : GoString = (("" : GoString));
    public var _ciphertext : GoString = (("" : GoString));
    public function toString():String return "{" + Go.string(_key) + " " + Go.string(_iv) + " " + Go.string(_plaintext) + " " + Go.string(_ciphertext) + "}";
    public function new(?_key:GoString, ?_iv:GoString, ?_plaintext:GoString, ?_ciphertext:GoString, ?toString) {
        if (_key != null) this._key = _key;
        if (_iv != null) this._iv = _iv;
        if (_plaintext != null) this._plaintext = _plaintext;
        if (_ciphertext != null) this._ciphertext = _ciphertext;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_1(_key, _iv, _plaintext, _ciphertext);
    }
}
@:structInit @:local class T__struct_2 {
    public var _key : GoString = (("" : GoString));
    public var _nonce : GoString = (("" : GoString));
    public var _plaintext : GoString = (("" : GoString));
    public var _ad : GoString = (("" : GoString));
    public var _result : GoString = (("" : GoString));
    public function toString():String return "{" + Go.string(_key) + " " + Go.string(_nonce) + " " + Go.string(_plaintext) + " " + Go.string(_ad) + " " + Go.string(_result) + "}";
    public function new(?_key:GoString, ?_nonce:GoString, ?_plaintext:GoString, ?_ad:GoString, ?_result:GoString, ?toString) {
        if (_key != null) this._key = _key;
        if (_nonce != null) this._nonce = _nonce;
        if (_plaintext != null) this._plaintext = _plaintext;
        if (_ad != null) this._ad = _ad;
        if (_result != null) this._result = _result;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_2(_key, _nonce, _plaintext, _ad, _result);
    }
}
@:structInit @:local class T__struct_3 {
    public var _nonce : GoString = (("" : GoString));
    public var _tag : GoString = (("" : GoString));
    public function toString():String return "{" + Go.string(_nonce) + " " + Go.string(_tag) + "}";
    public function new(?_nonce:GoString, ?_tag:GoString, ?toString) {
        if (_nonce != null) this._nonce = _nonce;
        if (_tag != null) this._tag = _tag;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_3(_nonce, _tag);
    }
}
@:named @:using(stdgo.crypto.cipher_test.Cipher_test.T_noopBlock_static_extension) typedef T_noopBlock = GoInt;
function _benchmarkAESGCMSeal(_b:stdgo.testing.Testing.B, _buf:Slice<GoByte>, _keySize:GoInt):Void {
        _b.reportAllocs();
        _b.setBytes((((_buf != null ? _buf.length : ((0 : GoInt))) : GoInt64)));
        var _key:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_keySize : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _nonce:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 12) ((0 : GoUInt8))]);
        var _ad:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 13) ((0 : GoUInt8))]);
        var __tmp__ = stdgo.crypto.aes.Aes.newCipher(((_key.__slice__(0) : Slice<GoUInt8>))), _aes:Block = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo.crypto.cipher.Cipher.newGCM(_aes), _aesgcm:AEAD = __tmp__._0, _1:stdgo.Error = __tmp__._1;
        var _out:Slice<GoByte> = ((null : Slice<GoUInt8>));
        _b.resetTimer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _out = _aesgcm.seal(((_out.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>)), ((_nonce.__slice__(0) : Slice<GoUInt8>)), _buf, ((_ad.__slice__(0) : Slice<GoUInt8>)));
            });
        };
    }
function _benchmarkAESGCMOpen(_b:stdgo.testing.Testing.B, _buf:Slice<GoByte>, _keySize:GoInt):Void {
        _b.reportAllocs();
        _b.setBytes((((_buf != null ? _buf.length : ((0 : GoInt))) : GoInt64)));
        var _key:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_keySize : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _nonce:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 12) ((0 : GoUInt8))]);
        var _ad:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 13) ((0 : GoUInt8))]);
        var __tmp__ = stdgo.crypto.aes.Aes.newCipher(((_key.__slice__(0) : Slice<GoUInt8>))), _aes:Block = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo.crypto.cipher.Cipher.newGCM(_aes), _aesgcm:AEAD = __tmp__._0, _1:stdgo.Error = __tmp__._1;
        var _out:Slice<GoByte> = ((null : Slice<GoUInt8>));
        var _ct:Slice<GoUInt8> = _aesgcm.seal(((null : Slice<GoUInt8>)), ((_nonce.__slice__(0) : Slice<GoUInt8>)), ((_buf.__slice__(0) : Slice<GoUInt8>)), ((_ad.__slice__(0) : Slice<GoUInt8>)));
        _b.resetTimer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                {
                    var __tmp__ = _aesgcm.open(((_out.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>)), ((_nonce.__slice__(0) : Slice<GoUInt8>)), _ct, ((_ad.__slice__(0) : Slice<GoUInt8>)));
                    _out = __tmp__._0;
                };
            });
        };
    }
function benchmarkAESGCM(_b:stdgo.testing.Testing.B):Void {
        for (_0 => _length in ((new Slice<GoInt>(((64 : GoInt)), ((1350 : GoInt)), ((8192 : GoInt))) : Slice<GoInt>))) {
            _b.run(((("Open-128-" : GoString))) + stdgo.strconv.Strconv.itoa(_length), function(_b:stdgo.testing.Testing.B):Void {
                _benchmarkAESGCMOpen(_b, new Slice<GoUInt8>(...[for (i in 0 ... ((_length : GoInt)).toBasic()) ((0 : GoUInt8))]), ((16 : GoInt)));
            });
            _b.run(((("Seal-128-" : GoString))) + stdgo.strconv.Strconv.itoa(_length), function(_b:stdgo.testing.Testing.B):Void {
                _benchmarkAESGCMSeal(_b, new Slice<GoUInt8>(...[for (i in 0 ... ((_length : GoInt)).toBasic()) ((0 : GoUInt8))]), ((16 : GoInt)));
            });
            _b.run(((("Open-256-" : GoString))) + stdgo.strconv.Strconv.itoa(_length), function(_b:stdgo.testing.Testing.B):Void {
                _benchmarkAESGCMOpen(_b, new Slice<GoUInt8>(...[for (i in 0 ... ((_length : GoInt)).toBasic()) ((0 : GoUInt8))]), ((32 : GoInt)));
            });
            _b.run(((("Seal-256-" : GoString))) + stdgo.strconv.Strconv.itoa(_length), function(_b:stdgo.testing.Testing.B):Void {
                _benchmarkAESGCMSeal(_b, new Slice<GoUInt8>(...[for (i in 0 ... ((_length : GoInt)).toBasic()) ((0 : GoUInt8))]), ((32 : GoInt)));
            });
        };
    }
function _benchmarkAESStream(_b:stdgo.testing.Testing.B, _mode:(Block, Slice<GoByte>) -> Stream, _buf:Slice<GoByte>):Void {
        _b.setBytes((((_buf != null ? _buf.length : ((0 : GoInt))) : GoInt64)));
        var _key:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
        var _iv:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
        var __tmp__ = stdgo.crypto.aes.Aes.newCipher(((_key.__slice__(0) : Slice<GoUInt8>))), _aes:Block = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        var _stream:Stream = _mode(_aes, ((_iv.__slice__(0) : Slice<GoUInt8>)));
        _b.resetTimer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _stream.xorkeyStream(_buf, _buf);
            });
        };
    }
function benchmarkAESCFBEncrypt1K(_b:stdgo.testing.Testing.B):Void {
        _benchmarkAESStream(_b, stdgo.crypto.cipher.Cipher.newCFBEncrypter, new Slice<GoUInt8>(...[for (i in 0 ... ((((1019 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]));
    }
function benchmarkAESCFBDecrypt1K(_b:stdgo.testing.Testing.B):Void {
        _benchmarkAESStream(_b, stdgo.crypto.cipher.Cipher.newCFBDecrypter, new Slice<GoUInt8>(...[for (i in 0 ... ((((1019 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]));
    }
function benchmarkAESCFBDecrypt8K(_b:stdgo.testing.Testing.B):Void {
        _benchmarkAESStream(_b, stdgo.crypto.cipher.Cipher.newCFBDecrypter, new Slice<GoUInt8>(...[for (i in 0 ... ((((8187 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]));
    }
function benchmarkAESOFB1K(_b:stdgo.testing.Testing.B):Void {
        _benchmarkAESStream(_b, stdgo.crypto.cipher.Cipher.newOFB, new Slice<GoUInt8>(...[for (i in 0 ... ((((1019 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]));
    }
function benchmarkAESCTR1K(_b:stdgo.testing.Testing.B):Void {
        _benchmarkAESStream(_b, stdgo.crypto.cipher.Cipher.newCTR, new Slice<GoUInt8>(...[for (i in 0 ... ((((1019 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]));
    }
function benchmarkAESCTR8K(_b:stdgo.testing.Testing.B):Void {
        _benchmarkAESStream(_b, stdgo.crypto.cipher.Cipher.newCTR, new Slice<GoUInt8>(...[for (i in 0 ... ((((8187 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]));
    }
function benchmarkAESCBCEncrypt1K(_b:stdgo.testing.Testing.B):Void {
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((1024 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _b.setBytes((((_buf != null ? _buf.length : ((0 : GoInt))) : GoInt64)));
        var _key:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
        var _iv:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
        var __tmp__ = stdgo.crypto.aes.Aes.newCipher(((_key.__slice__(0) : Slice<GoUInt8>))), _aes:Block = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        var _cbc:BlockMode = stdgo.crypto.cipher.Cipher.newCBCEncrypter(_aes, ((_iv.__slice__(0) : Slice<GoUInt8>)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _cbc.cryptBlocks(_buf, _buf);
            });
        };
    }
function benchmarkAESCBCDecrypt1K(_b:stdgo.testing.Testing.B):Void {
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((1024 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _b.setBytes((((_buf != null ? _buf.length : ((0 : GoInt))) : GoInt64)));
        var _key:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
        var _iv:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
        var __tmp__ = stdgo.crypto.aes.Aes.newCipher(((_key.__slice__(0) : Slice<GoUInt8>))), _aes:Block = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        var _cbc:BlockMode = stdgo.crypto.cipher.Cipher.newCBCDecrypter(_aes, ((_iv.__slice__(0) : Slice<GoUInt8>)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _cbc.cryptBlocks(_buf, _buf);
            });
        };
    }
function testCBCEncrypterAES(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _test in _cbcAESTests) {
            var __tmp__ = stdgo.crypto.aes.Aes.newCipher(_test._key), _c:Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(((("%s: NewCipher(%d bytes) = %s" : GoString))), Go.toInterface(_test._name), Go.toInterface((_test._key != null ? _test._key.length : ((0 : GoInt)))), Go.toInterface(_err));
                continue;
            };
            var _encrypter:BlockMode = stdgo.crypto.cipher.Cipher.newCBCEncrypter(_c, _test._iv);
            var _data:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... (((_test._in != null ? _test._in.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            Go.copySlice(_data, _test._in);
            _encrypter.cryptBlocks(_data, _data);
            if (!stdgo.bytes.Bytes.equal(_test._out, _data)) {
                _t.errorf(((("%s: CBCEncrypter\nhave %x\nwant %x" : GoString))), Go.toInterface(_test._name), Go.toInterface(_data), Go.toInterface(_test._out));
            };
        };
    }
function testCBCDecrypterAES(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _test in _cbcAESTests) {
            var __tmp__ = stdgo.crypto.aes.Aes.newCipher(_test._key), _c:Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(((("%s: NewCipher(%d bytes) = %s" : GoString))), Go.toInterface(_test._name), Go.toInterface((_test._key != null ? _test._key.length : ((0 : GoInt)))), Go.toInterface(_err));
                continue;
            };
            var _decrypter:BlockMode = stdgo.crypto.cipher.Cipher.newCBCDecrypter(_c, _test._iv);
            var _data:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... (((_test._out != null ? _test._out.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            Go.copySlice(_data, _test._out);
            _decrypter.cryptBlocks(_data, _data);
            if (!stdgo.bytes.Bytes.equal(_test._in, _data)) {
                _t.errorf(((("%s: CBCDecrypter\nhave %x\nwant %x" : GoString))), Go.toInterface(_test._name), Go.toInterface(_data), Go.toInterface(_test._in));
            };
        };
    }
function testCFBVectors(_t:stdgo.testing.Testing.T_):Void {
        for (_i => _test in _cfbTests) {
            var __tmp__ = stdgo.encoding.hex.Hex.decodeString(_test._key), _key:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            var __tmp__ = stdgo.encoding.hex.Hex.decodeString(_test._iv), _iv:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            var __tmp__ = stdgo.encoding.hex.Hex.decodeString(_test._plaintext), _plaintext:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            var __tmp__ = stdgo.encoding.hex.Hex.decodeString(_test._ciphertext), _expected:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            var __tmp__ = stdgo.crypto.aes.Aes.newCipher(_key), _block:Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            var _ciphertext:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... (((_plaintext != null ? _plaintext.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            var _cfb:Stream = stdgo.crypto.cipher.Cipher.newCFBEncrypter(_block, _iv);
            _cfb.xorkeyStream(_ciphertext, _plaintext);
            if (!stdgo.bytes.Bytes.equal(_ciphertext, _expected)) {
                _t.errorf(((("#%d: wrong output: got %x, expected %x" : GoString))), Go.toInterface(_i), Go.toInterface(_ciphertext), Go.toInterface(_expected));
            };
            var _cfbdec:Stream = stdgo.crypto.cipher.Cipher.newCFBDecrypter(_block, _iv);
            var _plaintextCopy:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... (((_ciphertext != null ? _ciphertext.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            _cfbdec.xorkeyStream(_plaintextCopy, _ciphertext);
            if (!stdgo.bytes.Bytes.equal(_plaintextCopy, _plaintext)) {
                _t.errorf(((("#%d: wrong plaintext: got %x, expected %x" : GoString))), Go.toInterface(_i), Go.toInterface(_plaintextCopy), Go.toInterface(_plaintext));
            };
        };
    }
function testCFBInverse(_t:stdgo.testing.Testing.T_):Void {
        var __tmp__ = stdgo.crypto.aes.Aes.newCipher(_commonKey128), _block:Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.error(Go.toInterface(_err));
            return;
        };
        var _plaintext:Slice<GoUInt8> = ((((("this is the plaintext. this is the plaintext." : GoString))) : Slice<GoByte>));
        var _iv:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_block.blockSize() : GoInt)).toBasic()) ((0 : GoUInt8))]);
        stdgo.crypto.rand.Rand.reader.read(_iv);
        var _cfb:Stream = stdgo.crypto.cipher.Cipher.newCFBEncrypter(_block, _iv);
        var _ciphertext:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... (((_plaintext != null ? _plaintext.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        Go.copySlice(_ciphertext, _plaintext);
        _cfb.xorkeyStream(_ciphertext, _ciphertext);
        var _cfbdec:Stream = stdgo.crypto.cipher.Cipher.newCFBDecrypter(_block, _iv);
        var _plaintextCopy:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... (((_plaintext != null ? _plaintext.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        Go.copySlice(_plaintextCopy, _ciphertext);
        _cfbdec.xorkeyStream(_plaintextCopy, _plaintextCopy);
        if (!stdgo.bytes.Bytes.equal(_plaintextCopy, _plaintext)) {
            _t.errorf(((("got: %x, want: %x" : GoString))), Go.toInterface(_plaintextCopy), Go.toInterface(_plaintext));
        };
    }
function testCryptBlocks(_t:stdgo.testing.Testing.T_):Void {
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((16 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var __tmp__ = stdgo.crypto.aes.Aes.newCipher(_buf), _block:Block = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        var _mode:BlockMode = stdgo.crypto.cipher.Cipher.newCBCDecrypter(_block, _buf);
        _mustPanic(_t, ((("crypto/cipher: input not full blocks" : GoString))), function():Void {
            _mode.cryptBlocks(_buf, ((_buf.__slice__(0, ((3 : GoInt))) : Slice<GoUInt8>)));
        });
        _mustPanic(_t, ((("crypto/cipher: output smaller than input" : GoString))), function():Void {
            _mode.cryptBlocks(((_buf.__slice__(0, ((3 : GoInt))) : Slice<GoUInt8>)), _buf);
        });
        _mode = stdgo.crypto.cipher.Cipher.newCBCEncrypter(_block, _buf);
        _mustPanic(_t, ((("crypto/cipher: input not full blocks" : GoString))), function():Void {
            _mode.cryptBlocks(_buf, ((_buf.__slice__(0, ((3 : GoInt))) : Slice<GoUInt8>)));
        });
        _mustPanic(_t, ((("crypto/cipher: output smaller than input" : GoString))), function():Void {
            _mode.cryptBlocks(((_buf.__slice__(0, ((3 : GoInt))) : Slice<GoUInt8>)), _buf);
        });
    }
function _mustPanic(_t:stdgo.testing.Testing.T_, _msg:GoString, _f:() -> Void):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var _err:AnyInterface = Go.toInterface(({
                        final r = __recover_exception__;
                        __recover_exception__ = null;
                        r;
                    }));
                    if (_err == null) {
                        _t.errorf(((("function did not panic, wanted %q" : GoString))), Go.toInterface(_msg));
                    } else if (_err != _msg) {
                        _t.errorf(((("got panic %v, wanted %q" : GoString))), Go.toInterface(_err), Go.toInterface(_msg));
                    };
                };
                a();
            });
            _f();
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function testEmptyPlaintext(_t:stdgo.testing.Testing.T_):Void {
        var _key:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
        var __tmp__ = stdgo.crypto.aes.Aes.newCipher(((_key.__slice__(0, ((16 : GoInt))) : Slice<GoUInt8>))), _a:Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var __tmp__ = stdgo.crypto.des.Des.newCipher(((_key.__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>))), _d:Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _s:GoInt = ((16 : GoInt));
        var _pt:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_s : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _ct:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_s : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((16 : GoInt)), _i++, {
                {
                    final __tmp__0 = ((_i : GoByte));
                    final __tmp__1 = ((_i : GoByte));
                    if (_pt != null) _pt[_i] = __tmp__0;
                    if (_ct != null) _ct[_i] = __tmp__1;
                };
            });
        };
        var _assertEqual:(GoString, Slice<GoUInt8>, Slice<GoUInt8>) -> Void = function(_name:GoString, _got:Slice<GoByte>, _want:Slice<GoByte>):Void {
            if (!stdgo.bytes.Bytes.equal(_got, _want)) {
                _t.fatalf(((("%s: got %v, want %v" : GoString))), Go.toInterface(_name), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        for (_0 => _b in ((new Slice<Block>(_a, _d) : Slice<Block>))) {
            var _iv:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_b.blockSize() : GoInt)).toBasic()) ((0 : GoUInt8))]);
            var _cbce:BlockMode = stdgo.crypto.cipher.Cipher.newCBCEncrypter(_b, _iv);
            _cbce.cryptBlocks(_ct, ((_pt.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>)));
            _assertEqual(((("CBC encrypt" : GoString))), _ct, _pt);
            var _cbcd:BlockMode = stdgo.crypto.cipher.Cipher.newCBCDecrypter(_b, _iv);
            _cbcd.cryptBlocks(_ct, ((_pt.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>)));
            _assertEqual(((("CBC decrypt" : GoString))), _ct, _pt);
            var _cfbe:Stream = stdgo.crypto.cipher.Cipher.newCFBEncrypter(_b, _iv);
            _cfbe.xorkeyStream(_ct, ((_pt.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>)));
            _assertEqual(((("CFB encrypt" : GoString))), _ct, _pt);
            var _cfbd:Stream = stdgo.crypto.cipher.Cipher.newCFBDecrypter(_b, _iv);
            _cfbd.xorkeyStream(_ct, ((_pt.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>)));
            _assertEqual(((("CFB decrypt" : GoString))), _ct, _pt);
            var _ctr:Stream = stdgo.crypto.cipher.Cipher.newCTR(_b, _iv);
            _ctr.xorkeyStream(_ct, ((_pt.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>)));
            _assertEqual(((("CTR" : GoString))), _ct, _pt);
            var _ofb:Stream = stdgo.crypto.cipher.Cipher.newOFB(_b, _iv);
            _ofb.xorkeyStream(_ct, ((_pt.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>)));
            _assertEqual(((("OFB" : GoString))), _ct, _pt);
        };
    }
function testCTR_AES(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _ctrAESTests) {
            var _test:GoString = _tt._name;
            var __tmp__ = stdgo.crypto.aes.Aes.newCipher(_tt._key), _c:Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(((("%s: NewCipher(%d bytes) = %s" : GoString))), Go.toInterface(_test), Go.toInterface((_tt._key != null ? _tt._key.length : ((0 : GoInt)))), Go.toInterface(_err));
                continue;
            };
            {
                var _j:GoInt = ((0 : GoInt));
                Go.cfor(_j <= ((5 : GoInt)), _j = _j + (((5 : GoInt))), {
                    var _in:Slice<GoUInt8> = ((_tt._in.__slice__(((0 : GoInt)), (_tt._in != null ? _tt._in.length : ((0 : GoInt))) - _j) : Slice<GoUInt8>));
                    var _ctr:Stream = stdgo.crypto.cipher.Cipher.newCTR(_c, _tt._iv);
                    var _encrypted:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... (((_in != null ? _in.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
                    _ctr.xorkeyStream(_encrypted, _in);
                    {
                        var _out:Slice<GoUInt8> = ((_tt._out.__slice__(((0 : GoInt)), (_in != null ? _in.length : ((0 : GoInt)))) : Slice<GoUInt8>));
                        if (!stdgo.bytes.Bytes.equal(_out, _encrypted)) {
                            _t.errorf(((("%s/%d: CTR\ninpt %x\nhave %x\nwant %x" : GoString))), Go.toInterface(_test), Go.toInterface((_in != null ? _in.length : ((0 : GoInt)))), Go.toInterface(_in), Go.toInterface(_encrypted), Go.toInterface(_out));
                        };
                    };
                });
            };
            {
                var _j:GoInt = ((0 : GoInt));
                Go.cfor(_j <= ((7 : GoInt)), _j = _j + (((7 : GoInt))), {
                    var _in:Slice<GoUInt8> = ((_tt._out.__slice__(((0 : GoInt)), (_tt._out != null ? _tt._out.length : ((0 : GoInt))) - _j) : Slice<GoUInt8>));
                    var _ctr:Stream = stdgo.crypto.cipher.Cipher.newCTR(_c, _tt._iv);
                    var _plain:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... (((_in != null ? _in.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
                    _ctr.xorkeyStream(_plain, _in);
                    {
                        var _out:Slice<GoUInt8> = ((_tt._in.__slice__(((0 : GoInt)), (_in != null ? _in.length : ((0 : GoInt)))) : Slice<GoUInt8>));
                        if (!stdgo.bytes.Bytes.equal(_out, _plain)) {
                            _t.errorf(((("%s/%d: CTRReader\nhave %x\nwant %x" : GoString))), Go.toInterface(_test), Go.toInterface((_out != null ? _out.length : ((0 : GoInt)))), Go.toInterface(_plain), Go.toInterface(_out));
                        };
                    };
                });
            };
            if (_t.failed()) {
                break;
            };
        };
    }
function _inc(_b:Slice<GoByte>):Void {
        {
            var _i:GoInt = (_b != null ? _b.length : ((0 : GoInt))) - ((1 : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i++, {
                (_b != null ? _b[_i] : ((0 : GoUInt8)))++;
                if ((_b != null ? _b[_i] : ((0 : GoUInt8))) != ((0 : GoUInt8))) {
                    break;
                };
            });
        };
    }
function _xor(_a:Slice<GoByte>, _b:Slice<GoByte>):Void {
        for (_i => _ in _a) {
            if (_a != null) (_a != null ? _a[_i] : ((0 : GoUInt8))) ^ ((_b != null ? _b[_i] : ((0 : GoUInt8))));
        };
    }
function testCTR(_t:stdgo.testing.Testing.T_):Void {
        {
            var _size:GoInt = ((64 : GoInt));
            Go.cfor(_size <= ((1024 : GoInt)), _size = _size * (((2 : GoInt))), {
                var _iv:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) ((0 : GoUInt8))]);
                var _ctr:Stream = stdgo.crypto.cipher.Cipher.newCTR(new stdgo.crypto.cipher_test.Cipher_test.T_noopBlock_wrapper(Go.pointer(((_size : T_noopBlock)))), _iv);
                var _src:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((1024 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
                for (_i => _ in _src) {
                    if (_src != null) _src[_i] = ((255 : GoUInt8));
                };
                var _want:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((1024 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
                Go.copySlice(_want, _src);
                var _counter:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) ((0 : GoUInt8))]);
                {
                    var _i:GoInt = ((1 : GoInt));
                    Go.cfor(_i < ((_want != null ? _want.length : ((0 : GoInt))) / _size), _i++, {
                        _inc(_counter);
                        _xor(((_want.__slice__(_i * _size, (_i + ((1 : GoInt))) * _size) : Slice<GoUInt8>)), _counter);
                    });
                };
                var _dst:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((1024 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
                _ctr.xorkeyStream(_dst, _src);
                if (!stdgo.bytes.Bytes.equal(_dst, _want)) {
                    _t.errorf(((("for size %d\nhave %x\nwant %x" : GoString))), Go.toInterface(_size), Go.toInterface(_dst), Go.toInterface(_want));
                };
            });
        };
    }
function exampleNewGCM_encrypt():Void {
        var __tmp__ = stdgo.encoding.hex.Hex.decodeString(((("6368616e676520746869732070617373776f726420746f206120736563726574" : GoString)))), _key:Slice<GoUInt8> = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        var _plaintext:Slice<GoUInt8> = ((((("exampleplaintext" : GoString))) : Slice<GoByte>));
        var __tmp__ = stdgo.crypto.aes.Aes.newCipher(_key), _block:Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err.error());
        };
        var _nonce:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((12 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = stdgo.io.Io.readFull(stdgo.crypto.rand.Rand.reader, _nonce), _1:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                throw Go.toInterface(_err.error());
            };
        };
        var __tmp__ = stdgo.crypto.cipher.Cipher.newGCM(_block), _aesgcm:AEAD = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err.error());
        };
        var _ciphertext:Slice<GoUInt8> = _aesgcm.seal(((null : Slice<GoUInt8>)), _nonce, _plaintext, ((null : Slice<GoUInt8>)));
        stdgo.fmt.Fmt.printf(((("%x\n" : GoString))), Go.toInterface(_ciphertext));
    }
function exampleNewGCM_decrypt():Void {
        var __tmp__ = stdgo.encoding.hex.Hex.decodeString(((("6368616e676520746869732070617373776f726420746f206120736563726574" : GoString)))), _key:Slice<GoUInt8> = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo.encoding.hex.Hex.decodeString(((("c3aaa29f002ca75870806e44086700f62ce4d43e902b3888e23ceff797a7a471" : GoString)))), _ciphertext:Slice<GoUInt8> = __tmp__._0, _1:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo.encoding.hex.Hex.decodeString(((("64a9433eae7ccceee2fc0eda" : GoString)))), _nonce:Slice<GoUInt8> = __tmp__._0, _2:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo.crypto.aes.Aes.newCipher(_key), _block:Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err.error());
        };
        var __tmp__ = stdgo.crypto.cipher.Cipher.newGCM(_block), _aesgcm:AEAD = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err.error());
        };
        var __tmp__ = _aesgcm.open(((null : Slice<GoUInt8>)), _nonce, _ciphertext, ((null : Slice<GoUInt8>))), _plaintext:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err.error());
        };
        stdgo.fmt.Fmt.printf(((("%s\n" : GoString))), Go.toInterface(_plaintext));
    }
function exampleNewCBCDecrypter():Void {
        var __tmp__ = stdgo.encoding.hex.Hex.decodeString(((("6368616e676520746869732070617373" : GoString)))), _key:Slice<GoUInt8> = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo.encoding.hex.Hex.decodeString(((("73c86d43a9d700a253a96c85b0f6b03ac9792e0e757f869cca306bd3cba1c62b" : GoString)))), _ciphertext:Slice<GoUInt8> = __tmp__._0, _1:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo.crypto.aes.Aes.newCipher(_key), _block:Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        if ((_ciphertext != null ? _ciphertext.length : ((0 : GoInt))) < ((16 : GoInt))) {
            throw Go.toInterface(((("ciphertext too short" : GoString))));
        };
        var _iv:Slice<GoUInt8> = ((_ciphertext.__slice__(0, ((16 : GoInt))) : Slice<GoUInt8>));
        _ciphertext = ((_ciphertext.__slice__(((16 : GoInt))) : Slice<GoUInt8>));
        if (((_ciphertext != null ? _ciphertext.length : ((0 : GoInt))) % ((16 : GoInt))) != ((0 : GoInt))) {
            throw Go.toInterface(((("ciphertext is not a multiple of the block size" : GoString))));
        };
        var _mode:BlockMode = stdgo.crypto.cipher.Cipher.newCBCDecrypter(_block, _iv);
        _mode.cryptBlocks(_ciphertext, _ciphertext);
        stdgo.fmt.Fmt.printf(((("%s\n" : GoString))), Go.toInterface(_ciphertext));
    }
function exampleNewCBCEncrypter():Void {
        var __tmp__ = stdgo.encoding.hex.Hex.decodeString(((("6368616e676520746869732070617373" : GoString)))), _key:Slice<GoUInt8> = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        var _plaintext:Slice<GoUInt8> = ((((("exampleplaintext" : GoString))) : Slice<GoByte>));
        if (((_plaintext != null ? _plaintext.length : ((0 : GoInt))) % ((16 : GoInt))) != ((0 : GoInt))) {
            throw Go.toInterface(((("plaintext is not a multiple of the block size" : GoString))));
        };
        var __tmp__ = stdgo.crypto.aes.Aes.newCipher(_key), _block:Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        var _ciphertext:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((16 : GoInt)) + (_plaintext != null ? _plaintext.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _iv:Slice<GoUInt8> = ((_ciphertext.__slice__(0, ((16 : GoInt))) : Slice<GoUInt8>));
        {
            var __tmp__ = stdgo.io.Io.readFull(stdgo.crypto.rand.Rand.reader, _iv), _1:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                throw Go.toInterface(_err);
            };
        };
        var _mode:BlockMode = stdgo.crypto.cipher.Cipher.newCBCEncrypter(_block, _iv);
        _mode.cryptBlocks(((_ciphertext.__slice__(((16 : GoInt))) : Slice<GoUInt8>)), _plaintext);
        stdgo.fmt.Fmt.printf(((("%x\n" : GoString))), Go.toInterface(_ciphertext));
    }
function exampleNewCFBDecrypter():Void {
        var __tmp__ = stdgo.encoding.hex.Hex.decodeString(((("6368616e676520746869732070617373" : GoString)))), _key:Slice<GoUInt8> = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo.encoding.hex.Hex.decodeString(((("7dd015f06bec7f1b8f6559dad89f4131da62261786845100056b353194ad" : GoString)))), _ciphertext:Slice<GoUInt8> = __tmp__._0, _1:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo.crypto.aes.Aes.newCipher(_key), _block:Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        if ((_ciphertext != null ? _ciphertext.length : ((0 : GoInt))) < ((16 : GoInt))) {
            throw Go.toInterface(((("ciphertext too short" : GoString))));
        };
        var _iv:Slice<GoUInt8> = ((_ciphertext.__slice__(0, ((16 : GoInt))) : Slice<GoUInt8>));
        _ciphertext = ((_ciphertext.__slice__(((16 : GoInt))) : Slice<GoUInt8>));
        var _stream:Stream = stdgo.crypto.cipher.Cipher.newCFBDecrypter(_block, _iv);
        _stream.xorkeyStream(_ciphertext, _ciphertext);
        stdgo.fmt.Fmt.printf(((("%s" : GoString))), Go.toInterface(_ciphertext));
    }
function exampleNewCFBEncrypter():Void {
        var __tmp__ = stdgo.encoding.hex.Hex.decodeString(((("6368616e676520746869732070617373" : GoString)))), _key:Slice<GoUInt8> = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        var _plaintext:Slice<GoUInt8> = ((((("some plaintext" : GoString))) : Slice<GoByte>));
        var __tmp__ = stdgo.crypto.aes.Aes.newCipher(_key), _block:Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        var _ciphertext:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((16 : GoInt)) + (_plaintext != null ? _plaintext.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _iv:Slice<GoUInt8> = ((_ciphertext.__slice__(0, ((16 : GoInt))) : Slice<GoUInt8>));
        {
            var __tmp__ = stdgo.io.Io.readFull(stdgo.crypto.rand.Rand.reader, _iv), _1:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                throw Go.toInterface(_err);
            };
        };
        var _stream:Stream = stdgo.crypto.cipher.Cipher.newCFBEncrypter(_block, _iv);
        _stream.xorkeyStream(((_ciphertext.__slice__(((16 : GoInt))) : Slice<GoUInt8>)), _plaintext);
        stdgo.fmt.Fmt.printf(((("%x\n" : GoString))), Go.toInterface(_ciphertext));
    }
function exampleNewCTR():Void {
        var __tmp__ = stdgo.encoding.hex.Hex.decodeString(((("6368616e676520746869732070617373" : GoString)))), _key:Slice<GoUInt8> = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        var _plaintext:Slice<GoUInt8> = ((((("some plaintext" : GoString))) : Slice<GoByte>));
        var __tmp__ = stdgo.crypto.aes.Aes.newCipher(_key), _block:Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        var _ciphertext:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((16 : GoInt)) + (_plaintext != null ? _plaintext.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _iv:Slice<GoUInt8> = ((_ciphertext.__slice__(0, ((16 : GoInt))) : Slice<GoUInt8>));
        {
            var __tmp__ = stdgo.io.Io.readFull(stdgo.crypto.rand.Rand.reader, _iv), _1:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                throw Go.toInterface(_err);
            };
        };
        var _stream:Stream = stdgo.crypto.cipher.Cipher.newCTR(_block, _iv);
        _stream.xorkeyStream(((_ciphertext.__slice__(((16 : GoInt))) : Slice<GoUInt8>)), _plaintext);
        var _plaintext2:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... (((_plaintext != null ? _plaintext.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _stream = stdgo.crypto.cipher.Cipher.newCTR(_block, _iv);
        _stream.xorkeyStream(_plaintext2, ((_ciphertext.__slice__(((16 : GoInt))) : Slice<GoUInt8>)));
        stdgo.fmt.Fmt.printf(((("%s\n" : GoString))), Go.toInterface(_plaintext2));
    }
function exampleNewOFB():Void {
        var __tmp__ = stdgo.encoding.hex.Hex.decodeString(((("6368616e676520746869732070617373" : GoString)))), _key:Slice<GoUInt8> = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        var _plaintext:Slice<GoUInt8> = ((((("some plaintext" : GoString))) : Slice<GoByte>));
        var __tmp__ = stdgo.crypto.aes.Aes.newCipher(_key), _block:Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        var _ciphertext:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((16 : GoInt)) + (_plaintext != null ? _plaintext.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _iv:Slice<GoUInt8> = ((_ciphertext.__slice__(0, ((16 : GoInt))) : Slice<GoUInt8>));
        {
            var __tmp__ = stdgo.io.Io.readFull(stdgo.crypto.rand.Rand.reader, _iv), _1:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                throw Go.toInterface(_err);
            };
        };
        var _stream:Stream = stdgo.crypto.cipher.Cipher.newOFB(_block, _iv);
        _stream.xorkeyStream(((_ciphertext.__slice__(((16 : GoInt))) : Slice<GoUInt8>)), _plaintext);
        var _plaintext2:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... (((_plaintext != null ? _plaintext.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _stream = stdgo.crypto.cipher.Cipher.newOFB(_block, _iv);
        _stream.xorkeyStream(_plaintext2, ((_ciphertext.__slice__(((16 : GoInt))) : Slice<GoUInt8>)));
        stdgo.fmt.Fmt.printf(((("%s\n" : GoString))), Go.toInterface(_plaintext2));
    }
function exampleStreamReader():Void {
        var __tmp__ = stdgo.encoding.hex.Hex.decodeString(((("6368616e676520746869732070617373" : GoString)))), _key:Slice<GoUInt8> = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo.encoding.hex.Hex.decodeString(((("cf0495cc6f75dafc23948538e79904a9" : GoString)))), _encrypted:Slice<GoUInt8> = __tmp__._0, _1:stdgo.Error = __tmp__._1;
        var _bReader:Ref<stdgo.bytes.Bytes.Reader> = stdgo.bytes.Bytes.newReader(_encrypted);
        var __tmp__ = stdgo.crypto.aes.Aes.newCipher(_key), _block:Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        var _iv:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
        var _stream:Stream = stdgo.crypto.cipher.Cipher.newOFB(_block, ((_iv.__slice__(0) : Slice<GoUInt8>)));
        var _reader:Ref<StreamReader> = (({ s : _stream, r : _bReader } : StreamReader));
        {
            var __tmp__ = stdgo.io.Io.copy(stdgo.os.Os.stdout, _reader), _2:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                throw Go.toInterface(_err);
            };
        };
    }
function exampleStreamWriter():Void {
        var __tmp__ = stdgo.encoding.hex.Hex.decodeString(((("6368616e676520746869732070617373" : GoString)))), _key:Slice<GoUInt8> = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        var _bReader:Ref<stdgo.bytes.Bytes.Reader> = stdgo.bytes.Bytes.newReader(((((("some secret text" : GoString))) : Slice<GoByte>)));
        var __tmp__ = stdgo.crypto.aes.Aes.newCipher(_key), _block:Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(_err);
        };
        var _iv:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
        var _stream:Stream = stdgo.crypto.cipher.Cipher.newOFB(_block, ((_iv.__slice__(0) : Slice<GoUInt8>)));
        var _out:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _writer:Ref<StreamWriter> = (({ s : _stream, w : _out, err : ((null : stdgo.Error)) } : StreamWriter));
        {
            var __tmp__ = stdgo.io.Io.copy(_writer, _bReader), _1:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                throw Go.toInterface(_err);
            };
        };
        stdgo.fmt.Fmt.printf(((("%x\n" : GoString))), Go.toInterface(_out.bytes()));
    }
function testAESGCM(_t:stdgo.testing.Testing.T_):Void {
        for (_i => _test in _aesGCMTests) {
            var __tmp__ = stdgo.encoding.hex.Hex.decodeString(_test._key), _key:Slice<GoUInt8> = __tmp__._0, _0:stdgo.Error = __tmp__._1;
            var __tmp__ = stdgo.crypto.aes.Aes.newCipher(_key), _aes:Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            var __tmp__ = stdgo.encoding.hex.Hex.decodeString(_test._nonce), _nonce:Slice<GoUInt8> = __tmp__._0, _1:stdgo.Error = __tmp__._1;
            var __tmp__ = stdgo.encoding.hex.Hex.decodeString(_test._plaintext), _plaintext:Slice<GoUInt8> = __tmp__._0, _2:stdgo.Error = __tmp__._1;
            var __tmp__ = stdgo.encoding.hex.Hex.decodeString(_test._ad), _ad:Slice<GoUInt8> = __tmp__._0, _3:stdgo.Error = __tmp__._1;
            var _tagSize:GoInt = ((_test._result != null ? _test._result.length : ((0 : GoInt))) - (_test._plaintext != null ? _test._plaintext.length : ((0 : GoInt)))) / ((2 : GoInt));
            var _aesgcm:AEAD = ((null : AEAD));
            if (_tagSize != ((16 : GoInt))) {
                {
                    var __tmp__ = stdgo.crypto.cipher.Cipher.newGCMWithTagSize(_aes, _tagSize);
                    _aesgcm = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            } else if ((_nonce != null ? _nonce.length : ((0 : GoInt))) == ((0 : GoInt))) {
                {
                    var __tmp__ = stdgo.crypto.cipher.Cipher.newGCMWithNonceSize(_aes, ((0 : GoInt)));
                    _aesgcm = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err == null) {
                    _t.fatal(Go.toInterface(((("expected error for zero nonce size" : GoString)))));
                };
                continue;
            } else if ((_nonce != null ? _nonce.length : ((0 : GoInt))) != ((12 : GoInt))) {
                {
                    var __tmp__ = stdgo.crypto.cipher.Cipher.newGCMWithNonceSize(_aes, (_nonce != null ? _nonce.length : ((0 : GoInt))));
                    _aesgcm = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            } else {
                {
                    var __tmp__ = stdgo.crypto.cipher.Cipher.newGCM(_aes);
                    _aesgcm = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
            var _ct:Slice<GoUInt8> = _aesgcm.seal(((null : Slice<GoUInt8>)), _nonce, _plaintext, _ad);
            {
                var _ctHex:GoString = stdgo.encoding.hex.Hex.encodeToString(_ct);
                if (_ctHex != _test._result) {
                    _t.errorf(((("#%d: got %s, want %s" : GoString))), Go.toInterface(_i), Go.toInterface(_ctHex), Go.toInterface(_test._result));
                    continue;
                };
            };
            var __tmp__ = _aesgcm.open(((null : Slice<GoUInt8>)), _nonce, _ct, _ad), _plaintext2:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(((("#%d: Open failed" : GoString))), Go.toInterface(_i));
                continue;
            };
            if (!stdgo.bytes.Bytes.equal(_plaintext, _plaintext2)) {
                _t.errorf(((("#%d: plaintext\'s don\'t match: got %x vs %x" : GoString))), Go.toInterface(_i), Go.toInterface(_plaintext2), Go.toInterface(_plaintext));
                continue;
            };
            if ((_ad != null ? _ad.length : ((0 : GoInt))) > ((0 : GoInt))) {
                if (_ad != null) (_ad != null ? _ad[((0 : GoInt))] : ((0 : GoUInt8))) ^ (((128 : GoUInt8)));
                {
                    var __tmp__ = _aesgcm.open(((null : Slice<GoUInt8>)), _nonce, _ct, _ad), _4:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        _t.errorf(((("#%d: Open was successful after altering additional data" : GoString))), Go.toInterface(_i));
                    };
                };
                if (_ad != null) (_ad != null ? _ad[((0 : GoInt))] : ((0 : GoUInt8))) ^ (((128 : GoUInt8)));
            };
            if (_nonce != null) (_nonce != null ? _nonce[((0 : GoInt))] : ((0 : GoUInt8))) ^ (((128 : GoUInt8)));
            {
                var __tmp__ = _aesgcm.open(((null : Slice<GoUInt8>)), _nonce, _ct, _ad), _5:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _t.errorf(((("#%d: Open was successful after altering nonce" : GoString))), Go.toInterface(_i));
                };
            };
            if (_nonce != null) (_nonce != null ? _nonce[((0 : GoInt))] : ((0 : GoUInt8))) ^ (((128 : GoUInt8)));
            if (_ct != null) (_ct != null ? _ct[((0 : GoInt))] : ((0 : GoUInt8))) ^ (((128 : GoUInt8)));
            {
                var __tmp__ = _aesgcm.open(((null : Slice<GoUInt8>)), _nonce, _ct, _ad), _6:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _t.errorf(((("#%d: Open was successful after altering ciphertext" : GoString))), Go.toInterface(_i));
                };
            };
            if (_ct != null) (_ct != null ? _ct[((0 : GoInt))] : ((0 : GoUInt8))) ^ (((128 : GoUInt8)));
        };
    }
function testGCMInvalidTagSize(_t:stdgo.testing.Testing.T_):Void {
        var __tmp__ = stdgo.encoding.hex.Hex.decodeString(((("ab72c77b97cb5fe9a382d9fe81ffdbed" : GoString)))), _key:Slice<GoUInt8> = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo.crypto.aes.Aes.newCipher(_key), _aes:Block = __tmp__._0, _1:stdgo.Error = __tmp__._1;
        for (_2 => _tagSize in ((new Slice<GoInt>(((0 : GoInt)), ((1 : GoInt)), _aes.blockSize() + ((1 : GoInt))) : Slice<GoInt>))) {
            var __tmp__ = stdgo.crypto.cipher.Cipher.newGCMWithTagSize(_aes, _tagSize), _aesgcm:AEAD = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_aesgcm != null) || (_err == null)) {
                _t.fatalf(((("NewGCMWithNonceAndTagSize was successful with an invalid %d-byte tag size" : GoString))), Go.toInterface(_tagSize));
            };
        };
    }
function testTagFailureOverwrite(_t:stdgo.testing.Testing.T_):Void {
        var __tmp__ = stdgo.encoding.hex.Hex.decodeString(((("ab72c77b97cb5fe9a382d9fe81ffdbed" : GoString)))), _key:Slice<GoUInt8> = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo.encoding.hex.Hex.decodeString(((("54cc7dc2c37ec006bcc6d1db" : GoString)))), _nonce:Slice<GoUInt8> = __tmp__._0, _1:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo.encoding.hex.Hex.decodeString(((("0e1bde206a07a9c2c1b65300f8c649972b4401346697138c7a4891ee59867d0c" : GoString)))), _ciphertext:Slice<GoUInt8> = __tmp__._0, _2:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo.crypto.aes.Aes.newCipher(_key), _aes:Block = __tmp__._0, _3:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo.crypto.cipher.Cipher.newGCM(_aes), _aesgcm:AEAD = __tmp__._0, _4:stdgo.Error = __tmp__._1;
        var _dst:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... (((_ciphertext != null ? _ciphertext.length : ((0 : GoInt))) - ((16 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        for (_i => _ in _dst) {
            if (_dst != null) _dst[_i] = ((42 : GoUInt8));
        };
        var __tmp__ = _aesgcm.open(((_dst.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>)), _nonce, _ciphertext, ((null : Slice<GoUInt8>))), _result:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _t.fatal(Go.toInterface(((("Bad Open still resulted in nil error." : GoString)))));
        };
        if (_result != null) {
            _t.fatal(Go.toInterface(((("Failed Open returned non-nil result." : GoString)))));
        };
        for (_i => _ in _dst) {
            if ((_dst != null ? _dst[_i] : ((0 : GoUInt8))) != ((0 : GoUInt8))) {
                _t.fatal(Go.toInterface(((("Failed Open didn\'t zero dst buffer" : GoString)))));
            };
        };
    }
function testGCMCounterWrap(_t:stdgo.testing.Testing.T_):Void {
        var _tests:Slice<stdgo.crypto.cipher_test.Cipher_test.T__struct_3> = ((new Slice<stdgo.crypto.cipher_test.Cipher_test.T__struct_3>(((new stdgo.crypto.cipher_test.Cipher_test.T__struct_3(((("0fa72e25" : GoString))), ((("37e1948cdfff09fbde0c40ad99fee4a7" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_3)), ((new stdgo.crypto.cipher_test.Cipher_test.T__struct_3(((("afe05cc1" : GoString))), ((("438f3aa9fee5e54903b1927bca26bbdf" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_3)), ((new stdgo.crypto.cipher_test.Cipher_test.T__struct_3(((("9ffecbef" : GoString))), ((("7b88ca424df9703e9e8611071ec7e16e" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_3)), ((new stdgo.crypto.cipher_test.Cipher_test.T__struct_3(((("ffc3e5b3" : GoString))), ((("38d49c86e0abe853ac250e66da54c01a" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_3)), ((new stdgo.crypto.cipher_test.Cipher_test.T__struct_3(((("cfdd729d" : GoString))), ((("e08402eaac36a1a402e09b1bd56500e8" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_3)), ((new stdgo.crypto.cipher_test.Cipher_test.T__struct_3(((("010ae3d486" : GoString))), ((("5405bb490b1f95d01e2ba735687154bc" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_3)), ((new stdgo.crypto.cipher_test.Cipher_test.T__struct_3(((("01b1107a9d" : GoString))), ((("939a585f342e01e17844627492d44dbf" : GoString)))) : stdgo.crypto.cipher_test.Cipher_test.T__struct_3))) : Slice<stdgo.crypto.cipher_test.Cipher_test.T__struct_3>));
        var __tmp__ = stdgo.crypto.aes.Aes.newCipher(new Slice<GoUInt8>(...[for (i in 0 ... ((((16 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))])), _key:Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        var _plaintext:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((273 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        for (_i => _test in _tests) {
            var __tmp__ = stdgo.encoding.hex.Hex.decodeString(_test._nonce), _nonce:Slice<GoUInt8> = __tmp__._0, _0:stdgo.Error = __tmp__._1;
            var __tmp__ = stdgo.encoding.hex.Hex.decodeString(_test._tag), _want:Slice<GoUInt8> = __tmp__._0, _1:stdgo.Error = __tmp__._1;
            var __tmp__ = stdgo.crypto.cipher.Cipher.newGCMWithNonceSize(_key, (_nonce != null ? _nonce.length : ((0 : GoInt)))), _aead:AEAD = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            var _got:Slice<GoUInt8> = _aead.seal(((null : Slice<GoUInt8>)), _nonce, _plaintext, ((null : Slice<GoUInt8>)));
            if (!stdgo.bytes.Bytes.equal(((_got.__slice__((_plaintext != null ? _plaintext.length : ((0 : GoInt)))) : Slice<GoUInt8>)), _want)) {
                _t.errorf(((("test[%v]: got: %x, want: %x" : GoString))), Go.toInterface(_i), Go.toInterface(((_got.__slice__((_plaintext != null ? _plaintext.length : ((0 : GoInt)))) : Slice<GoUInt8>))), Go.toInterface(_want));
            };
            {
                var __tmp__ = _aead.open(((null : Slice<GoUInt8>)), _nonce, _got, ((null : Slice<GoUInt8>)));
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.errorf(((("test[%v]: authentication failed" : GoString))), Go.toInterface(_i));
            };
        };
    }
function _wrap(_b:Block):Block {
        return ((new stdgo.crypto.cipher_test.Cipher_test.T_wrapper(_b) : stdgo.crypto.cipher_test.Cipher_test.T_wrapper));
    }
@:structInit class T_pair_testGCMAsm_0 {
    public var _align : GoInt = ((0 : GoInt));
    public var _length : GoInt = ((0 : GoInt));
    public function new(?_align:GoInt, ?_length:GoInt) {
        if (_align != null) this._align = _align;
        if (_length != null) this._length = _length;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_pair_testGCMAsm_0(_align, _length);
    }
}
function testGCMAsm(_t:stdgo.testing.Testing.T_):Void {
        var _newAESGCM:Slice<GoUInt8> -> { var _0 : AEAD; var _1 : AEAD; var _2 : stdgo.Error; } = function(_key:Slice<GoByte>):{ var _0 : AEAD; var _1 : AEAD; var _2 : Error; } {
            var _asm:AEAD = ((null : AEAD)), _generic:AEAD = ((null : AEAD)), _err:Error = ((null : stdgo.Error));
            var __tmp__ = stdgo.crypto.aes.Aes.newCipher(((_key.__slice__(0) : Slice<GoUInt8>))), _block:Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : ((null : AEAD)), _1 : ((null : AEAD)), _2 : _err };
            };
            {
                var __tmp__ = stdgo.crypto.cipher.Cipher.newGCM(_block);
                _asm = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : ((null : AEAD)), _1 : ((null : AEAD)), _2 : _err };
            };
            {
                var __tmp__ = stdgo.crypto.cipher.Cipher.newGCM(_wrap(_block));
                _generic = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : ((null : AEAD)), _1 : ((null : AEAD)), _2 : _err };
            };
            return { _0 : _asm, _1 : _generic, _2 : ((null : stdgo.Error)) };
        };
        var _key:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
        var __tmp__ = _newAESGCM(((_key.__slice__(0) : Slice<GoUInt8>))), _asm:AEAD = __tmp__._0, _generic:AEAD = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        if (stdgo.reflect.Reflect.typeOf(Go.toInterface(_asm)) == stdgo.reflect.Reflect.typeOf(Go.toInterface(_generic))) {
            _t.skipf(((("no assembly implementation of GCM" : GoString))));
        };
        {};
        var _lengths:Slice<GoInt> = ((new Slice<GoInt>(((0 : GoInt)), ((156 : GoInt)), ((8192 : GoInt)), ((8193 : GoInt)), ((8208 : GoInt))) : Slice<GoInt>));
        var _keySizes:Slice<GoInt> = ((new Slice<GoInt>(((16 : GoInt)), ((24 : GoInt)), ((32 : GoInt))) : Slice<GoInt>));
        var _alignments:Slice<GoInt> = ((new Slice<GoInt>(((0 : GoInt)), ((1 : GoInt)), ((2 : GoInt)), ((3 : GoInt))) : Slice<GoInt>));
        if (stdgo.testing.Testing.short()) {
            _keySizes = ((new Slice<GoInt>(((16 : GoInt))) : Slice<GoInt>));
            _alignments = ((new Slice<GoInt>(((1 : GoInt))) : Slice<GoInt>));
        };
        var _perms:Slice<stdgo.crypto.cipher_test.Cipher_test.T_pair_testGCMAsm_0> = new Slice<stdgo.crypto.cipher_test.Cipher_test.T_pair_testGCMAsm_0>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new stdgo.crypto.cipher_test.Cipher_test.T_pair_testGCMAsm_0()]);
        for (_0 => _l in _lengths) {
            for (_1 => _a in _alignments) {
                if ((_a != ((0 : GoInt))) && (_l == ((0 : GoInt)))) {
                    continue;
                };
                _perms = (_perms != null ? _perms.__append__(((({ _align : _a, _length : _l } : stdgo.crypto.cipher_test.Cipher_test.T_pair_testGCMAsm_0)) == null ? null : (({ _align : _a, _length : _l } : stdgo.crypto.cipher_test.Cipher_test.T_pair_testGCMAsm_0)).__copy__())) : new Slice<stdgo.crypto.cipher_test.Cipher_test.T_pair_testGCMAsm_0>(((({ _align : _a, _length : _l } : stdgo.crypto.cipher_test.Cipher_test.T_pair_testGCMAsm_0)) == null ? null : (({ _align : _a, _length : _l } : stdgo.crypto.cipher_test.Cipher_test.T_pair_testGCMAsm_0)).__copy__())));
            };
        };
        var _test:(GoInt, Slice<GoUInt8>, Slice<GoUInt8>) -> stdgo.Error = function(_ks:GoInt, _pt:Slice<GoByte>, _ad:Slice<GoByte>):Error {
            var _key:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_ks : GoInt)).toBasic()) ((0 : GoUInt8))]);
            {
                var __tmp__ = stdgo.io.Io.readFull(stdgo.crypto.rand.Rand.reader, _key), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            var __tmp__ = _newAESGCM(_key), _asm:AEAD = __tmp__._0, _generic:AEAD = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return _err;
            };
            {
                var __tmp__ = stdgo.io.Io.readFull(stdgo.crypto.rand.Rand.reader, _pt), _1:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = stdgo.io.Io.readFull(stdgo.crypto.rand.Rand.reader, _ad), _2:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            var _nonce:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((12 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            {
                var __tmp__ = stdgo.io.Io.readFull(stdgo.crypto.rand.Rand.reader, _nonce), _3:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
            };
            var _want:Slice<GoUInt8> = _generic.seal(((null : Slice<GoUInt8>)), _nonce, _pt, _ad);
            var _got:Slice<GoUInt8> = _asm.seal(((null : Slice<GoUInt8>)), _nonce, _pt, _ad);
            if (!stdgo.bytes.Bytes.equal(_want, _got)) {
                return stdgo.errors.Errors.new_(((("incorrect Seal output" : GoString))));
            };
            {
                var __tmp__ = _asm.open(((null : Slice<GoUInt8>)), _nonce, _want, _ad);
                _got = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return stdgo.errors.Errors.new_(((("authentication failed" : GoString))));
            };
            if (!stdgo.bytes.Bytes.equal(_pt, _got)) {
                return stdgo.errors.Errors.new_(((("incorrect Open output" : GoString))));
            };
            return ((null : stdgo.Error));
        };
        for (_2 => _a in _perms) {
            var _ad:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_a._align + _a._length : GoInt)).toBasic()) ((0 : GoUInt8))]);
            _ad = ((_ad.__slice__(_a._align) : Slice<GoUInt8>));
            for (_3 => _p in _perms) {
                var _pt:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_p._align + _p._length : GoInt)).toBasic()) ((0 : GoUInt8))]);
                _pt = ((_pt.__slice__(_p._align) : Slice<GoUInt8>));
                for (_4 => _ks in _keySizes) {
                    {
                        var _err:stdgo.Error = _test(_ks, _pt, _ad);
                        if (_err != null) {
                            _t.error(Go.toInterface(_err));
                            _t.errorf(((("\tkey size: %v" : GoString))), Go.toInterface(_ks));
                            _t.errorf(((("\tplaintext alignment: %v" : GoString))), Go.toInterface(_p._align));
                            _t.errorf(((("\tplaintext length: %v" : GoString))), Go.toInterface(_p._length));
                            _t.errorf(((("\tadditionalData alignment: %v" : GoString))), Go.toInterface(_a._align));
                            _t.fatalf(((("\tadditionalData length: %v" : GoString))), Go.toInterface(_a._length));
                        };
                    };
                };
            };
        };
    }
function testOFB(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _ofbTests) {
            var _test:GoString = _tt._name;
            var __tmp__ = stdgo.crypto.aes.Aes.newCipher(_tt._key), _c:Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(((("%s: NewCipher(%d bytes) = %s" : GoString))), Go.toInterface(_test), Go.toInterface((_tt._key != null ? _tt._key.length : ((0 : GoInt)))), Go.toInterface(_err));
                continue;
            };
            {
                var _j:GoInt = ((0 : GoInt));
                Go.cfor(_j <= ((5 : GoInt)), _j = _j + (((5 : GoInt))), {
                    var _plaintext:Slice<GoUInt8> = ((_tt._in.__slice__(((0 : GoInt)), (_tt._in != null ? _tt._in.length : ((0 : GoInt))) - _j) : Slice<GoUInt8>));
                    var _ofb:Stream = stdgo.crypto.cipher.Cipher.newOFB(_c, _tt._iv);
                    var _ciphertext:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... (((_plaintext != null ? _plaintext.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
                    _ofb.xorkeyStream(_ciphertext, _plaintext);
                    if (!stdgo.bytes.Bytes.equal(_ciphertext, ((_tt._out.__slice__(0, (_plaintext != null ? _plaintext.length : ((0 : GoInt)))) : Slice<GoUInt8>)))) {
                        _t.errorf(((("%s/%d: encrypting\ninput % x\nhave % x\nwant % x" : GoString))), Go.toInterface(_test), Go.toInterface((_plaintext != null ? _plaintext.length : ((0 : GoInt)))), Go.toInterface(_plaintext), Go.toInterface(_ciphertext), Go.toInterface(_tt._out));
                    };
                });
            };
            {
                var _j:GoInt = ((0 : GoInt));
                Go.cfor(_j <= ((5 : GoInt)), _j = _j + (((5 : GoInt))), {
                    var _ciphertext:Slice<GoUInt8> = ((_tt._out.__slice__(((0 : GoInt)), (_tt._in != null ? _tt._in.length : ((0 : GoInt))) - _j) : Slice<GoUInt8>));
                    var _ofb:Stream = stdgo.crypto.cipher.Cipher.newOFB(_c, _tt._iv);
                    var _plaintext:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... (((_ciphertext != null ? _ciphertext.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
                    _ofb.xorkeyStream(_plaintext, _ciphertext);
                    if (!stdgo.bytes.Bytes.equal(_plaintext, ((_tt._in.__slice__(0, (_ciphertext != null ? _ciphertext.length : ((0 : GoInt)))) : Slice<GoUInt8>)))) {
                        _t.errorf(((("%s/%d: decrypting\nhave % x\nwant % x" : GoString))), Go.toInterface(_test), Go.toInterface((_ciphertext != null ? _ciphertext.length : ((0 : GoInt)))), Go.toInterface(_plaintext), Go.toInterface(_tt._in));
                    };
                });
            };
            if (_t.failed()) {
                break;
            };
        };
    }
function testXOR(_t:stdgo.testing.Testing.T_):Void {
        {
            var _j:GoInt = ((1 : GoInt));
            Go.cfor(_j <= ((1024 : GoInt)), _j++, {
                if (stdgo.testing.Testing.short() && (_j > ((16 : GoInt)))) {
                    break;
                };
                {
                    var _alignP:GoInt = ((0 : GoInt));
                    Go.cfor(_alignP < ((2 : GoInt)), _alignP++, {
                        {
                            var _alignQ:GoInt = ((0 : GoInt));
                            Go.cfor(_alignQ < ((2 : GoInt)), _alignQ++, {
                                {
                                    var _alignD:GoInt = ((0 : GoInt));
                                    Go.cfor(_alignD < ((2 : GoInt)), _alignD++, {
                                        var _p:Slice<GoUInt8> = ((new Slice<GoUInt8>(...[for (i in 0 ... ((_j : GoInt)).toBasic()) ((0 : GoUInt8))]).__slice__(_alignP) : Slice<GoUInt8>));
                                        var _q:Slice<GoUInt8> = ((new Slice<GoUInt8>(...[for (i in 0 ... ((_j : GoInt)).toBasic()) ((0 : GoUInt8))]).__slice__(_alignQ) : Slice<GoUInt8>));
                                        var _d1:Slice<GoUInt8> = ((new Slice<GoUInt8>(...[for (i in 0 ... ((_j + _alignD : GoInt)).toBasic()) ((0 : GoUInt8))]).__slice__(_alignD) : Slice<GoUInt8>));
                                        var _d2:Slice<GoUInt8> = ((new Slice<GoUInt8>(...[for (i in 0 ... ((_j + _alignD : GoInt)).toBasic()) ((0 : GoUInt8))]).__slice__(_alignD) : Slice<GoUInt8>));
                                        {
                                            var __tmp__ = stdgo.io.Io.readFull(stdgo.crypto.rand.Rand.reader, _p), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                            if (_err != null) {
                                                _t.fatal(Go.toInterface(_err));
                                            };
                                        };
                                        {
                                            var __tmp__ = stdgo.io.Io.readFull(stdgo.crypto.rand.Rand.reader, _q), _1:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                            if (_err != null) {
                                                _t.fatal(Go.toInterface(_err));
                                            };
                                        };
                                        stdgo.crypto.cipher.Cipher.xorBytes(_d1, _p, _q);
                                        var _n:GoInt = _min(_p, _q);
                                        {
                                            var _i:GoInt = ((0 : GoInt));
                                            Go.cfor(_i < _n, _i++, {
                                                if (_d2 != null) _d2[_i] = (_p != null ? _p[_i] : ((0 : GoUInt8))) ^ (_q != null ? _q[_i] : ((0 : GoUInt8)));
                                            });
                                        };
                                        if (!stdgo.bytes.Bytes.equal(_d1, _d2)) {
                                            _t.logf(((("p: %#v" : GoString))), Go.toInterface(_p));
                                            _t.logf(((("q: %#v" : GoString))), Go.toInterface(_q));
                                            _t.logf(((("expect: %#v" : GoString))), Go.toInterface(_d2));
                                            _t.logf(((("result: %#v" : GoString))), Go.toInterface(_d1));
                                            _t.fatal(Go.toInterface(((("not equal" : GoString)))));
                                        };
                                    });
                                };
                            });
                        };
                    });
                };
            });
        };
    }
function _min(_a:Slice<GoByte>, _b:Slice<GoByte>):GoInt {
        var _n:GoInt = (_a != null ? _a.length : ((0 : GoInt)));
        if ((_b != null ? _b.length : ((0 : GoInt))) < _n) {
            _n = (_b != null ? _b.length : ((0 : GoInt)));
        };
        return _n;
    }
function benchmarkXORBytes(_b:stdgo.testing.Testing.B):Void {
        var _dst:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((32768 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _data0:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((32768 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _data1:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((32768 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _sizes:Slice<GoInt64> = ((new Slice<GoInt64>(((8 : GoInt64)), ((128 : GoInt64)), ((2048 : GoInt64)), ((32768 : GoInt64))) : Slice<GoInt64>));
        for (_0 => _size in _sizes) {
            _b.run(stdgo.fmt.Fmt.sprintf(((("%dBytes" : GoString))), Go.toInterface(_size)), function(_b:stdgo.testing.Testing.B):Void {
                var _s0:Slice<GoUInt8> = ((_data0.__slice__(0, _size) : Slice<GoUInt8>));
                var _s1:Slice<GoUInt8> = ((_data1.__slice__(0, _size) : Slice<GoUInt8>));
                _b.setBytes(((_size : GoInt64)));
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < _b.n, _i++, {
                        stdgo.crypto.cipher.Cipher.xorBytes(_dst, _s0, _s1);
                    });
                };
            });
        };
    }
class T_wrapper_wrapper {
    @:keep
    public function decrypt(_dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        var _w = __t__;
        _w;
        _w._block.decrypt(_dst, _src);
    }
    @:keep
    public function encrypt(_dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        var _w = __t__;
        _w;
        _w._block.encrypt(_dst, _src);
    }
    @:keep
    public function blockSize():GoInt {
        var _w = __t__;
        _w;
        return _w._block.blockSize();
    }
    public var __t__ : T_wrapper;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_wrapper_static_extension {
    @:keep
    public static function decrypt(_w:Ref<stdgo.crypto.cipher_test.Cipher_test.T_wrapper>, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        _w;
        _w._block.decrypt(_dst, _src);
    }
    @:keep
    public static function encrypt(_w:Ref<stdgo.crypto.cipher_test.Cipher_test.T_wrapper>, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        _w;
        _w._block.encrypt(_dst, _src);
    }
    @:keep
    public static function blockSize(_w:Ref<stdgo.crypto.cipher_test.Cipher_test.T_wrapper>):GoInt {
        _w;
        return _w._block.blockSize();
    }
}
class T_ofbTest_wrapper {
    public var __t__ : T_ofbTest;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_0_wrapper {
    public var __t__ : T__struct_0;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_1_wrapper {
    public var __t__ : T__struct_1;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_2_wrapper {
    public var __t__ : T__struct_2;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_3_wrapper {
    public var __t__ : T__struct_3;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_noopBlock_wrapper {
    @:keep
    public function decrypt(_dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        var _ = __t__;
        Go.copySlice(_dst, _src);
    }
    @:keep
    public function encrypt(_dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        var _ = __t__;
        Go.copySlice(_dst, _src);
    }
    @:keep
    public function blockSize():GoInt {
        var _b = __t__;
        _b;
        return ((_b : GoInt));
    }
    public var __t__ : T_noopBlock;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_noopBlock_static_extension {
    @:keep
    public static function decrypt(_:stdgo.crypto.cipher_test.Cipher_test.T_noopBlock, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        Go.copySlice(_dst, _src);
    }
    @:keep
    public static function encrypt(_:stdgo.crypto.cipher_test.Cipher_test.T_noopBlock, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        Go.copySlice(_dst, _src);
    }
    @:keep
    public static function blockSize(_b:stdgo.crypto.cipher_test.Cipher_test.T_noopBlock):GoInt {
        _b;
        return ((_b : GoInt));
    }
}
class T_pair_testGCMAsm_0_wrapper {
    public var __t__ : T_pair_testGCMAsm_0;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
