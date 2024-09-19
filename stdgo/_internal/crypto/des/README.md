# Module: `stdgo._internal.crypto.des`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _cryptBlock(_subkeys:stdgo.Slice<stdgo.GoUInt64>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _decrypt:Bool):Void`](<#function-_cryptblock>)

- [`function _decryptBlock(_subkeys:stdgo.Slice<stdgo.GoUInt64>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void`](<#function-_decryptblock>)

- [`function _encryptBlock(_subkeys:stdgo.Slice<stdgo.GoUInt64>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void`](<#function-_encryptblock>)

- [`function _feistel(_l:stdgo.GoUInt32, _r:stdgo.GoUInt32, _k0:stdgo.GoUInt64, _k1:stdgo.GoUInt64):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}`](<#function-_feistel>)

- [`function _initFeistelBox():Void`](<#function-_initfeistelbox>)

- [`function _ksRotate(_in:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt32>`](<#function-_ksrotate>)

- [`function _permuteBlock(_src:stdgo.GoUInt64, _permutation:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64`](<#function-_permuteblock>)

- [`function _permuteFinalBlock(_block:stdgo.GoUInt64):stdgo.GoUInt64`](<#function-_permutefinalblock>)

- [`function _permuteInitialBlock(_block:stdgo.GoUInt64):stdgo.GoUInt64`](<#function-_permuteinitialblock>)

- [`function _unpack(_x:stdgo.GoUInt64):stdgo.GoUInt64`](<#function-_unpack>)

- [`function newCipher(_key:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo._internal.crypto.cipher.Block;
}`](<#function-newcipher>)

- [`function newTripleDESCipher(_key:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo._internal.crypto.cipher.Block;
}`](<#function-newtripledescipher>)

- [class T\_desCipher](<#class-t_descipher>)

  - [`function new(?_subkeys:stdgo.GoArray<stdgo.GoUInt64>):Void`](<#t_descipher-function-new>)

- [class T\_tripleDESCipher](<#class-t_tripledescipher>)

  - [`function new(?_cipher1:stdgo._internal.crypto.des.T_desCipher, ?_cipher2:stdgo._internal.crypto.des.T_desCipher, ?_cipher3:stdgo._internal.crypto.des.T_desCipher):Void`](<#t_tripledescipher-function-new>)

- [typedef KeySizeError](<#typedef-keysizeerror>)

# Constants


```haxe
import stdgo._internal.crypto.des.Des_newTripleDESCipher
```


```haxe
final blockSize:stdgo.GoUInt64 = ((8i64 : stdgo.GoUInt64))
```


# Variables


```haxe
import stdgo._internal.crypto.des.Des_newTripleDESCipher
```


```haxe
var _expansionFunction:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _feistelBox:stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt32>>
```


```haxe
var _feistelBoxOnce:stdgo._internal.sync.Once
```


```haxe
var _finalPermutation:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _initialPermutation:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _ksRotations:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _permutationFunction:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _permutedChoice1:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _permutedChoice2:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _sBoxes:stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt8>>>
```


# Functions


```haxe
import stdgo._internal.crypto.des.Des_newTripleDESCipher
```


## function \_cryptBlock


```haxe
function _cryptBlock(_subkeys:stdgo.Slice<stdgo.GoUInt64>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _decrypt:Bool):Void
```


[\(view code\)](<./Des_newTripleDESCipher.hx#L2>)


## function \_decryptBlock


```haxe
function _decryptBlock(_subkeys:stdgo.Slice<stdgo.GoUInt64>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Des_newTripleDESCipher.hx#L2>)


## function \_encryptBlock


```haxe
function _encryptBlock(_subkeys:stdgo.Slice<stdgo.GoUInt64>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Des_newTripleDESCipher.hx#L2>)


## function \_feistel


```haxe
function _feistel(_l:stdgo.GoUInt32, _r:stdgo.GoUInt32, _k0:stdgo.GoUInt64, _k1:stdgo.GoUInt64):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


[\(view code\)](<./Des_newTripleDESCipher.hx#L2>)


## function \_initFeistelBox


```haxe
function _initFeistelBox():Void
```


[\(view code\)](<./Des_newTripleDESCipher.hx#L2>)


## function \_ksRotate


```haxe
function _ksRotate(_in:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt32>
```


[\(view code\)](<./Des_newTripleDESCipher.hx#L2>)


## function \_permuteBlock


```haxe
function _permuteBlock(_src:stdgo.GoUInt64, _permutation:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64
```


[\(view code\)](<./Des_newTripleDESCipher.hx#L2>)


## function \_permuteFinalBlock


```haxe
function _permuteFinalBlock(_block:stdgo.GoUInt64):stdgo.GoUInt64
```


[\(view code\)](<./Des_newTripleDESCipher.hx#L2>)


## function \_permuteInitialBlock


```haxe
function _permuteInitialBlock(_block:stdgo.GoUInt64):stdgo.GoUInt64
```


[\(view code\)](<./Des_newTripleDESCipher.hx#L2>)


## function \_unpack


```haxe
function _unpack(_x:stdgo.GoUInt64):stdgo.GoUInt64
```


[\(view code\)](<./Des_newTripleDESCipher.hx#L2>)


## function newCipher


```haxe
function newCipher(_key:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo._internal.crypto.cipher.Block;
}
```


[\(view code\)](<./Des_newTripleDESCipher.hx#L2>)


## function newTripleDESCipher


```haxe
function newTripleDESCipher(_key:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo._internal.crypto.cipher.Block;
}
```


[\(view code\)](<./Des_newTripleDESCipher.hx#L2>)


# Classes


```haxe
import stdgo._internal.crypto.des.*
```


## class T\_desCipher


```haxe
var _subkeys:stdgo.GoArray<stdgo.GoUInt64>
```


### T\_desCipher function new


```haxe
function new(?_subkeys:stdgo.GoArray<stdgo.GoUInt64>):Void
```


[\(view code\)](<./Des_T_desCipher.hx#L4>)


## class T\_tripleDESCipher


```haxe
var _cipher1:stdgo._internal.crypto.des.T_desCipher
```


```haxe
var _cipher2:stdgo._internal.crypto.des.T_desCipher
```


```haxe
var _cipher3:stdgo._internal.crypto.des.T_desCipher
```


### T\_tripleDESCipher function new


```haxe
function new(?_cipher1:stdgo._internal.crypto.des.T_desCipher, ?_cipher2:stdgo._internal.crypto.des.T_desCipher, ?_cipher3:stdgo._internal.crypto.des.T_desCipher):Void
```


[\(view code\)](<./Des_T_tripleDESCipher.hx#L6>)


# Typedefs


```haxe
import stdgo._internal.crypto.des.*
```


## typedef KeySizeError


```haxe
typedef KeySizeError = stdgo.GoInt;
```


