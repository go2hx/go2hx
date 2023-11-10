# Module: `stdgo.encoding.binary`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function exampleByteOrder_get():Void`](<#function-examplebyteorder_get>)

- [`function exampleByteOrder_put():Void`](<#function-examplebyteorder_put>)

- [`function examplePutUvarint():Void`](<#function-exampleputuvarint>)

- [`function examplePutVarint():Void`](<#function-exampleputvarint>)

- [`function exampleRead():Void`](<#function-exampleread>)

- [`function exampleRead_multi():Void`](<#function-exampleread_multi>)

- [`function exampleUvarint():Void`](<#function-exampleuvarint>)

- [`function exampleVarint():Void`](<#function-examplevarint>)

- [`function exampleWrite():Void`](<#function-examplewrite>)

- [`function exampleWrite_multi():Void`](<#function-examplewrite_multi>)

- [`function main():Void`](<#function-main>)

- [typedef T\_\_struct\_7](<#typedef-t__struct_7>)

# Variables


```haxe
import stdgo.encoding.binary_test.Binary
```


```haxe
var _:Bool
```


```haxe
var _benchmarks:stdgo.Slice<stdgo.testing.InternalBenchmark>
```


```haxe
var _examples:stdgo.Slice<stdgo.testing.InternalExample>
```


```haxe
var _fuzzTargets:stdgo.Slice<stdgo.testing.InternalFuzzTarget>
```


```haxe
var _tests:stdgo.Slice<stdgo.testing.InternalTest>
```


# Functions


```haxe
import stdgo.encoding.binary_test.Binary
```


## function exampleByteOrder\_get


```haxe
function exampleByteOrder_get():Void
```


[\(view code\)](<./Binary.hx#L88>)


## function exampleByteOrder\_put


```haxe
function exampleByteOrder_put():Void
```


[\(view code\)](<./Binary.hx#L82>)


## function examplePutUvarint


```haxe
function examplePutUvarint():Void
```


[\(view code\)](<./Binary.hx#L94>)


## function examplePutVarint


```haxe
function examplePutVarint():Void
```


[\(view code\)](<./Binary.hx#L101>)


## function exampleRead


```haxe
function exampleRead():Void
```


[\(view code\)](<./Binary.hx#L41>)


## function exampleRead\_multi


```haxe
function exampleRead_multi():Void
```


[\(view code\)](<./Binary.hx#L51>)


## function exampleUvarint


```haxe
function exampleUvarint():Void
```


[\(view code\)](<./Binary.hx#L119>)


## function exampleVarint


```haxe
function exampleVarint():Void
```


[\(view code\)](<./Binary.hx#L129>)


## function exampleWrite


```haxe
function exampleWrite():Void
```


[\(view code\)](<./Binary.hx#L21>)


## function exampleWrite\_multi


```haxe
function exampleWrite_multi():Void
```


[\(view code\)](<./Binary.hx#L30>)


## function main


```haxe
function main():Void
```


[\(view code\)](<./Binary.hx#L99>)


# Typedefs


```haxe
import stdgo.encoding.binary_test.*
```


## typedef T\_\_struct\_7


```haxe
typedef T__struct_7 = {
	uate:stdgo.GoUInt8;
	too:stdgo.GoUInt16;
	pi:stdgo.GoFloat64;
	mine:stdgo.GoArray<stdgo.GoUInt8>;
};
```


