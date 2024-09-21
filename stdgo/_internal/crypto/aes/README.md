# Module: `stdgo._internal.crypto.aes`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _decryptBlockGo(_xk:stdgo.Slice<stdgo.GoUInt32>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void`](<#function-_decryptblockgo>)

- [`function _encryptBlockGo(_xk:stdgo.Slice<stdgo.GoUInt32>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void`](<#function-_encryptblockgo>)

- [`function _expandKey(_key:stdgo.Slice<stdgo.GoUInt8>, _enc:stdgo.Slice<stdgo.GoUInt32>, _dec:stdgo.Slice<stdgo.GoUInt32>):Void`](<#function-_expandkey>)

- [`function _expandKeyGo(_key:stdgo.Slice<stdgo.GoUInt8>, _enc:stdgo.Slice<stdgo.GoUInt32>, _dec:stdgo.Slice<stdgo.GoUInt32>):Void`](<#function-_expandkeygo>)

- [`function _newCipher(_key:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo._internal.crypto.cipher.Block;
}`](<#function-_newcipher>)

- [`function _newCipherGeneric(_key:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo._internal.crypto.cipher.Block;
}`](<#function-_newciphergeneric>)

- [`function _rotw(_w:stdgo.GoUInt32):stdgo.GoUInt32`](<#function-_rotw>)

- [`function _subw(_w:stdgo.GoUInt32):stdgo.GoUInt32`](<#function-_subw>)

- [`function newCipher(_key:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo._internal.crypto.cipher.Block;
}`](<#function-newcipher>)

- [class T\_aesCipher](<#class-t_aescipher>)

  - [`function new(?_enc:stdgo.Slice<stdgo.GoUInt32>, ?_dec:stdgo.Slice<stdgo.GoUInt32>):Void`](<#t_aescipher-function-new>)

- [typedef KeySizeError](<#typedef-keysizeerror>)

- [typedef T\_cbcDecAble](<#typedef-t_cbcdecable>)

- [typedef T\_cbcEncAble](<#typedef-t_cbcencable>)

- [typedef T\_ctrAble](<#typedef-t_ctrable>)

- [typedef T\_gcmAble](<#typedef-t_gcmable>)

# Constants


```haxe
import stdgo._internal.crypto.aes.Aes_newCipher
```


```haxe
final _poly:stdgo.GoUInt64 = ((283i64 : stdgo.GoUInt64))
```


```haxe
final blockSize:stdgo.GoUInt64 = ((16i64 : stdgo.GoUInt64))
```


# Variables


```haxe
import stdgo._internal.crypto.aes.Aes_newCipher
```


```haxe
var _powx:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _sbox0:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _sbox1:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _te0:stdgo.GoArray<stdgo.GoUInt32>
```


```haxe
var _te1:stdgo.GoArray<stdgo.GoUInt32>
```


```haxe
var _te2:stdgo.GoArray<stdgo.GoUInt32>
```


```haxe
var _te3:stdgo.GoArray<stdgo.GoUInt32>
```


```haxe
var _td0:stdgo.GoArray<stdgo.GoUInt32>
```


```haxe
var _td1:stdgo.GoArray<stdgo.GoUInt32>
```


```haxe
var _td2:stdgo.GoArray<stdgo.GoUInt32>
```


```haxe
var _td3:stdgo.GoArray<stdgo.GoUInt32>
```


# Functions


```haxe
import stdgo._internal.crypto.aes.Aes_newCipher
```


## function \_decryptBlockGo


```haxe
function _decryptBlockGo(_xk:stdgo.Slice<stdgo.GoUInt32>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Aes_newCipher.hx#L2>)


## function \_encryptBlockGo


```haxe
function _encryptBlockGo(_xk:stdgo.Slice<stdgo.GoUInt32>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Aes_newCipher.hx#L2>)


## function \_expandKey


```haxe
function _expandKey(_key:stdgo.Slice<stdgo.GoUInt8>, _enc:stdgo.Slice<stdgo.GoUInt32>, _dec:stdgo.Slice<stdgo.GoUInt32>):Void
```


[\(view code\)](<./Aes_newCipher.hx#L2>)


## function \_expandKeyGo


```haxe
function _expandKeyGo(_key:stdgo.Slice<stdgo.GoUInt8>, _enc:stdgo.Slice<stdgo.GoUInt32>, _dec:stdgo.Slice<stdgo.GoUInt32>):Void
```


[\(view code\)](<./Aes_newCipher.hx#L2>)


## function \_newCipher


```haxe
function _newCipher(_key:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo._internal.crypto.cipher.Block;
}
```


[\(view code\)](<./Aes_newCipher.hx#L2>)


## function \_newCipherGeneric


```haxe
function _newCipherGeneric(_key:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo._internal.crypto.cipher.Block;
}
```


[\(view code\)](<./Aes_newCipher.hx#L2>)


## function \_rotw


```haxe
function _rotw(_w:stdgo.GoUInt32):stdgo.GoUInt32
```


[\(view code\)](<./Aes_newCipher.hx#L2>)


## function \_subw


```haxe
function _subw(_w:stdgo.GoUInt32):stdgo.GoUInt32
```


[\(view code\)](<./Aes_newCipher.hx#L2>)


## function newCipher


```haxe
function newCipher(_key:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo._internal.crypto.cipher.Block;
}
```


[\(view code\)](<./Aes_newCipher.hx#L2>)


# Classes


```haxe
import stdgo._internal.crypto.aes.*
```


## class T\_aesCipher


```haxe
var _dec:stdgo.Slice<stdgo.GoUInt32>
```


```haxe
var _enc:stdgo.Slice<stdgo.GoUInt32>
```


### T\_aesCipher function new


```haxe
function new(?_enc:stdgo.Slice<stdgo.GoUInt32>, ?_dec:stdgo.Slice<stdgo.GoUInt32>):Void
```


[\(view code\)](<./Aes_T_aesCipher.hx#L5>)


# Typedefs


```haxe
import stdgo._internal.crypto.aes.*
```


## typedef KeySizeError


```haxe
typedef KeySizeError = stdgo.GoInt;
```


## typedef T\_cbcDecAble


```haxe
typedef T_cbcDecAble = {
	public function newCBCDecrypter(_iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.BlockMode;
};
```


## typedef T\_cbcEncAble


```haxe
typedef T_cbcEncAble = {
	public function newCBCEncrypter(_iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.BlockMode;
};
```


## typedef T\_ctrAble


```haxe
typedef T_ctrAble = {
	public function newCTR(_iv:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.cipher.Stream;
};
```


## typedef T\_gcmAble


```haxe
typedef T_gcmAble = {
	public function newGCM(_nonceSize:stdgo.GoInt, _tagSize:stdgo.GoInt):{
		_1:stdgo.Error;
		_0:stdgo._internal.crypto.cipher.AEAD;
	};
};
```


