# Module: `stdgo.internal.godebugs`

[(view library index)](../../stdgo.md)


# Overview



Package godebugs provides a table of known GODEBUG settings,
for use by a variety of other packages, including internal/godebug,
runtime, runtime/metrics, and cmd/go/internal/load.  

# Index


- [Variables](<#variables>)

- [`function lookup(_name:stdgo.GoString):stdgo.Ref<stdgo.internal.godebugs.Info>`](<#function-lookup>)

- [class Info](<#class-info>)

  - [`function new(?name:stdgo.GoString, ?package_:stdgo.GoString, ?changed:stdgo.GoInt, ?old:stdgo.GoString, ?opaque:Bool):Void`](<#info-function-new>)

# Variables


```haxe
import stdgo.internal.godebugs.Godebugs
```


```haxe
var all:stdgo.Slice<stdgo.internal.godebugs.Info>
```



All is the table of known settings, sorted by Name.  


Note: After adding entries to this table, run 'go generate runtime/metrics'
to update the runtime/metrics doc comment.
\(Otherwise the runtime/metrics test will fail.\)  


Note: After adding entries to this table, update the list in doc/godebug.md as well.
\(Otherwise the test in this package will fail.\)  

# Functions


```haxe
import stdgo.internal.godebugs.Godebugs
```


## function lookup


```haxe
function lookup(_name:stdgo.GoString):stdgo.Ref<stdgo.internal.godebugs.Info>
```



Lookup returns the Info with the given name.  

[\(view code\)](<./Godebugs.hx#L47>)


# Classes


```haxe
import stdgo.internal.godebugs.*
```


## class Info



An Info describes a single known GODEBUG setting.  

```haxe
var changed:stdgo.GoInt
```


```haxe
var name:stdgo.GoString
```


```haxe
var old:stdgo.GoString
```


```haxe
var opaque:Bool
```


```haxe
var package_:stdgo.GoString
```


### Info function new


```haxe
function new(?name:stdgo.GoString, ?package_:stdgo.GoString, ?changed:stdgo.GoInt, ?old:stdgo.GoString, ?opaque:Bool):Void
```


[\(view code\)](<./Godebugs.hx#L32>)


