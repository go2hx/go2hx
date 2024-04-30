# Module: `stdgo.internal.godebug`

[(view library index)](../../stdgo.md)


# Overview


```
Package godebug makes the settings in the $GODEBUG environment variable
    available to other packages. These settings are often used for compatibility
    tweaks, when we need to change a default behavior but want to let users
    opt back in to the original. For example GODEBUG=http2server=0 disables
    HTTP/2 support in the net/http server.
```

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


- [`function new_(name:String):stdgo.internal.godebug.Setting`](<#function-new_>)

- [typedef Setting](<#typedef-setting>)

- [typedef Setting\_asInterface](<#typedef-setting_asinterface>)

- [typedef Setting\_static\_extension](<#typedef-setting_static_extension>)

- [typedef T\_runtimeStderr](<#typedef-t_runtimestderr>)

- [typedef T\_runtimeStderr\_asInterface](<#typedef-t_runtimestderr_asinterface>)

- [typedef T\_runtimeStderr\_static\_extension](<#typedef-t_runtimestderr_static_extension>)

- [typedef T\_setting](<#typedef-t_setting>)

- [typedef T\_value](<#typedef-t_value>)

# Functions


```haxe
import stdgo.internal.godebug.Godebug
```


## function new\_


```haxe
function new_(name:String):stdgo.internal.godebug.Setting
```



New returns a new Setting for the $GODEBUG setting with the given name.  


GODEBUGs meant for use by end users must be listed in ../godebugs/table.go,
which is used for generating and checking various documentation.
If the name is not listed in that table, New will succeed but calling Value
on the returned Setting will panic.
To disable that panic for access to an undocumented setting,
prefix the name with a \#, as in godebug.New\("\#gofsystrace"\).
The \# is a signal to New but not part of the key used in $GODEBUG.  

[\(view code\)](<./Godebug.hx#L45>)


# Typedefs


```haxe
import stdgo.internal.godebug.*
```


## typedef Setting


```haxe
typedef Setting = Dynamic;
```


## typedef Setting\_asInterface


```haxe
typedef Setting_asInterface = Dynamic;
```


## typedef Setting\_static\_extension


```haxe
typedef Setting_static_extension = Dynamic;
```


## typedef T\_runtimeStderr


```haxe
typedef T_runtimeStderr = Dynamic;
```


## typedef T\_runtimeStderr\_asInterface


```haxe
typedef T_runtimeStderr_asInterface = Dynamic;
```


## typedef T\_runtimeStderr\_static\_extension


```haxe
typedef T_runtimeStderr_static_extension = Dynamic;
```


## typedef T\_setting


```haxe
typedef T_setting = Dynamic;
```


## typedef T\_value


```haxe
typedef T_value = Dynamic;
```


