# Module: `stdgo.internal.coverage.rtcov`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [class CovCounterBlob](<#class-covcounterblob>)

  - [`function new(?counters:stdgo.Pointer<stdgo.GoUInt32>, ?len:stdgo.GoUInt64):Void`](<#covcounterblob-function-new>)

- [class CovMetaBlob](<#class-covmetablob>)

  - [`function new(?p:stdgo.Pointer<stdgo.GoUInt8>, ?len:stdgo.GoUInt32, ?hash:stdgo.GoArray<stdgo.GoUInt8>, ?pkgPath:stdgo.GoString, ?pkgID:Null<stdgo.GoInt>, ?counterMode:stdgo.GoUInt8, ?counterGranularity:stdgo.GoUInt8):Void`](<#covmetablob-function-new>)

# Classes


```haxe
import
```


## class CovCounterBlob



CovCounterBlob is a container for encapsulating a counter section
\(BSS variable\) for an instrumented Go module. Here "counters"
points to the counter payload and "len" is the number of uint32
entries in the section.  

```haxe
var counters:stdgo.Pointer<stdgo.GoUInt32>
```


```haxe
var len:stdgo.GoUInt64
```


### CovCounterBlob function new


```haxe
function new(?counters:stdgo.Pointer<stdgo.GoUInt32>, ?len:stdgo.GoUInt64):Void
```


[\(view code\)](<./Rtcov.hx#L55>)


## class CovMetaBlob



CovMetaBlob is a container for holding the meta\-data symbol \(an
RODATA variable\) for an instrumented Go package. Here "p" points to
the symbol itself, "len" is the length of the sym in bytes, and
"hash" is an md5sum for the sym computed by the compiler. When
the init function for a coverage\-instrumented package executes, it
will make a call into the runtime which will create a covMetaBlob
object for the package and chain it onto a global list.  

```haxe
var counterGranularity:stdgo.GoUInt8
```


```haxe
var counterMode:stdgo.GoUInt8
```


```haxe
var hash:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var len:stdgo.GoUInt32
```


```haxe
var p:stdgo.Pointer<stdgo.GoUInt8>
```


```haxe
var pkgID:stdgo.GoInt
```


```haxe
var pkgPath:stdgo.GoString
```


### CovMetaBlob function new


```haxe
function new(?p:stdgo.Pointer<stdgo.GoUInt8>, ?len:stdgo.GoUInt32, ?hash:stdgo.GoArray<stdgo.GoUInt8>, ?pkgPath:stdgo.GoString, ?pkgID:Null<stdgo.GoInt>, ?counterMode:stdgo.GoUInt8, ?counterGranularity:stdgo.GoUInt8):Void
```


[\(view code\)](<./Rtcov.hx#L30>)


