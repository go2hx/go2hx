# Module: `stdgo._internal.crypto.hmac`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [`function equal(_mac1:stdgo.Slice<stdgo.GoUInt8>, _mac2:stdgo.Slice<stdgo.GoUInt8>):Bool`](<#function-equal>)

- [`function new_(_h:():stdgo._internal.hash.Hash, _key:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.hash.Hash`](<#function-new_>)

- [class T\_hmac](<#class-t_hmac>)

  - [`function new(?_opad:stdgo.Slice<stdgo.GoUInt8>, ?_ipad:stdgo.Slice<stdgo.GoUInt8>, ?_outer:Null<stdgo._internal.hash.Hash>, ?_inner:Null<stdgo._internal.hash.Hash>, ?_marshaled:Bool):Void`](<#t_hmac-function-new>)

- [typedef T\_marshalable](<#typedef-t_marshalable>)

# Functions


```haxe
import stdgo._internal.crypto.hmac.Hmac_new_
```


## function equal


```haxe
function equal(_mac1:stdgo.Slice<stdgo.GoUInt8>, _mac2:stdgo.Slice<stdgo.GoUInt8>):Bool
```


[\(view code\)](<./Hmac_new_.hx#L2>)


## function new\_


```haxe
function new_(_h:():stdgo._internal.hash.Hash, _key:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.hash.Hash
```


[\(view code\)](<./Hmac_new_.hx#L2>)


# Classes


```haxe
import stdgo._internal.crypto.hmac.*
```


## class T\_hmac


```haxe
var _inner:stdgo._internal.hash.Hash
```


```haxe
var _ipad:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _marshaled:Bool
```


```haxe
var _opad:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _outer:stdgo._internal.hash.Hash
```


### T\_hmac function new


```haxe
function new(?_opad:stdgo.Slice<stdgo.GoUInt8>, ?_ipad:stdgo.Slice<stdgo.GoUInt8>, ?_outer:Null<stdgo._internal.hash.Hash>, ?_inner:Null<stdgo._internal.hash.Hash>, ?_marshaled:Bool):Void
```


[\(view code\)](<./Hmac_T_hmac.hx#L8>)


# Typedefs


```haxe
import stdgo._internal.crypto.hmac.*
```


## typedef T\_marshalable


```haxe
typedef T_marshalable = {
	public function unmarshalBinary(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error;
	public function marshalBinary():{
		_1:stdgo.Error;
		_0:stdgo.Slice<stdgo.GoUInt8>;
	};
};
```


