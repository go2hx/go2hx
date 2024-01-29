# Module: `stdgo.math.rand`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _absInt32(_i:stdgo.GoInt32):Void`](<#function-_absint32>)

- [`function _fastrand64():Void`](<#function-_fastrand64>)

- [`function _globalRand():Void`](<#function-_globalrand>)

- [`function _newSource(_seed:stdgo.GoInt64):Void`](<#function-_newsource>)

- [`function _read(_p:stdgo.Slice<stdgo.GoByte>, _src:stdgo.math.rand.Source, _readVal:stdgo.Pointer<stdgo.GoInt64>, _readPos:stdgo.Pointer<stdgo.GoInt8>):Void`](<#function-_read>)

- [`function _seedrand(_x:stdgo.GoInt32):Void`](<#function-_seedrand>)

- [`function expFloat64():Void`](<#function-expfloat64>)

- [`function float32():Void`](<#function-float32>)

- [`function float64():Void`](<#function-float64>)

- [`function getExponentialDistributionParameters():Void`](<#function-getexponentialdistributionparameters>)

- [`function getNormalDistributionParameters():Void`](<#function-getnormaldistributionparameters>)

- [`function int31():Void`](<#function-int31>)

- [`function int31n(_n:stdgo.GoInt32):Void`](<#function-int31n>)

- [`function int31nForTest(_r:stdgo.Ref<stdgo.math.rand.Rand>, _n:stdgo.GoInt32):Void`](<#function-int31nfortest>)

- [`function int63():Void`](<#function-int63>)

- [`function int63n(_n:stdgo.GoInt64):Void`](<#function-int63n>)

- [`function int_():Void`](<#function-int_>)

- [`function intn(_n:stdgo.GoInt):Void`](<#function-intn>)

- [`function newSource(_seed:stdgo.GoInt64):Void`](<#function-newsource>)

- [`function newZipf(_r:stdgo.Ref<stdgo.math.rand.Rand>, _s:stdgo.GoFloat64, _v:stdgo.GoFloat64, _imax:stdgo.GoUInt64):Void`](<#function-newzipf>)

- [`function new_(_src:stdgo.math.rand.Source):Void`](<#function-new_>)

- [`function normFloat64():Void`](<#function-normfloat64>)

- [`function perm(_n:stdgo.GoInt):Void`](<#function-perm>)

- [`function read(_p:stdgo.Slice<stdgo.GoByte>):Void`](<#function-read>)

- [`function seed(_seed:stdgo.GoInt64):Void`](<#function-seed>)

- [`function shuffle(_n:stdgo.GoInt, _swap:(_i:stdgo.GoInt, _j:stdgo.GoInt):Void):Void`](<#function-shuffle>)

- [`function uint32():Void`](<#function-uint32>)

- [`function uint64():Void`](<#function-uint64>)

- [typedef Rand](<#typedef-rand>)

- [typedef Rand\_asInterface](<#typedef-rand_asinterface>)

- [typedef Rand\_static\_extension](<#typedef-rand_static_extension>)

- [typedef Source](<#typedef-source>)

- [typedef Source64](<#typedef-source64>)

- [typedef T\_fastSource](<#typedef-t_fastsource>)

- [typedef T\_fastSource\_asInterface](<#typedef-t_fastsource_asinterface>)

- [typedef T\_fastSource\_static\_extension](<#typedef-t_fastsource_static_extension>)

- [typedef T\_lockedSource](<#typedef-t_lockedsource>)

- [typedef T\_lockedSource\_asInterface](<#typedef-t_lockedsource_asinterface>)

- [typedef T\_lockedSource\_static\_extension](<#typedef-t_lockedsource_static_extension>)

- [typedef T\_rngSource](<#typedef-t_rngsource>)

- [typedef T\_rngSource\_asInterface](<#typedef-t_rngsource_asinterface>)

- [typedef T\_rngSource\_static\_extension](<#typedef-t_rngsource_static_extension>)

- [typedef Zipf](<#typedef-zipf>)

- [typedef Zipf\_asInterface](<#typedef-zipf_asinterface>)

- [typedef Zipf\_static\_extension](<#typedef-zipf_static_extension>)

# Variables


```haxe
import stdgo.math.rand.Rand
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _fe:Dynamic
```


```haxe
var _fn:Dynamic
```


```haxe
var _globalRandGenerator:Dynamic
```


```haxe
var _int32max:Dynamic
```


```haxe
var _ke:Dynamic
```


```haxe
var _kn:Dynamic
```


```haxe
var _randautoseed:Dynamic
```


```haxe
var _re:Dynamic
```


```haxe
var _rn:Dynamic
```


```haxe
var _rngCooked:Dynamic
```


```haxe
var _rngLen:Dynamic
```


```haxe
var _rngMask:Dynamic
```


```haxe
var _rngMax:Dynamic
```


```haxe
var _rngTap:Dynamic
```


```haxe
var _we:Dynamic
```


```haxe
var _wn:Dynamic
```


# Functions


```haxe
import stdgo.math.rand.Rand
```


## function \_absInt32


```haxe
function _absInt32(_i:stdgo.GoInt32):Void
```


[\(view code\)](<./Rand.hx#L29>)


## function \_fastrand64


```haxe
function _fastrand64():Void
```


[\(view code\)](<./Rand.hx#L35>)


## function \_globalRand


```haxe
function _globalRand():Void
```


[\(view code\)](<./Rand.hx#L34>)


## function \_newSource


```haxe
function _newSource(_seed:stdgo.GoInt64):Void
```


[\(view code\)](<./Rand.hx#L31>)


## function \_read


```haxe
function _read(_p:stdgo.Slice<stdgo.GoByte>, _src:stdgo.math.rand.Source, _readVal:stdgo.Pointer<stdgo.GoInt64>, _readPos:stdgo.Pointer<stdgo.GoInt8>):Void
```


[\(view code\)](<./Rand.hx#L33>)


## function \_seedrand


```haxe
function _seedrand(_x:stdgo.GoInt32):Void
```


[\(view code\)](<./Rand.hx#L52>)


## function expFloat64


```haxe
function expFloat64():Void
```


[\(view code\)](<./Rand.hx#L51>)


## function float32


```haxe
function float32():Void
```


[\(view code\)](<./Rand.hx#L46>)


## function float64


```haxe
function float64():Void
```


[\(view code\)](<./Rand.hx#L45>)


## function getExponentialDistributionParameters


```haxe
function getExponentialDistributionParameters():Void
```


[\(view code\)](<./Rand.hx#L28>)


## function getNormalDistributionParameters


```haxe
function getNormalDistributionParameters():Void
```


[\(view code\)](<./Rand.hx#L27>)


## function int31


```haxe
function int31():Void
```


[\(view code\)](<./Rand.hx#L40>)


## function int31n


```haxe
function int31n(_n:stdgo.GoInt32):Void
```


[\(view code\)](<./Rand.hx#L43>)


## function int31nForTest


```haxe
function int31nForTest(_r:stdgo.Ref<stdgo.math.rand.Rand>, _n:stdgo.GoInt32):Void
```


[\(view code\)](<./Rand.hx#L26>)


## function int63


```haxe
function int63():Void
```


[\(view code\)](<./Rand.hx#L37>)


## function int63n


```haxe
function int63n(_n:stdgo.GoInt64):Void
```


[\(view code\)](<./Rand.hx#L42>)


## function int\_


```haxe
function int_():Void
```


[\(view code\)](<./Rand.hx#L41>)


## function intn


```haxe
function intn(_n:stdgo.GoInt):Void
```


[\(view code\)](<./Rand.hx#L44>)


## function newSource


```haxe
function newSource(_seed:stdgo.GoInt64):Void
```


[\(view code\)](<./Rand.hx#L30>)


## function newZipf


```haxe
function newZipf(_r:stdgo.Ref<stdgo.math.rand.Rand>, _s:stdgo.GoFloat64, _v:stdgo.GoFloat64, _imax:stdgo.GoUInt64):Void
```


[\(view code\)](<./Rand.hx#L53>)


## function new\_


```haxe
function new_(_src:stdgo.math.rand.Source):Void
```


[\(view code\)](<./Rand.hx#L32>)


## function normFloat64


```haxe
function normFloat64():Void
```


[\(view code\)](<./Rand.hx#L50>)


## function perm


```haxe
function perm(_n:stdgo.GoInt):Void
```


[\(view code\)](<./Rand.hx#L47>)


## function read


```haxe
function read(_p:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Rand.hx#L49>)


## function seed


```haxe
function seed(_seed:stdgo.GoInt64):Void
```


[\(view code\)](<./Rand.hx#L36>)


## function shuffle


```haxe
function shuffle(_n:stdgo.GoInt, _swap:(_i:stdgo.GoInt, _j:stdgo.GoInt):Void):Void
```


[\(view code\)](<./Rand.hx#L48>)


## function uint32


```haxe
function uint32():Void
```


[\(view code\)](<./Rand.hx#L38>)


## function uint64


```haxe
function uint64():Void
```


[\(view code\)](<./Rand.hx#L39>)


# Typedefs


```haxe
import stdgo.math.rand.*
```


## typedef Rand


```haxe
typedef Rand = Dynamic;
```


## typedef Rand\_asInterface


```haxe
typedef Rand_asInterface = Dynamic;
```


## typedef Rand\_static\_extension


```haxe
typedef Rand_static_extension = Dynamic;
```


## typedef Source


```haxe
typedef Source = stdgo._internal.math.rand.Source;
```


## typedef Source64


```haxe
typedef Source64 = stdgo._internal.math.rand.Source64;
```


## typedef T\_fastSource


```haxe
typedef T_fastSource = Dynamic;
```


## typedef T\_fastSource\_asInterface


```haxe
typedef T_fastSource_asInterface = Dynamic;
```


## typedef T\_fastSource\_static\_extension


```haxe
typedef T_fastSource_static_extension = Dynamic;
```


## typedef T\_lockedSource


```haxe
typedef T_lockedSource = Dynamic;
```


## typedef T\_lockedSource\_asInterface


```haxe
typedef T_lockedSource_asInterface = Dynamic;
```


## typedef T\_lockedSource\_static\_extension


```haxe
typedef T_lockedSource_static_extension = Dynamic;
```


## typedef T\_rngSource


```haxe
typedef T_rngSource = Dynamic;
```


## typedef T\_rngSource\_asInterface


```haxe
typedef T_rngSource_asInterface = Dynamic;
```


## typedef T\_rngSource\_static\_extension


```haxe
typedef T_rngSource_static_extension = Dynamic;
```


## typedef Zipf


```haxe
typedef Zipf = Dynamic;
```


## typedef Zipf\_asInterface


```haxe
typedef Zipf_asInterface = Dynamic;
```


## typedef Zipf\_static\_extension


```haxe
typedef Zipf_static_extension = Dynamic;
```


