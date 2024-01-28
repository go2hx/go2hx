# Module: `stdgo.internal.race`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function acquire(_addr:stdgo._internal.unsafe.UnsafePointer):Void`](<#function-acquire>)

- [`function disable():Void`](<#function-disable>)

- [`function enable():Void`](<#function-enable>)

- [`function errors():Void`](<#function-errors>)

- [`function read(_addr:stdgo._internal.unsafe.UnsafePointer):Void`](<#function-read>)

- [`function readRange(_addr:stdgo._internal.unsafe.UnsafePointer, _len:stdgo.GoInt):Void`](<#function-readrange>)

- [`function release(_addr:stdgo._internal.unsafe.UnsafePointer):Void`](<#function-release>)

- [`function releaseMerge(_addr:stdgo._internal.unsafe.UnsafePointer):Void`](<#function-releasemerge>)

- [`function write(_addr:stdgo._internal.unsafe.UnsafePointer):Void`](<#function-write>)

- [`function writeRange(_addr:stdgo._internal.unsafe.UnsafePointer, _len:stdgo.GoInt):Void`](<#function-writerange>)

# Variables


```haxe
import stdgo.internal.race.Race
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var enabled:Dynamic
```


# Functions


```haxe
import stdgo.internal.race.Race
```


## function acquire


```haxe
function acquire(_addr:stdgo._internal.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Race.hx#L4>)


## function disable


```haxe
function disable():Void
```


[\(view code\)](<./Race.hx#L7>)


## function enable


```haxe
function enable():Void
```


[\(view code\)](<./Race.hx#L8>)


## function errors


```haxe
function errors():Void
```


[\(view code\)](<./Race.hx#L13>)


## function read


```haxe
function read(_addr:stdgo._internal.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Race.hx#L9>)


## function readRange


```haxe
function readRange(_addr:stdgo._internal.unsafe.UnsafePointer, _len:stdgo.GoInt):Void
```


[\(view code\)](<./Race.hx#L11>)


## function release


```haxe
function release(_addr:stdgo._internal.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Race.hx#L5>)


## function releaseMerge


```haxe
function releaseMerge(_addr:stdgo._internal.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Race.hx#L6>)


## function write


```haxe
function write(_addr:stdgo._internal.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Race.hx#L10>)


## function writeRange


```haxe
function writeRange(_addr:stdgo._internal.unsafe.UnsafePointer, _len:stdgo.GoInt):Void
```


[\(view code\)](<./Race.hx#L12>)


