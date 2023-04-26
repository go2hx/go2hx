# Module: `stdgo.compress.bzip2`

[(view library index)](../../stdgo.md)


# Overview



Package bzip2 implements bzip2 decompression.  

<details><summary>hl tests failed</summary>
<p>

```
Error: Command failed with error 1
=== RUN  TestReader
Exception: Can't cast stdgo.compress.bzip2.StructuralError_asInterface to stdgo._GoString.GoStringData
Called from stdgo.io._Io.$Io_Fields_.readAll (stdgo/io/Io.hx line 1079)
Called from stdgo.compress.bzip2._Bzip2.$Bzip2_Fields_.testReader (stdgo/compress/bzip2/Bzip2.hx line 405)
Called from stdgo.testing.M.run (stdgo/testing/Testing.hx line 355)
Called from stdgo.compress.bzip2_test._Bzip2.$Bzip2_Fields_.main (stdgo/compress/bzip2_test/Bzip2.hx line 38)
```
</p>
</details>

<details><summary>interp tests failed</summary>
<p>

```
=== RUN  TestReader
test 0 (hello world), unexpected failure: bzip2 data invalid: equal symbols in Huffman tree
```
</p>
</details>

<details><summary>jvm tests failed</summary>
<p>

```
IO.Overflow("write_ui16")
```
</p>
</details>


# Index


- [Variables](<#variables>)

- [`function benchmarkDecodeDigits(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkdecodedigits>)

- [`function benchmarkDecodeNewton(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkdecodenewton>)

- [`function benchmarkDecodeRand(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkdecoderand>)

- [`function newReader(_r:stdgo.io.Reader):stdgo.io.Reader`](<#function-newreader>)

- [`function testBitReader(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testbitreader>)

- [`function testMTF(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testmtf>)

- [`function testReader(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreader>)

- [`function testZeroRead(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testzeroread>)

- [typedef StructuralError](<#typedef-structuralerror>)

# Variables


```haxe
import stdgo.compress.bzip2.Bzip2
```


```haxe
var _:Bool
```


# Functions


```haxe
import stdgo.compress.bzip2.Bzip2
```


## function benchmarkDecodeDigits


```haxe
function benchmarkDecodeDigits(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bzip2.hx#L490>)


## function benchmarkDecodeNewton


```haxe
function benchmarkDecodeNewton(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bzip2.hx#L493>)


## function benchmarkDecodeRand


```haxe
function benchmarkDecodeRand(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bzip2.hx#L496>)


## function newReader


```haxe
function newReader(_r:stdgo.io.Reader):stdgo.io.Reader
```



NewReader returns an io.Reader which decompresses bzip2 data from r.
If r does not also implement io.ByteReader,
the decompressor may read more data than necessary from r.  

[\(view code\)](<./Bzip2.hx#L317>)


## function testBitReader


```haxe
function testBitReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bzip2.hx#L421>)


## function testMTF


```haxe
function testMTF(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bzip2.hx#L453>)


## function testReader


```haxe
function testReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bzip2.hx#L378>)


## function testZeroRead


```haxe
function testZeroRead(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bzip2.hx#L464>)


# Typedefs


```haxe
import stdgo.compress.bzip2.*
```


## typedef StructuralError


```haxe
typedef StructuralError = stdgo.GoString;
```



A StructuralError is returned when the bzip2 data is found to be
syntactically invalid.  

