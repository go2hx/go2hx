package stdgo.math.rand;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var _ke : Dynamic;
@:invalid var _we : Dynamic;
@:invalid var _fe : Dynamic;
@:invalid var _kn : Dynamic;
@:invalid var _wn : Dynamic;
@:invalid var _fn : Dynamic;
@:invalid var _randautoseed : Dynamic;
@:invalid var _rngCooked : Dynamic;
@:invalid var _re : Dynamic;
@:invalid var _rn : Dynamic;
@:invalid var _globalRandGenerator : Dynamic;
@:invalid var _rngLen : Dynamic;
@:invalid var _rngTap : Dynamic;
@:invalid var _rngMax : Dynamic;
@:invalid var _rngMask : Dynamic;
@:invalid var _int32max : Dynamic;
typedef Source = stdgo._internal.math.rand.Rand.Source;
typedef Source64 = stdgo._internal.math.rand.Rand.Source64;
@:invalid typedef Rand = Dynamic;
@:invalid typedef T_fastSource = Dynamic;
@:invalid typedef T_lockedSource = Dynamic;
@:invalid typedef T_rngSource = Dynamic;
@:invalid typedef Zipf = Dynamic;
function int31nForTest(_r:stdgo.Ref<Rand>, _n:stdgo.GoInt32):Void {}
function getNormalDistributionParameters():Void {}
function getExponentialDistributionParameters():Void {}
function _absInt32(_i:stdgo.GoInt32):Void {}
function newSource(_seed:stdgo.GoInt64):Void {}
function _newSource(_seed:stdgo.GoInt64):Void {}
function new_(_src:Source):Void {}
function _read(_p:stdgo.Slice<stdgo.GoByte>, _src:Source, _readVal:stdgo.Pointer<stdgo.GoInt64>, _readPos:stdgo.Pointer<stdgo.GoInt8>):Void {}
function _globalRand():Void {}
function _fastrand64():Void {}
function seed(_seed:stdgo.GoInt64):Void {}
function int63():Void {}
function uint32():Void {}
function uint64():Void {}
function int31():Void {}
function int_():Void {}
function int63n(_n:stdgo.GoInt64):Void {}
function int31n(_n:stdgo.GoInt32):Void {}
function intn(_n:stdgo.GoInt):Void {}
function float64():Void {}
function float32():Void {}
function perm(_n:stdgo.GoInt):Void {}
function shuffle(_n:stdgo.GoInt, _swap:(_i:stdgo.GoInt, _j:stdgo.GoInt) -> Void):Void {}
function read(_p:stdgo.Slice<stdgo.GoByte>):Void {}
function normFloat64():Void {}
function expFloat64():Void {}
function _seedrand(_x:stdgo.GoInt32):Void {}
function newZipf(_r:stdgo.Ref<Rand>, _s:stdgo.GoFloat64, _v:stdgo.GoFloat64, _imax:stdgo.GoUInt64):Void {}
@:invalid typedef Rand_asInterface = Dynamic;
@:invalid typedef Rand_static_extension = Dynamic;
@:invalid typedef T_fastSource_asInterface = Dynamic;
@:invalid typedef T_fastSource_static_extension = Dynamic;
@:invalid typedef T_lockedSource_asInterface = Dynamic;
@:invalid typedef T_lockedSource_static_extension = Dynamic;
@:invalid typedef T_rngSource_asInterface = Dynamic;
@:invalid typedef T_rngSource_static_extension = Dynamic;
@:invalid typedef Zipf_asInterface = Dynamic;
@:invalid typedef Zipf_static_extension = Dynamic;
