# Module: `stdgo._internal.testing.internal.testdeps`

[(view library index)](../../../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [class T\_testLog](<#class-t_testlog>)

  - [`function new(?_mu:stdgo._internal.sync.Mutex, ?_w:stdgo.Ref<stdgo._internal.bufio.Writer>, ?_set:Bool):Void`](<#t_testlog-function-new>)

- [class TestDeps](<#class-testdeps>)

  - [`function new():Void`](<#testdeps-function-new>)

# Variables


```haxe
import stdgo._internal.testing.internal.testdeps.Testdeps_importPath
```


```haxe
var _log:stdgo._internal.testing.internal.testdeps.T_testLog
```


```haxe
var _matchPat:stdgo.GoString
```


```haxe
var _matchRe:stdgo.Ref<stdgo._internal.regexp.Regexp>
```


```haxe
var importPath:stdgo.GoString
```


# Classes


```haxe
import stdgo._internal.testing.internal.testdeps.*
```


## class T\_testLog


```haxe
var _mu:stdgo._internal.sync.Mutex
```


```haxe
var _set:Bool
```


```haxe
var _w:stdgo.Ref<stdgo._internal.bufio.Writer>
```


### T\_testLog function new


```haxe
function new(?_mu:stdgo._internal.sync.Mutex, ?_w:stdgo.Ref<stdgo._internal.bufio.Writer>, ?_set:Bool):Void
```


[\(view code\)](<./Testdeps_T_testLog.hx#L6>)


## class TestDeps


### TestDeps function new


```haxe
function new():Void
```


[\(view code\)](<./Testdeps_TestDeps.hx#L3>)


