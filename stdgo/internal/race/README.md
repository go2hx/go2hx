# Module: `stdgo.internal.race`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [class Race](<#class-race>)

  - [`function acquire(_addr:stdgo._internal.unsafe.UnsafePointer):Void`](<#race-function-acquire>)

  - [`function disable():Void`](<#race-function-disable>)

  - [`function enable():Void`](<#race-function-enable>)

  - [`function errors():Int`](<#race-function-errors>)

  - [`function read(_addr:stdgo._internal.unsafe.UnsafePointer):Void`](<#race-function-read>)

  - [`function readRange(_addr:stdgo._internal.unsafe.UnsafePointer, _len:Int):Void`](<#race-function-readrange>)

  - [`function release(_addr:stdgo._internal.unsafe.UnsafePointer):Void`](<#race-function-release>)

  - [`function releaseMerge(_addr:stdgo._internal.unsafe.UnsafePointer):Void`](<#race-function-releasemerge>)

  - [`function write(_addr:stdgo._internal.unsafe.UnsafePointer):Void`](<#race-function-write>)

  - [`function writeRange(_addr:stdgo._internal.unsafe.UnsafePointer, _len:Int):Void`](<#race-function-writerange>)

# Constants


```haxe
import stdgo.internal.race.Race
```


```haxe
final enabled:Bool = stdgo._internal.internal.race.Race.enabled
```


# Classes


```haxe
import stdgo.internal.race.*
```


## class Race



Package race contains helper functions for manually instrumenting code for the race detector.  


The runtime package intentionally exports these functions only in the race build;
this package exports them unconditionally but without the "race" build tag they are no\-ops.  

### Race function acquire


```haxe
function acquire(_addr:stdgo._internal.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Race.hx#L12>)


### Race function disable


```haxe
function disable():Void
```


[\(view code\)](<./Race.hx#L21>)


### Race function enable


```haxe
function enable():Void
```


[\(view code\)](<./Race.hx#L24>)


### Race function errors


```haxe
function errors():Int
```


[\(view code\)](<./Race.hx#L39>)


### Race function read


```haxe
function read(_addr:stdgo._internal.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Race.hx#L27>)


### Race function readRange


```haxe
function readRange(_addr:stdgo._internal.unsafe.UnsafePointer, _len:Int):Void
```


[\(view code\)](<./Race.hx#L33>)


### Race function release


```haxe
function release(_addr:stdgo._internal.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Race.hx#L15>)


### Race function releaseMerge


```haxe
function releaseMerge(_addr:stdgo._internal.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Race.hx#L18>)


### Race function write


```haxe
function write(_addr:stdgo._internal.unsafe.UnsafePointer):Void
```


[\(view code\)](<./Race.hx#L30>)


### Race function writeRange


```haxe
function writeRange(_addr:stdgo._internal.unsafe.UnsafePointer, _len:Int):Void
```


[\(view code\)](<./Race.hx#L36>)


