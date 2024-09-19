# Module: `stdgo._internal.crypto.internal.boring`

[(view library index)](../../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [`function decryptRSANoPadding(_priv:stdgo.Ref<stdgo._internal.crypto.internal.boring.PrivateKeyRSA>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}`](<#function-decryptrsanopadding>)

- [`function decryptRSAOAEP(_h:stdgo._internal.hash.Hash, _mgfHash:stdgo._internal.hash.Hash, _priv:stdgo.Ref<stdgo._internal.crypto.internal.boring.PrivateKeyRSA>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _label:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}`](<#function-decryptrsaoaep>)

- [`function decryptRSAPKCS1(_priv:stdgo.Ref<stdgo._internal.crypto.internal.boring.PrivateKeyRSA>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}`](<#function-decryptrsapkcs1>)

- [`function ecdh(_0:stdgo.Ref<stdgo._internal.crypto.internal.boring.PrivateKeyECDH>, _1:stdgo.Ref<stdgo._internal.crypto.internal.boring.PublicKeyECDH>):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}`](<#function-ecdh>)

- [`function encryptRSANoPadding(_pub:stdgo.Ref<stdgo._internal.crypto.internal.boring.PublicKeyRSA>, _msg:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}`](<#function-encryptrsanopadding>)

- [`function encryptRSAOAEP(_h:stdgo._internal.hash.Hash, _mgfHash:stdgo._internal.hash.Hash, _pub:stdgo.Ref<stdgo._internal.crypto.internal.boring.PublicKeyRSA>, _msg:stdgo.Slice<stdgo.GoUInt8>, _label:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}`](<#function-encryptrsaoaep>)

- [`function encryptRSAPKCS1(_pub:stdgo.Ref<stdgo._internal.crypto.internal.boring.PublicKeyRSA>, _msg:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}`](<#function-encryptrsapkcs1>)

- [`function generateKeyECDH(_0:stdgo.GoString):{
	_2:stdgo.Error;
	_1:stdgo.Slice<stdgo.GoUInt8>;
	_0:stdgo.Ref<stdgo._internal.crypto.internal.boring.PrivateKeyECDH>;
}`](<#function-generatekeyecdh>)

- [`function generateKeyECDSA(_curve:stdgo.GoString):{
	_3:stdgo.Error;
	_2:stdgo._internal.crypto.internal.boring.BigInt;
	_1:stdgo._internal.crypto.internal.boring.BigInt;
	_0:stdgo._internal.crypto.internal.boring.BigInt;
}`](<#function-generatekeyecdsa>)

- [`function generateKeyRSA(_bits:stdgo.GoInt):{
	_8:stdgo.Error;
	_7:stdgo._internal.crypto.internal.boring.BigInt;
	_6:stdgo._internal.crypto.internal.boring.BigInt;
	_5:stdgo._internal.crypto.internal.boring.BigInt;
	_4:stdgo._internal.crypto.internal.boring.BigInt;
	_3:stdgo._internal.crypto.internal.boring.BigInt;
	_2:stdgo._internal.crypto.internal.boring.BigInt;
	_1:stdgo._internal.crypto.internal.boring.BigInt;
	_0:stdgo._internal.crypto.internal.boring.BigInt;
}`](<#function-generatekeyrsa>)

- [`function newAESCipher(_key:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo._internal.crypto.cipher.Block;
}`](<#function-newaescipher>)

- [`function newGCMTLS(_0:stdgo._internal.crypto.cipher.Block):{
	_1:stdgo.Error;
	_0:stdgo._internal.crypto.cipher.AEAD;
}`](<#function-newgcmtls>)

- [`function newHMAC(_h:():stdgo._internal.hash.Hash, _key:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.hash.Hash`](<#function-newhmac>)

- [`function newPrivateKeyECDH(_0:stdgo.GoString, _1:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.crypto.internal.boring.PrivateKeyECDH>;
}`](<#function-newprivatekeyecdh>)

- [`function newPrivateKeyECDSA(_curve:stdgo.GoString, x:stdgo._internal.crypto.internal.boring.BigInt, y:stdgo._internal.crypto.internal.boring.BigInt, d:stdgo._internal.crypto.internal.boring.BigInt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.crypto.internal.boring.PrivateKeyECDSA>;
}`](<#function-newprivatekeyecdsa>)

- [`function newPrivateKeyRSA(n:stdgo._internal.crypto.internal.boring.BigInt, e:stdgo._internal.crypto.internal.boring.BigInt, d:stdgo._internal.crypto.internal.boring.BigInt, p:stdgo._internal.crypto.internal.boring.BigInt, q:stdgo._internal.crypto.internal.boring.BigInt, dp:stdgo._internal.crypto.internal.boring.BigInt, dq:stdgo._internal.crypto.internal.boring.BigInt, qinv:stdgo._internal.crypto.internal.boring.BigInt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.crypto.internal.boring.PrivateKeyRSA>;
}`](<#function-newprivatekeyrsa>)

- [`function newPublicKeyECDH(_0:stdgo.GoString, _1:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.crypto.internal.boring.PublicKeyECDH>;
}`](<#function-newpublickeyecdh>)

- [`function newPublicKeyECDSA(_curve:stdgo.GoString, x:stdgo._internal.crypto.internal.boring.BigInt, y:stdgo._internal.crypto.internal.boring.BigInt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.crypto.internal.boring.PublicKeyECDSA>;
}`](<#function-newpublickeyecdsa>)

- [`function newPublicKeyRSA(n:stdgo._internal.crypto.internal.boring.BigInt, e:stdgo._internal.crypto.internal.boring.BigInt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.crypto.internal.boring.PublicKeyRSA>;
}`](<#function-newpublickeyrsa>)

- [`function newSHA1():stdgo._internal.hash.Hash`](<#function-newsha1>)

- [`function newSHA224():stdgo._internal.hash.Hash`](<#function-newsha224>)

- [`function newSHA256():stdgo._internal.hash.Hash`](<#function-newsha256>)

- [`function newSHA384():stdgo._internal.hash.Hash`](<#function-newsha384>)

- [`function newSHA512():stdgo._internal.hash.Hash`](<#function-newsha512>)

- [`function sha1(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8>`](<#function-sha1>)

- [`function sha224(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8>`](<#function-sha224>)

- [`function sha256(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8>`](<#function-sha256>)

- [`function sha384(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8>`](<#function-sha384>)

- [`function sha512(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8>`](<#function-sha512>)

- [`function signMarshalECDSA(_priv:stdgo.Ref<stdgo._internal.crypto.internal.boring.PrivateKeyECDSA>, _hash:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}`](<#function-signmarshalecdsa>)

- [`function signRSAPKCS1v15(_priv:stdgo.Ref<stdgo._internal.crypto.internal.boring.PrivateKeyRSA>, _h:stdgo._internal.crypto.Hash, _hashed:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}`](<#function-signrsapkcs1v15>)

- [`function signRSAPSS(_priv:stdgo.Ref<stdgo._internal.crypto.internal.boring.PrivateKeyRSA>, _h:stdgo._internal.crypto.Hash, _hashed:stdgo.Slice<stdgo.GoUInt8>, _saltLen:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}`](<#function-signrsapss>)

- [`function unreachable():Void`](<#function-unreachable>)

- [`function unreachableExceptTests():Void`](<#function-unreachableexcepttests>)

- [`function verifyECDSA(_pub:stdgo.Ref<stdgo._internal.crypto.internal.boring.PublicKeyECDSA>, _hash:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>):Bool`](<#function-verifyecdsa>)

- [`function verifyRSAPKCS1v15(_pub:stdgo.Ref<stdgo._internal.crypto.internal.boring.PublicKeyRSA>, _h:stdgo._internal.crypto.Hash, _hashed:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error`](<#function-verifyrsapkcs1v15>)

- [`function verifyRSAPSS(_pub:stdgo.Ref<stdgo._internal.crypto.internal.boring.PublicKeyRSA>, _h:stdgo._internal.crypto.Hash, _hashed:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>, _saltLen:stdgo.GoInt):stdgo.Error`](<#function-verifyrsapss>)

- [class PrivateKeyECDH](<#class-privatekeyecdh>)

  - [`function new():Void`](<#privatekeyecdh-function-new>)

- [class PrivateKeyECDSA](<#class-privatekeyecdsa>)

  - [`function new(?__2:stdgo.GoInt):Void`](<#privatekeyecdsa-function-new>)

- [class PrivateKeyRSA](<#class-privatekeyrsa>)

  - [`function new(?__4:stdgo.GoInt):Void`](<#privatekeyrsa-function-new>)

- [class PublicKeyECDH](<#class-publickeyecdh>)

  - [`function new():Void`](<#publickeyecdh-function-new>)

- [class PublicKeyECDSA](<#class-publickeyecdsa>)

  - [`function new(?__1:stdgo.GoInt):Void`](<#publickeyecdsa-function-new>)

- [class PublicKeyRSA](<#class-publickeyrsa>)

  - [`function new(?__3:stdgo.GoInt):Void`](<#publickeyrsa-function-new>)

- [typedef BigInt](<#typedef-bigint>)

- [typedef T\_randReader](<#typedef-t_randreader>)

# Constants


```haxe
import stdgo._internal.crypto.internal.boring.Boring_verifyRSAPSS
```


```haxe
final _available:Bool = false
```


```haxe
final enabled:Bool = false
```


```haxe
final randReader:stdgo._internal.crypto.internal.boring.T_randReader = ((0 : stdgo._internal.crypto.internal.boring.Boring_T_randReader.T_randReader))
```


# Functions


```haxe
import stdgo._internal.crypto.internal.boring.Boring_verifyRSAPSS
```


## function decryptRSANoPadding


```haxe
function decryptRSANoPadding(_priv:stdgo.Ref<stdgo._internal.crypto.internal.boring.PrivateKeyRSA>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function decryptRSAOAEP


```haxe
function decryptRSAOAEP(_h:stdgo._internal.hash.Hash, _mgfHash:stdgo._internal.hash.Hash, _priv:stdgo.Ref<stdgo._internal.crypto.internal.boring.PrivateKeyRSA>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _label:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function decryptRSAPKCS1


```haxe
function decryptRSAPKCS1(_priv:stdgo.Ref<stdgo._internal.crypto.internal.boring.PrivateKeyRSA>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function ecdh


```haxe
function ecdh(_0:stdgo.Ref<stdgo._internal.crypto.internal.boring.PrivateKeyECDH>, _1:stdgo.Ref<stdgo._internal.crypto.internal.boring.PublicKeyECDH>):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function encryptRSANoPadding


```haxe
function encryptRSANoPadding(_pub:stdgo.Ref<stdgo._internal.crypto.internal.boring.PublicKeyRSA>, _msg:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function encryptRSAOAEP


```haxe
function encryptRSAOAEP(_h:stdgo._internal.hash.Hash, _mgfHash:stdgo._internal.hash.Hash, _pub:stdgo.Ref<stdgo._internal.crypto.internal.boring.PublicKeyRSA>, _msg:stdgo.Slice<stdgo.GoUInt8>, _label:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function encryptRSAPKCS1


```haxe
function encryptRSAPKCS1(_pub:stdgo.Ref<stdgo._internal.crypto.internal.boring.PublicKeyRSA>, _msg:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function generateKeyECDH


```haxe
function generateKeyECDH(_0:stdgo.GoString):{
	_2:stdgo.Error;
	_1:stdgo.Slice<stdgo.GoUInt8>;
	_0:stdgo.Ref<stdgo._internal.crypto.internal.boring.PrivateKeyECDH>;
}
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function generateKeyECDSA


```haxe
function generateKeyECDSA(_curve:stdgo.GoString):{
	_3:stdgo.Error;
	_2:stdgo._internal.crypto.internal.boring.BigInt;
	_1:stdgo._internal.crypto.internal.boring.BigInt;
	_0:stdgo._internal.crypto.internal.boring.BigInt;
}
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function generateKeyRSA


```haxe
function generateKeyRSA(_bits:stdgo.GoInt):{
	_8:stdgo.Error;
	_7:stdgo._internal.crypto.internal.boring.BigInt;
	_6:stdgo._internal.crypto.internal.boring.BigInt;
	_5:stdgo._internal.crypto.internal.boring.BigInt;
	_4:stdgo._internal.crypto.internal.boring.BigInt;
	_3:stdgo._internal.crypto.internal.boring.BigInt;
	_2:stdgo._internal.crypto.internal.boring.BigInt;
	_1:stdgo._internal.crypto.internal.boring.BigInt;
	_0:stdgo._internal.crypto.internal.boring.BigInt;
}
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function newAESCipher


```haxe
function newAESCipher(_key:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo._internal.crypto.cipher.Block;
}
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function newGCMTLS


```haxe
function newGCMTLS(_0:stdgo._internal.crypto.cipher.Block):{
	_1:stdgo.Error;
	_0:stdgo._internal.crypto.cipher.AEAD;
}
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function newHMAC


```haxe
function newHMAC(_h:():stdgo._internal.hash.Hash, _key:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.hash.Hash
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function newPrivateKeyECDH


```haxe
function newPrivateKeyECDH(_0:stdgo.GoString, _1:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.crypto.internal.boring.PrivateKeyECDH>;
}
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function newPrivateKeyECDSA


```haxe
function newPrivateKeyECDSA(_curve:stdgo.GoString, x:stdgo._internal.crypto.internal.boring.BigInt, y:stdgo._internal.crypto.internal.boring.BigInt, d:stdgo._internal.crypto.internal.boring.BigInt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.crypto.internal.boring.PrivateKeyECDSA>;
}
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function newPrivateKeyRSA


```haxe
function newPrivateKeyRSA(n:stdgo._internal.crypto.internal.boring.BigInt, e:stdgo._internal.crypto.internal.boring.BigInt, d:stdgo._internal.crypto.internal.boring.BigInt, p:stdgo._internal.crypto.internal.boring.BigInt, q:stdgo._internal.crypto.internal.boring.BigInt, dp:stdgo._internal.crypto.internal.boring.BigInt, dq:stdgo._internal.crypto.internal.boring.BigInt, qinv:stdgo._internal.crypto.internal.boring.BigInt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.crypto.internal.boring.PrivateKeyRSA>;
}
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function newPublicKeyECDH


```haxe
function newPublicKeyECDH(_0:stdgo.GoString, _1:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.crypto.internal.boring.PublicKeyECDH>;
}
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function newPublicKeyECDSA


```haxe
function newPublicKeyECDSA(_curve:stdgo.GoString, x:stdgo._internal.crypto.internal.boring.BigInt, y:stdgo._internal.crypto.internal.boring.BigInt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.crypto.internal.boring.PublicKeyECDSA>;
}
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function newPublicKeyRSA


```haxe
function newPublicKeyRSA(n:stdgo._internal.crypto.internal.boring.BigInt, e:stdgo._internal.crypto.internal.boring.BigInt):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.crypto.internal.boring.PublicKeyRSA>;
}
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function newSHA1


```haxe
function newSHA1():stdgo._internal.hash.Hash
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function newSHA224


```haxe
function newSHA224():stdgo._internal.hash.Hash
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function newSHA256


```haxe
function newSHA256():stdgo._internal.hash.Hash
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function newSHA384


```haxe
function newSHA384():stdgo._internal.hash.Hash
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function newSHA512


```haxe
function newSHA512():stdgo._internal.hash.Hash
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function sha1


```haxe
function sha1(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8>
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function sha224


```haxe
function sha224(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8>
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function sha256


```haxe
function sha256(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8>
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function sha384


```haxe
function sha384(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8>
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function sha512


```haxe
function sha512(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoArray<stdgo.GoUInt8>
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function signMarshalECDSA


```haxe
function signMarshalECDSA(_priv:stdgo.Ref<stdgo._internal.crypto.internal.boring.PrivateKeyECDSA>, _hash:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function signRSAPKCS1v15


```haxe
function signRSAPKCS1v15(_priv:stdgo.Ref<stdgo._internal.crypto.internal.boring.PrivateKeyRSA>, _h:stdgo._internal.crypto.Hash, _hashed:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function signRSAPSS


```haxe
function signRSAPSS(_priv:stdgo.Ref<stdgo._internal.crypto.internal.boring.PrivateKeyRSA>, _h:stdgo._internal.crypto.Hash, _hashed:stdgo.Slice<stdgo.GoUInt8>, _saltLen:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoUInt8>;
}
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function unreachable


```haxe
function unreachable():Void
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function unreachableExceptTests


```haxe
function unreachableExceptTests():Void
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function verifyECDSA


```haxe
function verifyECDSA(_pub:stdgo.Ref<stdgo._internal.crypto.internal.boring.PublicKeyECDSA>, _hash:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>):Bool
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function verifyRSAPKCS1v15


```haxe
function verifyRSAPKCS1v15(_pub:stdgo.Ref<stdgo._internal.crypto.internal.boring.PublicKeyRSA>, _h:stdgo._internal.crypto.Hash, _hashed:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


## function verifyRSAPSS


```haxe
function verifyRSAPSS(_pub:stdgo.Ref<stdgo._internal.crypto.internal.boring.PublicKeyRSA>, _h:stdgo._internal.crypto.Hash, _hashed:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>, _saltLen:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Boring_verifyRSAPSS.hx#L2>)


# Classes


```haxe
import stdgo._internal.crypto.internal.boring.*
```


## class PrivateKeyECDH


### PrivateKeyECDH function new


```haxe
function new():Void
```


[\(view code\)](<./Boring_PrivateKeyECDH.hx#L3>)


## class PrivateKeyECDSA


```haxe
var __2:stdgo.GoInt
```


### PrivateKeyECDSA function new


```haxe
function new(?__2:stdgo.GoInt):Void
```


[\(view code\)](<./Boring_PrivateKeyECDSA.hx#L5>)


## class PrivateKeyRSA


```haxe
var __4:stdgo.GoInt
```


### PrivateKeyRSA function new


```haxe
function new(?__4:stdgo.GoInt):Void
```


[\(view code\)](<./Boring_PrivateKeyRSA.hx#L5>)


## class PublicKeyECDH


### PublicKeyECDH function new


```haxe
function new():Void
```


[\(view code\)](<./Boring_PublicKeyECDH.hx#L3>)


## class PublicKeyECDSA


```haxe
var __1:stdgo.GoInt
```


### PublicKeyECDSA function new


```haxe
function new(?__1:stdgo.GoInt):Void
```


[\(view code\)](<./Boring_PublicKeyECDSA.hx#L5>)


## class PublicKeyRSA


```haxe
var __3:stdgo.GoInt
```


### PublicKeyRSA function new


```haxe
function new(?__3:stdgo.GoInt):Void
```


[\(view code\)](<./Boring_PublicKeyRSA.hx#L5>)


# Typedefs


```haxe
import stdgo._internal.crypto.internal.boring.*
```


## typedef BigInt


```haxe
typedef BigInt = stdgo.Slice<stdgo.GoUInt>;
```


## typedef T\_randReader


```haxe
typedef T_randReader = stdgo.GoInt;
```


