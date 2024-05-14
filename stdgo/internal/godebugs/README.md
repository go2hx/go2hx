# Module: `stdgo.internal.godebugs`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [class Godebugs](<#class-godebugs>)

  - [`function lookup(name:String):stdgo.internal.godebugs.Info`](<#godebugs-function-lookup>)

- [abstract Info](<#abstract-info>)

# Variables


```haxe
import stdgo.internal.godebugs.Godebugs
```


```haxe
var all:Array<stdgo._internal.internal.godebugs.Info>
```


# Classes


```haxe
import stdgo.internal.godebugs.*
```


## class Godebugs


```
Package godebugs provides a table of known GODEBUG settings,
    for use by a variety of other packages, including internal/godebug,
    runtime, runtime/metrics, and cmd/go/internal/load.
```
### Godebugs function lookup


```haxe
function lookup(name:String):stdgo.internal.godebugs.Info
```



Lookup returns the Info with the given name.  

[\(view code\)](<./Godebugs.hx#L52>)


# Abstracts


## abstract Info


[\(view file containing code\)](<./Godebugs.hx>)


