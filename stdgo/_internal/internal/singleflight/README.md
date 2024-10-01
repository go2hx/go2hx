# Module: `stdgo._internal.internal.singleflight`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [class Group](<#class-group>)

  - [`function new(?_mu:stdgo._internal.sync.Mutex, ?_m:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.singleflight.T_call>>):Void`](<#group-function-new>)

- [class Result](<#class-result>)

  - [`function new(?val:stdgo.AnyInterface, ?err:stdgo.Error, ?shared:Bool):Void`](<#result-function-new>)

- [class T\_call](<#class-t_call>)

  - [`function new(?_wg:stdgo._internal.sync.WaitGroup, ?_val:stdgo.AnyInterface, ?_err:stdgo.Error, ?_dups:stdgo.GoInt, ?_chans:stdgo.Slice<stdgo.Chan<stdgo._internal.internal.singleflight.Result>>):Void`](<#t_call-function-new>)

# Classes


```haxe
import stdgo._internal.internal.singleflight.*
```


## class Group


```haxe
var _m:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.singleflight.T_call>>
```


```haxe
var _mu:stdgo._internal.sync.Mutex
```


### Group function new


```haxe
function new(?_mu:stdgo._internal.sync.Mutex, ?_m:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.singleflight.T_call>>):Void
```


[\(view code\)](<./Singleflight_Group.hx#L5>)


## class Result


```haxe
var err:stdgo.Error
```


```haxe
var shared:Bool
```


```haxe
var val:stdgo.AnyInterface
```


### Result function new


```haxe
function new(?val:stdgo.AnyInterface, ?err:stdgo.Error, ?shared:Bool):Void
```


[\(view code\)](<./Singleflight_Result.hx#L6>)


## class T\_call


```haxe
var _chans:stdgo.Slice<stdgo.Chan<stdgo._internal.internal.singleflight.Result>>
```


```haxe
var _dups:stdgo.GoInt
```


```haxe
var _err:stdgo.Error
```


```haxe
var _val:stdgo.AnyInterface
```


```haxe
var _wg:stdgo._internal.sync.WaitGroup
```


### T\_call function new


```haxe
function new(?_wg:stdgo._internal.sync.WaitGroup, ?_val:stdgo.AnyInterface, ?_err:stdgo.Error, ?_dups:stdgo.GoInt, ?_chans:stdgo.Slice<stdgo.Chan<stdgo._internal.internal.singleflight.Result>>):Void
```


[\(view code\)](<./Singleflight_T_call.hx#L8>)


