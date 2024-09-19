# Module: `stdgo._internal.runtime.metrics`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _runtime_readMetrics(_0:stdgo._internal.unsafe.UnsafePointer, _1:stdgo.GoInt, _2:stdgo.GoInt):Void`](<#function-_runtime_readmetrics>)

- [`function all():stdgo.Slice<stdgo._internal.runtime.metrics.Description>`](<#function-all>)

- [`function read(_m:stdgo.Slice<stdgo._internal.runtime.metrics.Sample>):Void`](<#function-read>)

- [class Description](<#class-description>)

  - [`function new(?name:stdgo.GoString, ?description:stdgo.GoString, ?kind:stdgo._internal.runtime.metrics.ValueKind, ?cumulative:Bool):Void`](<#description-function-new>)

- [class Float64Histogram](<#class-float64histogram>)

  - [`function new(?counts:stdgo.Slice<stdgo.GoUInt64>, ?buckets:stdgo.Slice<stdgo.GoFloat64>):Void`](<#float64histogram-function-new>)

- [class Sample](<#class-sample>)

  - [`function new(?name:stdgo.GoString, ?value:stdgo._internal.runtime.metrics.Value):Void`](<#sample-function-new>)

- [class Value](<#class-value>)

  - [`function new(?_kind:stdgo._internal.runtime.metrics.ValueKind, ?_scalar:stdgo.GoUInt64, ?_pointer:stdgo._internal.unsafe.UnsafePointer):Void`](<#value-function-new>)

- [typedef ValueKind](<#typedef-valuekind>)

# Constants


```haxe
import stdgo._internal.runtime.metrics.Metrics_read
```


```haxe
final kindBad:stdgo._internal.runtime.metrics.ValueKind = ((0 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind))
```


```haxe
final kindFloat64:stdgo._internal.runtime.metrics.ValueKind = ((0 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind))
```


```haxe
final kindFloat64Histogram:stdgo._internal.runtime.metrics.ValueKind = ((0 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind))
```


```haxe
final kindUint64:stdgo._internal.runtime.metrics.ValueKind = ((0 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind))
```


# Variables


```haxe
import stdgo._internal.runtime.metrics.Metrics_read
```


```haxe
var _allDesc:stdgo.Slice<stdgo._internal.runtime.metrics.Description>
```


# Functions


```haxe
import stdgo._internal.runtime.metrics.Metrics_read
```


## function \_runtime\_readMetrics


```haxe
function _runtime_readMetrics(_0:stdgo._internal.unsafe.UnsafePointer, _1:stdgo.GoInt, _2:stdgo.GoInt):Void
```


[\(view code\)](<./Metrics_read.hx#L3>)


## function all


```haxe
function all():stdgo.Slice<stdgo._internal.runtime.metrics.Description>
```


[\(view code\)](<./Metrics_read.hx#L3>)


## function read


```haxe
function read(_m:stdgo.Slice<stdgo._internal.runtime.metrics.Sample>):Void
```


[\(view code\)](<./Metrics_read.hx#L3>)


# Classes


```haxe
import stdgo._internal.runtime.metrics.*
```


## class Description


```haxe
var cumulative:Bool
```


```haxe
var description:stdgo.GoString
```


```haxe
var kind:stdgo._internal.runtime.metrics.ValueKind
```


```haxe
var name:stdgo.GoString
```


### Description function new


```haxe
function new(?name:stdgo.GoString, ?description:stdgo.GoString, ?kind:stdgo._internal.runtime.metrics.ValueKind, ?cumulative:Bool):Void
```


[\(view code\)](<./Metrics_Description.hx#L8>)


## class Float64Histogram


```haxe
var buckets:stdgo.Slice<stdgo.GoFloat64>
```


```haxe
var counts:stdgo.Slice<stdgo.GoUInt64>
```


### Float64Histogram function new


```haxe
function new(?counts:stdgo.Slice<stdgo.GoUInt64>, ?buckets:stdgo.Slice<stdgo.GoFloat64>):Void
```


[\(view code\)](<./Metrics_Float64Histogram.hx#L6>)


## class Sample


```haxe
var name:stdgo.GoString
```


```haxe
var value:stdgo._internal.runtime.metrics.Value
```


### Sample function new


```haxe
function new(?name:stdgo.GoString, ?value:stdgo._internal.runtime.metrics.Value):Void
```


[\(view code\)](<./Metrics_Sample.hx#L6>)


## class Value


```haxe
var _kind:stdgo._internal.runtime.metrics.ValueKind
```


```haxe
var _pointer:stdgo._internal.unsafe.UnsafePointer
```


```haxe
var _scalar:stdgo.GoUInt64
```


### Value function new


```haxe
function new(?_kind:stdgo._internal.runtime.metrics.ValueKind, ?_scalar:stdgo.GoUInt64, ?_pointer:stdgo._internal.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Metrics_Value.hx#L7>)


# Typedefs


```haxe
import stdgo._internal.runtime.metrics.*
```


## typedef ValueKind


```haxe
typedef ValueKind = stdgo.GoInt;
```


