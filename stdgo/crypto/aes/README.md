# Module: `stdgo.crypto.aes`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [class Aes](<#class-aes>)

  - [`function newCipher(_key:Array<UInt>):stdgo.Tuple<stdgo._internal.crypto.cipher.Block, stdgo.Error>`](<#aes-function-newcipher>)

- [typedef KeySizeError](<#typedef-keysizeerror>)

- [typedef T\_cbcDecAble](<#typedef-t_cbcdecable>)

- [typedef T\_cbcEncAble](<#typedef-t_cbcencable>)

- [typedef T\_ctrAble](<#typedef-t_ctrable>)

- [typedef T\_gcmAble](<#typedef-t_gcmable>)

- [abstract T\_aesCipher](<#abstract-t_aescipher>)

# Constants


```haxe
import stdgo.crypto.aes.Aes
```


```haxe
final blockSize:haxe.UInt64 = stdgo._internal.crypto.aes.Aes_blockSize.blockSize
```


# Classes


```haxe
import stdgo.crypto.aes.*
```


## class Aes


```
Package aes implements AES encryption (formerly Rijndael), as defined in
    U.S. Federal Information Processing Standards Publication 197.
```

The AES operations in this package are not implemented using constant\-time algorithms.
An exception is when running on systems with enabled hardware support for AES
that makes these operations constant\-time. Examples include amd64 systems using AES\-NI
extensions and s390x systems using Message\-Security\-Assist extensions.
On such systems, when the result of NewCipher is passed to cipher.NewGCM,
the GHASH operation used by GCM is also constant\-time.  

### Aes function newCipher


```haxe
function newCipher(_key:Array<UInt>):stdgo.Tuple<stdgo._internal.crypto.cipher.Block, stdgo.Error>
```


```
NewCipher creates and returns a new cipher.Block.
        The key argument should be the AES key,
        either 16, 24, or 32 bytes to select
        AES-128, AES-192, or AES-256.
```
[\(view code\)](<./Aes.hx#L89>)


# Typedefs


```haxe
import stdgo.crypto.aes.*
```


## typedef KeySizeError


```haxe
typedef KeySizeError = stdgo._internal.crypto.aes.KeySizeError;
```


## typedef T\_cbcDecAble


```haxe
typedef T_cbcDecAble = stdgo._internal.crypto.aes.T_cbcDecAble;
```


## typedef T\_cbcEncAble


```haxe
typedef T_cbcEncAble = stdgo._internal.crypto.aes.T_cbcEncAble;
```


## typedef T\_ctrAble


```haxe
typedef T_ctrAble = stdgo._internal.crypto.aes.T_ctrAble;
```


## typedef T\_gcmAble


```haxe
typedef T_gcmAble = stdgo._internal.crypto.aes.T_gcmAble;
```


# Abstracts


## abstract T\_aesCipher


[\(view file containing code\)](<./Aes.hx>)


