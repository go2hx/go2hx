# Module: `stdgo.internal.intern`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [class Intern](<#class-intern>)

  - [`function get(_cmpVal:stdgo.AnyInterface):stdgo.internal.intern.Value`](<#intern-function-get>)

  - [`function getByString(_s:String):stdgo.internal.intern.Value`](<#intern-function-getbystring>)

- [abstract Value](<#abstract-value>)

- [abstract T\_key](<#abstract-t_key>)

# Classes


```haxe
import
```


## class Intern


```
Package intern lets you make smaller comparable values by boxing
    a larger comparable value (such as a 16 byte string header) down
    into a globally unique 8 byte pointer.
```

The globally unique pointers are garbage collected with weak
references and finalizers. This package hides that.  

### Intern function get


```haxe
function get(_cmpVal:stdgo.AnyInterface):stdgo.internal.intern.Value
```



Get returns a pointer representing the comparable value cmpVal.  


The returned pointer will be the same for Get\(v\) and Get\(v2\)
if and only if v == v2, and can be used as a map key.  

[\(view code\)](<./Intern.hx#L73>)


### Intern function getByString


```haxe
function getByString(_s:String):stdgo.internal.intern.Value
```


```
GetByString is identical to Get, except that it is specialized for strings.
        This avoids an allocation from putting a string into an interface{}
        to pass as an argument to Get.
```
[\(view code\)](<./Intern.hx#L81>)


# Abstracts


## abstract Value


[\(view file containing code\)](<./Intern.hx>)


## abstract T\_key


[\(view file containing code\)](<./Intern.hx>)


