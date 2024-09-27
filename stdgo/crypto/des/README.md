# Module: `stdgo.crypto.des`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [class Des](<#class-des>)

  - [`function newCipher(_key:Array<UInt>):stdgo.Tuple<stdgo._internal.crypto.cipher.Block, stdgo.Error>`](<#des-function-newcipher>)

  - [`function newTripleDESCipher(_key:Array<UInt>):stdgo.Tuple<stdgo._internal.crypto.cipher.Block, stdgo.Error>`](<#des-function-newtripledescipher>)

- [typedef KeySizeError](<#typedef-keysizeerror>)

- [abstract T\_desCipher](<#abstract-t_descipher>)

- [abstract T\_tripleDESCipher](<#abstract-t_tripledescipher>)

# Constants


```haxe
import stdgo.crypto.des.Des
```


```haxe
final blockSize:haxe.UInt64 = stdgo._internal.crypto.des.Des_blockSize.blockSize
```


# Classes


```haxe
import stdgo.crypto.des.*
```


## class Des


```
Package des implements the Data Encryption Standard (DES) and the
    Triple Data Encryption Algorithm (TDEA) as defined
    in U.S. Federal Information Processing Standards Publication 46-3.
```

DES is cryptographically broken and should not be used for secure
applications.  

### Des function newCipher


```haxe
function newCipher(_key:Array<UInt>):stdgo.Tuple<stdgo._internal.crypto.cipher.Block, stdgo.Error>
```



NewCipher creates and returns a new cipher.Block.  

[\(view code\)](<./Des.hx#L89>)


### Des function newTripleDESCipher


```haxe
function newTripleDESCipher(_key:Array<UInt>):stdgo.Tuple<stdgo._internal.crypto.cipher.Block, stdgo.Error>
```



NewTripleDESCipher creates and returns a new cipher.Block.  

[\(view code\)](<./Des.hx#L99>)


# Typedefs


```haxe
import stdgo.crypto.des.*
```


## typedef KeySizeError


```haxe
typedef KeySizeError = stdgo._internal.crypto.des.KeySizeError;
```


# Abstracts


## abstract T\_desCipher


[\(view file containing code\)](<./Des.hx>)


## abstract T\_tripleDESCipher


[\(view file containing code\)](<./Des.hx>)


