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

```
	var http2server = godebug.New("http2server")
```
```
	func ServeConn(c net.Conn) {
		if http2server.Value() == "0" {
			disallow HTTP/2
			...
		}
		...
	}
```

Each time a non\-default setting causes a change in program behavior,
code should call \[Setting.IncNonDefault\] to increment a counter that can
be reported by \[runtime/metrics.Read\].
Note that counters used with IncNonDefault must be added to
various tables in other packages. See the \[Setting.IncNonDefault\]
documentation for details.  

# Index


- [Variables](<#variables>)

- [`function _lookup(_name:stdgo.GoString):stdgo.Ref<stdgo.internal.godebug.T_setting>`](<#function-_lookup>)

- [`function _newIncNonDefault(_name:stdgo.GoString):():Void`](<#function-_newincnondefault>)

- [`function _parse(_did:stdgo.GoMap<stdgo.GoString, Bool>, _s:stdgo.GoString):Void`](<#function-_parse>)

- [`function _registerMetric(_name:stdgo.GoString, _read:():stdgo.GoUInt64):Void`](<#function-_registermetric>)

- [`function _setNewIncNonDefault(_newIncNonDefault:()):Void`](<#function-_setnewincnondefault>)

- [`function _setUpdate(_update:(:stdgo.GoString, :stdgo.GoString):Void):Void`](<#function-_setupdate>)

- [`function _update(_def:stdgo.GoString, _env:stdgo.GoString):Void`](<#function-_update>)

- [`function _write(_fd:stdgo.GoUIntptr, _p:stdgo.unsafe.UnsafePointer, _n:stdgo.GoInt32):stdgo.GoInt32`](<#function-_write>)

- [`function new_(_name:stdgo.GoString):stdgo.Ref<stdgo.internal.godebug.Setting>`](<#function-new_>)

- [class Setting](<#class-setting>)

  - [`function new(?_name:stdgo.GoString, ?_once:stdgo.sync.Once, ?_setting:stdgo.Ref<stdgo.internal.godebug.T_setting>):Void`](<#setting-function-new>)

  - [`function _register():Void`](<#setting-function-_register>)

  - [`function incNonDefault():Void`](<#setting-function-incnondefault>)

  - [`function name():stdgo.GoString`](<#setting-function-name>)

  - [`function string():stdgo.GoString`](<#setting-function-string>)

  - [`function undocumented():Bool`](<#setting-function-undocumented>)

  - [`function value():stdgo.GoString`](<#setting-function-value>)

# Variables


```haxe
import stdgo.internal.godebug.Godebug
```


```haxe
var _cache:stdgo.sync.Map_
```



cache is a cache of all the GODEBUG settings,
a locked map\[string\]\*atomic.Pointer\[string\].  


All Settings with the same name share a single
\*atomic.Pointer\[string\], so that when GODEBUG
changes only that single atomic string pointer
needs to be updated.  


A name appears in the values map either if it is the
name of a Setting for which Value has been called
at least once, or if the name has ever appeared in
a name=value pair in the $GODEBUG environment variable.
Once entered into the map, the name is never removed.  


name string \-\> value \*atomic.Pointer\[string\]  

```haxe
var _empty:stdgo.internal.godebug.T_value
```


```haxe
var _stderr:stdgo.internal.godebug.T_runtimeStderr
```


```haxe
var _updateMu:stdgo.sync.Mutex
```


# Functions


```haxe
import stdgo.internal.godebug.Godebug
```


## function \_lookup


```haxe
function _lookup(_name:stdgo.GoString):stdgo.Ref<stdgo.internal.godebug.T_setting>
```



lookup returns the unique \*setting value for the given name.  

[\(view code\)](<./Godebug.hx#L151>)


## function \_newIncNonDefault


```haxe
function _newIncNonDefault(_name:stdgo.GoString):():Void
```


[\(view code\)](<./Godebug.hx#L185>)


## function \_parse


```haxe
function _parse(_did:stdgo.GoMap<stdgo.GoString, Bool>, _s:stdgo.GoString):Void
```



parse parses the GODEBUG setting string s,
which has the form k=v,k2=v2,k3=v3.
Later settings override earlier ones.
Parse only updates settings k=v for which did\[k\] = false.
It also sets did\[k\] = true for settings that it updates.
Each value v can also have the form v\#pattern,
in which case the GODEBUG is only enabled for call stacks
matching pattern, for use with golang.org/x/tools/cmd/bisect.  

[\(view code\)](<./Godebug.hx#L202>)


## function \_registerMetric


```haxe
function _registerMetric(_name:stdgo.GoString, _read:():stdgo.GoUInt64):Void
```



registerMetric is provided by package runtime.
It forwards registrations to runtime/metrics.  

```
go:linkname registerMetric
```
[\(view code\)](<./Godebug.hx#L169>)


## function \_setNewIncNonDefault


```haxe
function _setNewIncNonDefault(_newIncNonDefault:()):Void
```



setNewIncNonDefault is provided by package runtime.
The runtime can do  

```
	inc := newNonDefaultInc(name)
```

instead of  

```
	inc := godebug.New(name).IncNonDefault
```

since it cannot import godebug.  

```
go:linkname setNewIncNonDefault
```
[\(view code\)](<./Godebug.hx#L184>)


## function \_setUpdate


```haxe
function _setUpdate(_update:(:stdgo.GoString, :stdgo.GoString):Void):Void
```



setUpdate is provided by package runtime.
It calls update\(def, env\), where def is the default GODEBUG setting
and env is the current value of the $GODEBUG environment variable.
After that first call, the runtime calls update\(def, env\)
again each time the environment variable changes
\(due to use of os.Setenv, for example\).  

```
go:linkname setUpdate
```
[\(view code\)](<./Godebug.hx#L162>)


## function \_update


```haxe
function _update(_def:stdgo.GoString, _env:stdgo.GoString):Void
```



update records an updated GODEBUG setting.
def is the default GODEBUG setting for the running binary,
and env is the current value of the $GODEBUG environment variable.  

[\(view code\)](<./Godebug.hx#L191>)


## function \_write


```haxe
function _write(_fd:stdgo.GoUIntptr, _p:stdgo.unsafe.UnsafePointer, _n:stdgo.GoInt32):stdgo.GoInt32
```



Since we cannot import os or syscall, use the runtime's write function
to print to standard error.  

```
go:linkname write runtime.write
```
[\(view code\)](<./Godebug.hx#L209>)


## function new\_


```haxe
function new_(_name:stdgo.GoString):stdgo.Ref<stdgo.internal.godebug.Setting>
```



New returns a new Setting for the $GODEBUG setting with the given name.  


GODEBUGs meant for use by end users must be listed in ../godebugs/table.go,
which is used for generating and checking various documentation.
If the name is not listed in that table, New will succeed but calling Value
on the returned Setting will panic.
To disable that panic for access to an undocumented setting,
prefix the name with a \#, as in godebug.New\("\#gofsystrace"\).
The \# is a signal to New but not part of the key used in $GODEBUG.  

[\(view code\)](<./Godebug.hx#L147>)


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
var _setting:stdgo.Ref<stdgo.internal.godebug.T_setting>
```


### Setting function new


```haxe
function new(?_name:stdgo.GoString, ?_once:stdgo.sync.Once, ?_setting:stdgo.Ref<stdgo.internal.godebug.T_setting>):Void
```


[\(view code\)](<./Godebug.hx#L76>)


### Setting function \_register


```haxe
function _register():Void
```


[\(view code\)](<./Godebug.hx#L270>)


### Setting function incNonDefault


```haxe
function incNonDefault():Void
```



IncNonDefault increments the non\-default behavior counter
associated with the given setting.
This counter is exposed in the runtime/metrics value
/godebug/non\-default\-behavior/\<name\>:events.  


Note that Value must be called at least once before IncNonDefault.  

[\(view code\)](<./Godebug.hx#L280>)


### Setting function name


```haxe
function name():stdgo.GoString
```



Name returns the name of the setting.  

[\(view code\)](<./Godebug.hx#L295>)


### Setting function string


```haxe
function string():stdgo.GoString
```



String returns a printable form for the setting: name=value.  

[\(view code\)](<./Godebug.hx#L285>)


### Setting function undocumented


```haxe
function undocumented():Bool
```



Undocumented reports whether this is an undocumented setting.  

[\(view code\)](<./Godebug.hx#L290>)


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

[\(view code\)](<./Godebug.hx#L268>)


