# Module: `stdgo.internal.race`

[(view library index)](../../stdgo.md)


# Overview



Package race contains helper functions for manually instrumenting code for the race detector.  


The runtime package intentionally exports these functions only in the race build;
this package exports them unconditionally but without the "race" build tag they are no\-ops.  

# Index


- [Constants](<#constants>)

- [`function acquire(addr:stdgo._internal.unsafe.UnsafePointer):Void`](<#function-acquire>)

- [`function disable():Void`](<#function-disable>)

- [`function enable():Void`](<#function-enable>)

- [`function errors():Int`](<#function-errors>)

- [`function read(addr:stdgo._internal.unsafe.UnsafePointer):Void`](<#function-read>)

- [`function readRange(addr:stdgo._internal.unsafe.UnsafePointer, len:Int):Void`](<#function-readrange>)

- [`function release(addr:stdgo._internal.unsafe.UnsafePointer):Void`](<#function-release>)

- [`function releaseMerge(addr:stdgo._internal.unsafe.UnsafePointer):Void`](<#function-releasemerge>)

- [`function write(addr:stdgo._internal.unsafe.UnsafePointer):Void`](<#function-write>)

- [`function writeRange(addr:stdgo._internal.unsafe.UnsafePointer, len:Int):Void`](<#function-writerange>)

# Constants


```haxe
import stdgo.internal.race.Race
```


```haxe
final enabled:Bool = stdgo._internal.internal.race.Race.enabled
```


# Functions


```haxe
import stdgo.internal.race.Race
```


## function acquire


```haxe
function acquire(addr:stdgo._internal.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Race.hx#L12>)


## function disable


```haxe
function disable():Void
```


[\(view code\)](<./Race.hx#L15>)


## function enable


```haxe
function enable():Void
```


[\(view code\)](<./Race.hx#L16>)


## function errors


```haxe
function errors():Int
```


[\(view code\)](<./Race.hx#L21>)


## function read


```haxe
function read(addr:stdgo._internal.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Race.hx#L17>)


## function readRange


```haxe
function readRange(addr:stdgo._internal.unsafe.UnsafePointer, len:Int):Void
```


[\(view code\)](<./Race.hx#L19>)


## function release


```haxe
function release(addr:stdgo._internal.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Race.hx#L13>)


## function releaseMerge


```haxe
function releaseMerge(addr:stdgo._internal.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Race.hx#L14>)


## function write


```haxe
function write(addr:stdgo._internal.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Race.hx#L18>)


## function writeRange


```haxe
function writeRange(addr:stdgo._internal.unsafe.UnsafePointer, len:Int):Void
```


[\(view code\)](<./Race.hx#L20>)


