# Module: `stdgo.crypto.rc4`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [class Rc4](<#class-rc4>)

  - [`function newCipher(_key:Array<UInt>):stdgo.Tuple<stdgo.crypto.rc4.Cipher, stdgo.Error>`](<#rc4-function-newcipher>)

- [typedef KeySizeError](<#typedef-keysizeerror>)

- [abstract Cipher](<#abstract-cipher>)

# Classes


```haxe
import
```


## class Rc4


```
Package rc4 implements RC4 encryption, as defined in Bruce Schneier's
    Applied Cryptography.
```

RC4 is cryptographically broken and should not be used for secure
applications.  

### Rc4 function newCipher


```haxe
function newCipher(_key:Array<UInt>):stdgo.Tuple<stdgo.crypto.rc4.Cipher, stdgo.Error>
```


```
NewCipher creates and returns a new Cipher. The key argument should be the
        RC4 key, at least 1 byte and at most 256 bytes.
```
[\(view code\)](<./Rc4.hx#L53>)


# Typedefs


```haxe
import
```


## typedef KeySizeError


```haxe
typedef KeySizeError = stdgo._internal.crypto.rc4.KeySizeError;
```


# Abstracts


## abstract Cipher


[\(view file containing code\)](<./Rc4.hx>)


