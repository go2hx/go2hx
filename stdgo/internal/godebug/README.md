# Module: `stdgo.internal.godebug`

[(view library index)](../../stdgo.md)


# Overview


Package godebug makes the settings in the $GODEBUG environment variable  
available to other packages. These settings are often used for compatibility  
tweaks, when we need to change a default behavior but want to let users  
opt back in to the original. For example GODEBUG=http2server=0 disables  
HTTP/2 support in the net/http server.  



In typical usage, code should declare a Setting as a global  
and then call Value each time the current setting value is needed:  






var http2server = godebug.New\("http2server"\)  






func ServeConn\(c net.Conn\) \{  



if http2server.Value\(\) == "0" \{  



disallow HTTP/2  



...  



\}  



...  



\}  



# Index


- [`function new_(_name:stdgo.GoString):stdgo.Ref<stdgo.internal.godebug.Setting>`](<#function-new_>)

- [class Setting](<#class-setting>)

  - [`function new(?_name:stdgo.GoString, ?_once:stdgo.sync.Once, ?_value:stdgo.Ref<stdgo.sync.atomic.Pointer_<stdgo.GoString>>):Void`](<#setting-function-new>)

  - [`function name():stdgo.GoString`](<#setting-function-name>)

  - [`function string():stdgo.GoString`](<#setting-function-string>)

  - [`function value():stdgo.GoString`](<#setting-function-value>)

# Functions


```haxe
import stdgo.internal.godebug.Godebug
```


## function new\_


```haxe
function new_(_name:stdgo.GoString):stdgo.Ref<stdgo.internal.godebug.Setting>
```


New returns a new Setting for the $GODEBUG setting with the given name.  



[\(view code\)](<./Godebug.hx#L84>)


# Classes


```haxe
import stdgo.internal.godebug.*
```


## class Setting


A Setting is a single setting in the $GODEBUG environment variable.  



```haxe
var _name:stdgo.GoString
```


```haxe
var _once:stdgo.sync.Once
```


```haxe
var _value:stdgo.Ref<stdgo.sync.atomic.Pointer_<stdgo.GoString>>
```


### Setting function new


```haxe
function new(?_name:stdgo.GoString, ?_once:stdgo.sync.Once, ?_value:stdgo.Ref<stdgo.sync.atomic.Pointer_<stdgo.GoString>>):Void
```





[\(view code\)](<./Godebug.hx#L71>)


### Setting function name


```haxe
function name():stdgo.GoString
```


Name returns the name of the setting.  



[\(view code\)](<./Godebug.hx#L161>)


### Setting function string


```haxe
function string():stdgo.GoString
```


String returns a printable form for the setting: name=value.  



[\(view code\)](<./Godebug.hx#L156>)


### Setting function value


```haxe
function value():stdgo.GoString
```


Value returns the current value for the GODEBUG setting s.  



Value maintains an internal cache that is synchronized  
with changes to the $GODEBUG environment variable,  
making Value efficient to call as frequently as needed.  
Clients should therefore typically not attempt their own  
caching of Value's result.  



[\(view code\)](<./Godebug.hx#L151>)


