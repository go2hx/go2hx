# Module: `stdgo.internal.godebugs`

[(view library index)](../../stdgo.md)


# Overview


```
Package godebugs provides a table of known GODEBUG settings,
    for use by a variety of other packages, including internal/godebug,
    runtime, runtime/metrics, and cmd/go/internal/load.
```
# Index


- [Variables](<#variables>)

- [`function get_all():Array<stdgo._internal.internal.godebugs.Info>`](<#function-get_all>)

- [`function lookup(name:String):stdgo.internal.godebugs.Info`](<#function-lookup>)

- [`function set_all(v:Array<stdgo._internal.internal.godebugs.Info>):Array<stdgo._internal.internal.godebugs.Info>`](<#function-set_all>)

- [typedef Info](<#typedef-info>)

# Variables


```haxe
import stdgo.internal.godebugs.Godebugs
```


```haxe
var all:Array<stdgo._internal.internal.godebugs.Info>
```


# Functions


```haxe
import stdgo.internal.godebugs.Godebugs
```


## function get\_all


```haxe
function get_all():Array<stdgo._internal.internal.godebugs.Info>
```


[\(view code\)](<./Godebugs.hx#L9>)


## function lookup


```haxe
function lookup(name:String):stdgo.internal.godebugs.Info
```



Lookup returns the Info with the given name.  

[\(view code\)](<./Godebugs.hx#L15>)


## function set\_all


```haxe
function set_all(v:Array<stdgo._internal.internal.godebugs.Info>):Array<stdgo._internal.internal.godebugs.Info>
```


[\(view code\)](<./Godebugs.hx#L10>)


# Typedefs


```haxe
import stdgo.internal.godebugs.*
```


## typedef Info


```haxe
typedef Info = Dynamic;
```


