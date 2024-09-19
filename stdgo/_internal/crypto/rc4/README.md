# Module: `stdgo._internal.crypto.rc4`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [`function newCipher(_key:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.crypto.rc4.Cipher>;
}`](<#function-newcipher>)

- [class Cipher](<#class-cipher>)

  - [`function new(?_s:stdgo.GoArray<stdgo.GoUInt32>, ?_i:stdgo.GoUInt8, ?_j:stdgo.GoUInt8):Void`](<#cipher-function-new>)

- [typedef KeySizeError](<#typedef-keysizeerror>)

# Functions


```haxe
import stdgo._internal.crypto.rc4.Rc4_newCipher
```


## function newCipher


```haxe
function newCipher(_key:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.crypto.rc4.Cipher>;
}
```


[\(view code\)](<./Rc4_newCipher.hx#L2>)


# Classes


```haxe
import stdgo._internal.crypto.rc4.*
```


## class Cipher


```haxe
var _i:stdgo.GoUInt8
```


```haxe
var _j:stdgo.GoUInt8
```


```haxe
var _s:stdgo.GoArray<stdgo.GoUInt32>
```


### Cipher function new


```haxe
function new(?_s:stdgo.GoArray<stdgo.GoUInt32>, ?_i:stdgo.GoUInt8, ?_j:stdgo.GoUInt8):Void
```


[\(view code\)](<./Rc4_Cipher.hx#L6>)


# Typedefs


```haxe
import stdgo._internal.crypto.rc4.*
```


## typedef KeySizeError


```haxe
typedef KeySizeError = stdgo.GoInt;
```


