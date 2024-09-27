# Module: `stdgo.internal.safefilepath`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [class Safefilepath](<#class-safefilepath>)

  - [`function fromFS(_path:String):stdgo.Tuple<String, stdgo.Error>`](<#safefilepath-function-fromfs>)

# Classes


```haxe
import
```


## class Safefilepath



Package safefilepath manipulates operating\-system file paths.  

### Safefilepath function fromFS


```haxe
function fromFS(_path:String):stdgo.Tuple<String, stdgo.Error>
```



FromFS converts a slash\-separated path into an operating\-system path.  


FromFS returns an error if the path cannot be represented by the operating
system. For example, paths containing '\\' and ':' characters are rejected
on Windows.  

[\(view code\)](<./Safefilepath.hx#L13>)


