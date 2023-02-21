# Module: `stdgo.internal.safefilepath`

[(view library index)](../../stdgo.md)


# Overview


Package safefilepath manipulates operating\-system file paths.  



# Index


- [`function fromFS(_path:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.GoString;
}`](<#function-fromfs>)

# Functions


```haxe
import stdgo.internal.safefilepath.Safefilepath
```


## function fromFS


```haxe
function fromFS(_path:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.GoString;
}
```


FromFS converts a slash\-separated path into an operating\-system path.  



FromFS returns an error if the path cannot be represented by the operating  
system. For example, paths containing '\\' and ':' characters are rejected  
on Windows.  



[\(view code\)](<./Safefilepath.hx#L28>)


