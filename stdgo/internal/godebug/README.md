# Module: `stdgo.internal.godebug`

[(view library index)](../../stdgo.md)


# Overview


Package godebug parses the GODEBUG environment variable. 


# Index


- [`function _get(_s:stdgo.GoString, _key:stdgo.GoString):stdgo.GoString`](<#function-_get>)

- [`function get(_key:stdgo.GoString):stdgo.GoString`](<#function-get>)

# Functions


```haxe
import stdgo.internal.godebug.Godebug
```


## function \_get


```haxe
function _get(_s:stdgo.GoString, _key:stdgo.GoString):stdgo.GoString
```


get returns the value part of key=value in s \(a GODEBUG value\). 


[\(view code\)](<./Godebug.hx#L28>)


## function get


```haxe
function get(_key:stdgo.GoString):stdgo.GoString
```


Get returns the value for the provided GODEBUG key. 


[\(view code\)](<./Godebug.hx#L22>)


