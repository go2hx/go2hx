# Module: `stdgo.log.internal`

[(view library index)](../../stdgo.md)


# Overview



Package internal contains definitions used by both log and log/slog.  

# Index


- [`function defaultOutput(_pc:stdgo.GoUIntptr, _data:stdgo.Slice<stdgo.GoByte>):stdgo.Error`](<#function-defaultoutput>)

# Functions


```haxe
import stdgo.log.internal.Internal
```


## function defaultOutput


```haxe
function defaultOutput(_pc:stdgo.GoUIntptr, _data:stdgo.Slice<stdgo.GoByte>):stdgo.Error
```



DefaultOutput holds a function which calls the default log.Logger's
output function.
It allows slog.defaultHandler to call into an unexported function of
the log package.  

[\(view code\)](<./Internal.hx#L14>)


