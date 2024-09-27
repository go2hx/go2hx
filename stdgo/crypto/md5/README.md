# Module: `stdgo.crypto.md5`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [class Md5](<#class-md5>)

  - [`function new_():stdgo._internal.hash.Hash`](<#md5-function-new_>)

  - [`function sum(_data:Array<UInt>):haxe.ds.Vector<UInt>`](<#md5-function-sum>)

- [abstract T\_digest](<#abstract-t_digest>)

# Constants


```haxe
import stdgo.crypto.md5.Md5
```


```haxe
final blockSize:haxe.UInt64 = stdgo._internal.crypto.md5.Md5_blockSize.blockSize
```


```haxe
final size:haxe.UInt64 = stdgo._internal.crypto.md5.Md5_size.size
```


# Classes


```haxe
import stdgo.crypto.md5.*
```


## class Md5



Package md5 implements the MD5 hash algorithm as defined in RFC 1321.  


MD5 is cryptographically broken and should not be used for secure
applications.  

### Md5 function new\_


```haxe
function new_():stdgo._internal.hash.Hash
```


```
New returns a new hash.Hash computing the MD5 checksum. The Hash also
        implements encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
        marshal and unmarshal the internal state of the hash.
```
[\(view code\)](<./Md5.hx#L80>)


### Md5 function sum


```haxe
function sum(_data:Array<UInt>):haxe.ds.Vector<UInt>
```



Sum returns the MD5 checksum of the data.  

[\(view code\)](<./Md5.hx#L86>)


# Abstracts


## abstract T\_digest


[\(view file containing code\)](<./Md5.hx>)


