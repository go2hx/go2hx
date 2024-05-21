# Module: `stdgo.internal.godebug`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [class Godebug](<#class-godebug>)

  - [`function new_(_name:String):stdgo.internal.godebug.Setting`](<#godebug-function-new_>)

- [abstract Setting](<#abstract-setting>)

- [abstract T\_setting](<#abstract-t_setting>)

- [abstract T\_value](<#abstract-t_value>)

- [abstract T\_runtimeStderr](<#abstract-t_runtimestderr>)

# Classes


```haxe
import
```


## class Godebug


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

### Godebug function new\_


```haxe
function new_(_name:String):stdgo.internal.godebug.Setting
```



New returns a new Setting for the $GODEBUG setting with the given name.  


GODEBUGs meant for use by end users must be listed in ../godebugs/table.go,
which is used for generating and checking various documentation.
If the name is not listed in that table, New will succeed but calling Value
on the returned Setting will panic.
To disable that panic for access to an undocumented setting,
prefix the name with a \#, as in godebug.New\("\#gofsystrace"\).
The \# is a signal to New but not part of the key used in $GODEBUG.  

[\(view code\)](<./Godebug.hx#L144>)


# Abstracts


## abstract Setting


[\(view file containing code\)](<./Godebug.hx>)


## abstract T\_setting


[\(view file containing code\)](<./Godebug.hx>)


## abstract T\_value


[\(view file containing code\)](<./Godebug.hx>)


## abstract T\_runtimeStderr


[\(view file containing code\)](<./Godebug.hx>)


