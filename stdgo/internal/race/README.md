# Module: `stdgo.internal.race`

[(view library index)](../../stdgo.md)


# Overview



Package race contains helper functions for manually instrumenting code for the race detector.  


The runtime package intentionally exports these functions only in the race build;
this package exports them unconditionally but without the "race" build tag they are no\-ops.  

# Index


- [Constants](<#constants>)

- [`function acquire(_addr:stdgo.unsafe.UnsafePointer):Void`](<#function-acquire>)

- [`function disable():Void`](<#function-disable>)

- [`function enable():Void`](<#function-enable>)

- [`function errors():stdgo.GoInt`](<#function-errors>)

- [`function read(_addr:stdgo.unsafe.UnsafePointer):Void`](<#function-read>)

- [`function readRange(_addr:stdgo.unsafe.UnsafePointer, _len:stdgo.GoInt):Void`](<#function-readrange>)

- [`function release(_addr:stdgo.unsafe.UnsafePointer):Void`](<#function-release>)

- [`function releaseMerge(_addr:stdgo.unsafe.UnsafePointer):Void`](<#function-releasemerge>)

- [`function write(_addr:stdgo.unsafe.UnsafePointer):Void`](<#function-write>)

- [`function writeRange(_addr:stdgo.unsafe.UnsafePointer, _len:stdgo.GoInt):Void`](<#function-writerange>)

# Constants


```haxe
import stdgo.internal.race.Race
```


```haxe
final enabled:Bool = false
```


# Functions


```haxe
import stdgo.internal.race.Race
```


## function acquire


```haxe
function acquire(_addr:stdgo.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Race.hx#L17>)


## function disable


```haxe
function disable():Void
```


[\(view code\)](<./Race.hx#L20>)


## function enable


```haxe
function enable():Void
```


[\(view code\)](<./Race.hx#L21>)


## function errors


```haxe
function errors():stdgo.GoInt
```


[\(view code\)](<./Race.hx#L26>)


## function read


```haxe
function read(_addr:stdgo.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Race.hx#L22>)


## function readRange


```haxe
function readRange(_addr:stdgo.unsafe.UnsafePointer, _len:stdgo.GoInt):Void
```


[\(view code\)](<./Race.hx#L24>)


## function release


```haxe
function release(_addr:stdgo.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Race.hx#L18>)


## function releaseMerge


```haxe
function releaseMerge(_addr:stdgo.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Race.hx#L19>)


## function write


```haxe
function write(_addr:stdgo.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Race.hx#L23>)


## function writeRange


```haxe
function writeRange(_addr:stdgo.unsafe.UnsafePointer, _len:stdgo.GoInt):Void
```


[\(view code\)](<./Race.hx#L25>)


