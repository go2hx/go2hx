# Module: stdgo.testing.quick


[(view library index)](../../stdgo.md)


# Overview


 


# Index


- [function check\(\_f:stdgo.AnyInterface, \_config:stdgo.testing.quick.Config\):\{\<unknown\>\}](<#function-check>)

- [function checkEqual\(\_f:stdgo.AnyInterface, \_g:stdgo.AnyInterface, \_config:stdgo.testing.quick.Config\):stdgo.Error](<#function-checkequal>)

- [class Config](<#class-config>)

  - [function new\(?maxCount:Null\<stdgo.GoInt\>, ?maxCountScale:Null\<stdgo.GoFloat64\>, ?rand:Null\<stdgo.Ref\<stdgo.math.rand.Rand\>\>, values:\(:stdgo.Slice\<stdgo.reflect.Value\>, :stdgo.Ref\<stdgo.math.rand.Rand\>\):Void\):Void](<#config-function-new>)

  - [function values\(:stdgo.Slice\<stdgo.reflect.Value\>, :stdgo.Ref\<stdgo.math.rand.Rand\>\):Void](<#config-function-values>)

# Functions


```haxe
import stdgo.testing.quick.Quick
```


## function \`check\`


```haxe
function check(_f:stdgo.AnyInterface, _config:stdgo.testing.quick.Config):{<unknown>}
```


 


[\(view code\)](<./Quick.hx#L6>)


## function \`checkEqual\`


```haxe
function checkEqual(_f:stdgo.AnyInterface, _g:stdgo.AnyInterface, _config:stdgo.testing.quick.Config):stdgo.Error
```


 


[\(view code\)](<./Quick.hx#L9>)


# Classes


```haxe
import stdgo.testing.quick.*
```


## class Config


 


```haxe
var maxCount:stdgo.GoInt
```


```haxe
var maxCountScale:stdgo.GoFloat64
```


```haxe
var rand:stdgo.Ref<stdgo.math.rand.Rand>
```


### Config function new


```haxe
function new(?maxCount:Null<stdgo.GoInt>, ?maxCountScale:Null<stdgo.GoFloat64>, ?rand:Null<stdgo.Ref<stdgo.math.rand.Rand>>, values:(:stdgo.Slice<stdgo.reflect.Value>, :stdgo.Ref<stdgo.math.rand.Rand>):Void):Void
```


 


[\(view code\)](<./Quick.hx#L13>)


### Config function values


```haxe
function values(:stdgo.Slice<stdgo.reflect.Value>, :stdgo.Ref<stdgo.math.rand.Rand>):Void
```


 


