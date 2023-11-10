# Module: `stdgo.log.internal`

[(view library index)](../../stdgo.md)


# Overview



Package internal contains definitions used by both log and log/slog.  

# Index


- [Variables](<#variables>)

# Variables


```haxe
import stdgo.log.internal.Internal
```


```haxe
var defaultOutput:Null<Dynamic>
```



DefaultOutput holds a function which calls the default log.Logger's
output function.
It allows slog.defaultHandler to call into an unexported function of
the log package.  

