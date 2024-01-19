# Module: `stdgo.compress.flate`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function example_dictionary():Void`](<#function-example_dictionary>)

- [`function example_reset():Void`](<#function-example_reset>)

- [`function example_synchronization():Void`](<#function-example_synchronization>)

- [`function main():Void`](<#function-main>)

# Variables


```haxe
import stdgo.compress.flate_test.Flate
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
import stdgo.compress.flate_test.Flate
```


## function example\_dictionary


```haxe
function example_dictionary():Void
```



A preset dictionary can be used to improve the compression ratio.
The downside to using a dictionary is that the compressor and decompressor
must agree in advance what dictionary to use.  

[\(view code\)](<./Flate.hx#L59>)


## function example\_reset


```haxe
function example_reset():Void
```



In performance critical applications, Reset can be used to discard the
current compressor or decompressor state and reinitialize them quickly
by taking advantage of previously allocated memory.  

[\(view code\)](<./Flate.hx#L8>)


## function example\_synchronization


```haxe
function example_synchronization():Void
```



DEFLATE is suitable for transmitting compressed data across the network.  

[\(view code\)](<./Flate.hx#L116>)


## function main


```haxe
function main():Void
```


[\(view code\)](<./Flate.hx#L68>)


