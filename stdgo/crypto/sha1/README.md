# Module: `stdgo.crypto.sha1`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [class Sha1](<#class-sha1>)

  - [`function benchmarkHash1K(_b:stdgo._internal.testing.B):Void`](<#sha1-function-benchmarkhash1k>)

  - [`function benchmarkHash320Bytes(_b:stdgo._internal.testing.B):Void`](<#sha1-function-benchmarkhash320bytes>)

  - [`function benchmarkHash8Bytes(_b:stdgo._internal.testing.B):Void`](<#sha1-function-benchmarkhash8bytes>)

  - [`function benchmarkHash8K(_b:stdgo._internal.testing.B):Void`](<#sha1-function-benchmarkhash8k>)

  - [`function new_():stdgo._internal.hash.Hash`](<#sha1-function-new_>)

  - [`function sum(_data:Array<UInt>):haxe.ds.Vector<UInt>`](<#sha1-function-sum>)

  - [`function testAllocations(_t:stdgo._internal.testing.T_):Void`](<#sha1-function-testallocations>)

  - [`function testBlockGeneric(_t:stdgo._internal.testing.T_):Void`](<#sha1-function-testblockgeneric>)

  - [`function testBlockSize(_t:stdgo._internal.testing.T_):Void`](<#sha1-function-testblocksize>)

  - [`function testGolden(_t:stdgo._internal.testing.T_):Void`](<#sha1-function-testgolden>)

  - [`function testGoldenMarshal(_t:stdgo._internal.testing.T_):Void`](<#sha1-function-testgoldenmarshal>)

  - [`function testLargeHashes(_t:stdgo._internal.testing.T_):Void`](<#sha1-function-testlargehashes>)

  - [`function testSize(_t:stdgo._internal.testing.T_):Void`](<#sha1-function-testsize>)

- [abstract T\_digest](<#abstract-t_digest>)

- [abstract T\_sha1Test](<#abstract-t_sha1test>)

- [abstract T\_unmarshalTest](<#abstract-t_unmarshaltest>)

# Constants


```haxe
import stdgo.crypto.sha1.Sha1
```


```haxe
final blockSize:haxe.UInt64 = stdgo._internal.crypto.sha1.Sha1_blockSize.blockSize
```


```haxe
final size:haxe.UInt64 = stdgo._internal.crypto.sha1.Sha1_size.size
```


# Classes


```haxe
import stdgo.crypto.sha1.*
```


## class Sha1



Package sha1 implements the SHA\-1 hash algorithm as defined in RFC 3174.  


SHA\-1 is cryptographically broken and should not be used for secure
applications.  

### Sha1 function benchmarkHash1K


```haxe
function benchmarkHash1K(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Sha1.hx#L167>)


### Sha1 function benchmarkHash320Bytes


```haxe
function benchmarkHash320Bytes(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Sha1.hx#L164>)


### Sha1 function benchmarkHash8Bytes


```haxe
function benchmarkHash8Bytes(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Sha1.hx#L161>)


### Sha1 function benchmarkHash8K


```haxe
function benchmarkHash8K(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Sha1.hx#L170>)


### Sha1 function new\_


```haxe
function new_():stdgo._internal.hash.Hash
```


```
New returns a new hash.Hash computing the SHA1 checksum. The Hash also
        implements encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
        marshal and unmarshal the internal state of the hash.
```
[\(view code\)](<./Sha1.hx#L127>)


### Sha1 function sum


```haxe
function sum(_data:Array<UInt>):haxe.ds.Vector<UInt>
```



Sum returns the SHA\-1 checksum of the data.  

[\(view code\)](<./Sha1.hx#L133>)


### Sha1 function testAllocations


```haxe
function testAllocations(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Sha1.hx#L158>)


### Sha1 function testBlockGeneric


```haxe
function testBlockGeneric(_t:stdgo._internal.testing.T_):Void
```



Tests that blockGeneric \(pure Go\) and block \(in assembly for some architectures\) match.  

[\(view code\)](<./Sha1.hx#L152>)


### Sha1 function testBlockSize


```haxe
function testBlockSize(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Sha1.hx#L146>)


### Sha1 function testGolden


```haxe
function testGolden(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Sha1.hx#L137>)


### Sha1 function testGoldenMarshal


```haxe
function testGoldenMarshal(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Sha1.hx#L140>)


### Sha1 function testLargeHashes


```haxe
function testLargeHashes(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Sha1.hx#L155>)


### Sha1 function testSize


```haxe
function testSize(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Sha1.hx#L143>)


# Abstracts


## abstract T\_digest


[\(view file containing code\)](<./Sha1.hx>)


## abstract T\_sha1Test


[\(view file containing code\)](<./Sha1.hx>)


## abstract T\_unmarshalTest


[\(view file containing code\)](<./Sha1.hx>)


