package stdgo._internal.testing.quick;
private var __go2hxdoc__package : Bool;
final _complexSize : stdgo.GoUInt64 = (50i64 : stdgo.GoUInt64);
var _defaultConfig : Config = ({} : stdgo._internal.testing.quick.Quick.Config);
var _defaultMaxCount : stdgo.Pointer<stdgo.GoInt> = stdgo._internal.flag.Flag.int_(("quickchecks" : stdgo.GoString), (100 : stdgo.GoInt), ("The default number of iterations for each check" : stdgo.GoString));
@:keep class Generator_static_extension {
    static public function generate(t:Generator, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, _size:stdgo.GoInt):stdgo._internal.reflect.Reflect.Value return t.generate(_rand, _size);
}
typedef Generator = stdgo.StructType & {
    /**
        Generate returns a random instance of the type on which it is a
        method using the size as a size hint.
        
        
    **/
    public dynamic function generate(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, _size:stdgo.GoInt):stdgo._internal.reflect.Reflect.Value;
};
@:structInit @:using(stdgo._internal.testing.quick.Quick.Config_static_extension) class Config {
    public var maxCount : stdgo.GoInt = 0;
    public var maxCountScale : stdgo.GoFloat64 = 0;
    public var rand : stdgo.Ref<stdgo._internal.math.rand.Rand.Rand> = (null : stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>);
    public var values : (stdgo.Slice<stdgo._internal.reflect.Reflect.Value>, stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>) -> Void = null;
    public function new(?maxCount:stdgo.GoInt, ?maxCountScale:stdgo.GoFloat64, ?rand:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, ?values:(stdgo.Slice<stdgo._internal.reflect.Reflect.Value>, stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>) -> Void) {
        if (maxCount != null) this.maxCount = maxCount;
        if (maxCountScale != null) this.maxCountScale = maxCountScale;
        if (rand != null) this.rand = rand;
        if (values != null) this.values = values;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Config(maxCount, maxCountScale, rand, values);
    }
}
@:structInit @:using(stdgo._internal.testing.quick.Quick.CheckError_static_extension) class CheckError {
    public var count : stdgo.GoInt = 0;
    public var in_ : stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
    public function new(?count:stdgo.GoInt, ?in_:stdgo.Slice<stdgo.AnyInterface>) {
        if (count != null) this.count = count;
        if (in_ != null) this.in_ = in_;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CheckError(count, in_);
    }
}
@:structInit @:using(stdgo._internal.testing.quick.Quick.CheckEqualError_static_extension) class CheckEqualError {
    @:embedded
    public var checkError : stdgo._internal.testing.quick.Quick.CheckError = ({} : stdgo._internal.testing.quick.Quick.CheckError);
    public var out1 : stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
    public var out2 : stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
    public function new(?checkError:stdgo._internal.testing.quick.Quick.CheckError, ?out1:stdgo.Slice<stdgo.AnyInterface>, ?out2:stdgo.Slice<stdgo.AnyInterface>) {
        if (checkError != null) this.checkError = checkError;
        if (out1 != null) this.out1 = out1;
        if (out2 != null) this.out2 = out2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CheckEqualError(checkError, out1, out2);
    }
}
@:structInit class TestStruct {
    public var a : stdgo.GoInt = 0;
    public var b : stdgo.GoString = "";
    public function new(?a:stdgo.GoInt, ?b:stdgo.GoString) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new TestStruct(a, b);
    }
}
@:structInit @:private @:using(stdgo._internal.testing.quick.Quick.T_myStruct_static_extension) class T_myStruct {
    public var _x : stdgo.GoInt = 0;
    public function new(?_x:stdgo.GoInt) {
        if (_x != null) this._x = _x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_myStruct(_x);
    }
}
@:structInit class A {
    public var b : stdgo.Ref<stdgo._internal.testing.quick.Quick.B> = (null : stdgo.Ref<stdgo._internal.testing.quick.Quick.B>);
    public function new(?b:stdgo.Ref<stdgo._internal.testing.quick.Quick.B>) {
        if (b != null) this.b = b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new A(b);
    }
}
@:structInit class B {
    public var a : stdgo.Ref<stdgo._internal.testing.quick.Quick.A> = (null : stdgo.Ref<stdgo._internal.testing.quick.Quick.A>);
    public function new(?a:stdgo.Ref<stdgo._internal.testing.quick.Quick.A>) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new B(a);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.testing.quick.Quick.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.testing.quick.Quick.T__struct_0_static_extension) typedef T__struct_0 = {};
@:named @:using(stdgo._internal.testing.quick.Quick.SetupError_static_extension) typedef SetupError = stdgo.GoString;
@:named typedef TestArrayAlias = stdgo.GoArray<stdgo.GoUInt8>;
@:named typedef TestBoolAlias = Bool;
@:named typedef TestFloat32Alias = stdgo.GoFloat32;
@:named typedef TestFloat64Alias = stdgo.GoFloat64;
@:named typedef TestComplex64Alias = stdgo.GoComplex64;
@:named typedef TestComplex128Alias = stdgo.GoComplex128;
@:named typedef TestInt16Alias = stdgo.GoInt16;
@:named typedef TestInt32Alias = stdgo.GoInt32;
@:named typedef TestInt64Alias = stdgo.GoInt64;
@:named typedef TestInt8Alias = stdgo.GoInt8;
@:named typedef TestIntAlias = stdgo.GoInt;
@:named typedef TestMapAlias = stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>;
@:named typedef TestPtrAlias = stdgo.Pointer<stdgo.GoInt>;
@:named typedef TestSliceAlias = stdgo.Slice<stdgo.GoUInt8>;
@:named typedef TestStringAlias = stdgo.GoString;
@:named typedef TestStructAlias = stdgo._internal.testing.quick.Quick.TestStruct;
@:named typedef TestUint16Alias = stdgo.GoUInt16;
@:named typedef TestUint32Alias = stdgo.GoUInt32;
@:named typedef TestUint64Alias = stdgo.GoUInt64;
@:named typedef TestUint8Alias = stdgo.GoUInt8;
@:named typedef TestUintAlias = stdgo.GoUInt;
@:named typedef TestUintptrAlias = stdgo.GoUIntptr;
function _randFloat32(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>):stdgo.GoFloat32 {
        var _f = (_rand.float64() * (3.4028234663852886e+38 : stdgo.GoFloat64) : stdgo.GoFloat64);
        if ((_rand.int_() & (1 : stdgo.GoInt) : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            _f = -_f;
        };
        return (_f : stdgo.GoFloat32);
    }
function _randFloat64(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>):stdgo.GoFloat64 {
        var _f = (_rand.float64() * (1.7976931348623157e+308 : stdgo.GoFloat64) : stdgo.GoFloat64);
        if ((_rand.int_() & (1 : stdgo.GoInt) : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            _f = -_f;
        };
        return _f;
    }
function _randInt64(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>):stdgo.GoInt64 {
        return (_rand.uint64() : stdgo.GoInt64);
    }
function value(_t:stdgo._internal.reflect.Reflect.Type_, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>):{ var _0 : stdgo._internal.reflect.Reflect.Value; var _1 : Bool; } {
        var _value = ({} : stdgo._internal.reflect.Reflect.Value), _ok = false;
        return _sizedValue(_t, _rand, (50 : stdgo.GoInt));
    }
function _sizedValue(_t:stdgo._internal.reflect.Reflect.Type_, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, _size:stdgo.GoInt):{ var _0 : stdgo._internal.reflect.Reflect.Value; var _1 : Bool; } {
        var _value = ({} : stdgo._internal.reflect.Reflect.Value), _ok = false;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo._internal.reflect.Reflect.zero(_t).interface_() : Generator)) : Generator), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.testing.quick.Quick.Generator), _1 : false };
            }, _m = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return { _0 : _m.generate(_rand, _size)?.__copy__(), _1 : true };
            };
        };
        var _v = stdgo._internal.reflect.Reflect.new_(_t).elem()?.__copy__();
        {
            var _concrete = _t;
            {
                final __value__ = _concrete.kind();
                if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect.Kind))) {
                    _v.setBool((_rand.int_() & (1 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt)));
                } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect.Kind))) {
                    _v.setFloat((_randFloat32(_rand) : stdgo.GoFloat64));
                } else if (__value__ == ((14u32 : stdgo._internal.reflect.Reflect.Kind))) {
                    _v.setFloat(_randFloat64(_rand));
                } else if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect.Kind))) {
                    _v.setComplex(new stdgo.GoComplex128((_randFloat32(_rand) : stdgo.GoFloat64), (_randFloat32(_rand) : stdgo.GoFloat64)));
                } else if (__value__ == ((16u32 : stdgo._internal.reflect.Reflect.Kind))) {
                    _v.setComplex(new stdgo.GoComplex128(_randFloat64(_rand), _randFloat64(_rand)));
                } else if (__value__ == ((4u32 : stdgo._internal.reflect.Reflect.Kind))) {
                    _v.setInt(_randInt64(_rand));
                } else if (__value__ == ((5u32 : stdgo._internal.reflect.Reflect.Kind))) {
                    _v.setInt(_randInt64(_rand));
                } else if (__value__ == ((6u32 : stdgo._internal.reflect.Reflect.Kind))) {
                    _v.setInt(_randInt64(_rand));
                } else if (__value__ == ((3u32 : stdgo._internal.reflect.Reflect.Kind))) {
                    _v.setInt(_randInt64(_rand));
                } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect.Kind))) {
                    _v.setInt(_randInt64(_rand));
                } else if (__value__ == ((9u32 : stdgo._internal.reflect.Reflect.Kind))) {
                    _v.setUint((_randInt64(_rand) : stdgo.GoUInt64));
                } else if (__value__ == ((10u32 : stdgo._internal.reflect.Reflect.Kind))) {
                    _v.setUint((_randInt64(_rand) : stdgo.GoUInt64));
                } else if (__value__ == ((11u32 : stdgo._internal.reflect.Reflect.Kind))) {
                    _v.setUint((_randInt64(_rand) : stdgo.GoUInt64));
                } else if (__value__ == ((8u32 : stdgo._internal.reflect.Reflect.Kind))) {
                    _v.setUint((_randInt64(_rand) : stdgo.GoUInt64));
                } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect.Kind))) {
                    _v.setUint((_randInt64(_rand) : stdgo.GoUInt64));
                } else if (__value__ == ((12u32 : stdgo._internal.reflect.Reflect.Kind))) {
                    _v.setUint((_randInt64(_rand) : stdgo.GoUInt64));
                } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect.Kind))) {
                    var _numElems = _rand.intn(_size);
                    _v.set(stdgo._internal.reflect.Reflect.makeMap(_concrete)?.__copy__());
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _numElems : Bool), _i++, {
                            var __tmp__ = _sizedValue(_concrete.key(), _rand, _size), _key:stdgo._internal.reflect.Reflect.Value = __tmp__._0, _ok1:Bool = __tmp__._1;
                            var __tmp__ = _sizedValue(_concrete.elem(), _rand, _size), _value:stdgo._internal.reflect.Reflect.Value = __tmp__._0, _ok2:Bool = __tmp__._1;
                            if ((!_ok1 || !_ok2 : Bool)) {
                                return { _0 : (new stdgo._internal.reflect.Reflect.Value() : stdgo._internal.reflect.Reflect.Value), _1 : false };
                            };
                            _v.setMapIndex(_key?.__copy__(), _value?.__copy__());
                        });
                    };
                } else if (__value__ == ((22u32 : stdgo._internal.reflect.Reflect.Kind))) {
                    if (_rand.intn(_size) == ((0 : stdgo.GoInt))) {
                        _v.setZero();
                    } else {
                        var __tmp__ = _sizedValue(_concrete.elem(), _rand, _size), _elem:stdgo._internal.reflect.Reflect.Value = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (!_ok) {
                            return { _0 : (new stdgo._internal.reflect.Reflect.Value() : stdgo._internal.reflect.Reflect.Value), _1 : false };
                        };
                        _v.set(stdgo._internal.reflect.Reflect.new_(_concrete.elem())?.__copy__());
                        _v.elem().set(_elem?.__copy__());
                    };
                } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect.Kind))) {
                    var _numElems = _rand.intn(_size);
                    var _sizeLeft = (_size - _numElems : stdgo.GoInt);
                    _v.set(stdgo._internal.reflect.Reflect.makeSlice(_concrete, _numElems, _numElems)?.__copy__());
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _numElems : Bool), _i++, {
                            var __tmp__ = _sizedValue(_concrete.elem(), _rand, _sizeLeft), _elem:stdgo._internal.reflect.Reflect.Value = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (!_ok) {
                                return { _0 : (new stdgo._internal.reflect.Reflect.Value() : stdgo._internal.reflect.Reflect.Value), _1 : false };
                            };
                            _v.index(_i).set(_elem?.__copy__());
                        });
                    };
                } else if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect.Kind))) {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _v.len() : Bool), _i++, {
                            var __tmp__ = _sizedValue(_concrete.elem(), _rand, _size), _elem:stdgo._internal.reflect.Reflect.Value = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (!_ok) {
                                return { _0 : (new stdgo._internal.reflect.Reflect.Value() : stdgo._internal.reflect.Reflect.Value), _1 : false };
                            };
                            _v.index(_i).set(_elem?.__copy__());
                        });
                    };
                } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect.Kind))) {
                    var _numChars = _rand.intn((50 : stdgo.GoInt));
                    var _codePoints = (new stdgo.Slice<stdgo.GoInt32>((_numChars : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _numChars : Bool), _i++, {
                            _codePoints[(_i : stdgo.GoInt)] = (_rand.intn((1114111 : stdgo.GoInt)) : stdgo.GoRune);
                        });
                    };
                    _v.setString((_codePoints : stdgo.GoString)?.__copy__());
                } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect.Kind))) {
                    var _n = _v.numField();
                    var _sizeLeft = _size;
                    if ((_n > _sizeLeft : Bool)) {
                        _sizeLeft = (1 : stdgo.GoInt);
                    } else if ((_n > (0 : stdgo.GoInt) : Bool)) {
                        _sizeLeft = (_sizeLeft / (_n) : stdgo.GoInt);
                    };
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _n : Bool), _i++, {
                            var __tmp__ = _sizedValue(_concrete.field(_i).type, _rand, _sizeLeft), _elem:stdgo._internal.reflect.Reflect.Value = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (!_ok) {
                                return { _0 : (new stdgo._internal.reflect.Reflect.Value() : stdgo._internal.reflect.Reflect.Value), _1 : false };
                            };
                            _v.field(_i).set(_elem?.__copy__());
                        });
                    };
                } else {
                    return { _0 : (new stdgo._internal.reflect.Reflect.Value() : stdgo._internal.reflect.Reflect.Value), _1 : false };
                };
            };
        };
        return { _0 : _v?.__copy__(), _1 : true };
    }
function check(_f:stdgo.AnyInterface, _config:stdgo.Ref<Config>):stdgo.Error {
        if (_config == null || (_config : Dynamic).__nil__) {
            _config = (stdgo.Go.setRef(_defaultConfig) : stdgo.Ref<stdgo._internal.testing.quick.Quick.Config>);
        };
        var __tmp__ = _functionAndType(_f), _fVal:stdgo._internal.reflect.Reflect.Value = __tmp__._0, _fType:stdgo._internal.reflect.Reflect.Type_ = __tmp__._1, _ok:Bool = __tmp__._2;
        if (!_ok) {
            return stdgo.Go.asInterface(((("argument is not a function" : stdgo.GoString) : stdgo._internal.testing.quick.Quick.SetupError) : SetupError));
        };
        if (_fType.numOut() != ((1 : stdgo.GoInt))) {
            return stdgo.Go.asInterface(((("function does not return one value" : stdgo.GoString) : stdgo._internal.testing.quick.Quick.SetupError) : SetupError));
        };
        if (_fType.out((0 : stdgo.GoInt)).kind() != ((1u32 : stdgo._internal.reflect.Reflect.Kind))) {
            return stdgo.Go.asInterface(((("function does not return a bool" : stdgo.GoString) : stdgo._internal.testing.quick.Quick.SetupError) : SetupError));
        };
        var _arguments = (new stdgo.Slice<stdgo._internal.reflect.Reflect.Value>((_fType.numIn() : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_fType.numIn() : stdgo.GoInt).toBasic() > 0 ? (_fType.numIn() : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect.Value)]) : stdgo.Slice<stdgo._internal.reflect.Reflect.Value>);
        var _rand = _config._getRand();
        var _maxCount = _config._getMaxCount();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _maxCount : Bool), _i++, {
                var _err = _arbitraryValues(_arguments, _fType, _config, _rand);
                if (_err != null) {
                    return _err;
                };
                if (!_fVal.call(_arguments)[(0 : stdgo.GoInt)].bool_()) {
                    return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.testing.quick.Quick.CheckError((_i + (1 : stdgo.GoInt) : stdgo.GoInt), _toInterfaces(_arguments)) : stdgo._internal.testing.quick.Quick.CheckError)) : stdgo.Ref<stdgo._internal.testing.quick.Quick.CheckError>));
                };
            });
        };
        return (null : stdgo.Error);
    }
function checkEqual(_f:stdgo.AnyInterface, _g:stdgo.AnyInterface, _config:stdgo.Ref<Config>):stdgo.Error {
        if (_config == null || (_config : Dynamic).__nil__) {
            _config = (stdgo.Go.setRef(_defaultConfig) : stdgo.Ref<stdgo._internal.testing.quick.Quick.Config>);
        };
        var __tmp__ = _functionAndType(_f), _x:stdgo._internal.reflect.Reflect.Value = __tmp__._0, _xType:stdgo._internal.reflect.Reflect.Type_ = __tmp__._1, _ok:Bool = __tmp__._2;
        if (!_ok) {
            return stdgo.Go.asInterface(((("f is not a function" : stdgo.GoString) : stdgo._internal.testing.quick.Quick.SetupError) : SetupError));
        };
        var __tmp__ = _functionAndType(_g), _y:stdgo._internal.reflect.Reflect.Value = __tmp__._0, _yType:stdgo._internal.reflect.Reflect.Type_ = __tmp__._1, _ok:Bool = __tmp__._2;
        if (!_ok) {
            return stdgo.Go.asInterface(((("g is not a function" : stdgo.GoString) : stdgo._internal.testing.quick.Quick.SetupError) : SetupError));
        };
        if (!((_xType.string() : String) == (_yType.string() : String))) {
            return stdgo.Go.asInterface(((("functions have different types" : stdgo.GoString) : stdgo._internal.testing.quick.Quick.SetupError) : SetupError));
        };
        var _arguments = (new stdgo.Slice<stdgo._internal.reflect.Reflect.Value>((_xType.numIn() : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_xType.numIn() : stdgo.GoInt).toBasic() > 0 ? (_xType.numIn() : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect.Value)]) : stdgo.Slice<stdgo._internal.reflect.Reflect.Value>);
        var _rand = _config._getRand();
        var _maxCount = _config._getMaxCount();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _maxCount : Bool), _i++, {
                var _err = _arbitraryValues(_arguments, _xType, _config, _rand);
                if (_err != null) {
                    return _err;
                };
                var _xOut = _toInterfaces(_x.call(_arguments));
                var _yOut = _toInterfaces(_y.call(_arguments));
                if (!stdgo._internal.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_xOut), stdgo.Go.toInterface(_yOut))) {
                    return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.testing.quick.Quick.CheckEqualError((new stdgo._internal.testing.quick.Quick.CheckError((_i + (1 : stdgo.GoInt) : stdgo.GoInt), _toInterfaces(_arguments)) : stdgo._internal.testing.quick.Quick.CheckError), _xOut, _yOut) : stdgo._internal.testing.quick.Quick.CheckEqualError)) : stdgo.Ref<stdgo._internal.testing.quick.Quick.CheckEqualError>));
                };
            });
        };
        return (null : stdgo.Error);
    }
function _arbitraryValues(_args:stdgo.Slice<stdgo._internal.reflect.Reflect.Value>, _f:stdgo._internal.reflect.Reflect.Type_, _config:stdgo.Ref<Config>, _rand:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>):stdgo.Error {
        var _err = (null : stdgo.Error);
        if (_config.values != null) {
            _config.values(_args, _rand);
            return _err;
        };
        {
            var _j = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_j < (_args.length) : Bool), _j++, {
                var _ok:Bool = false;
                {
                    var __tmp__ = value(_f.in_(_j), _rand);
                    _args[(_j : stdgo.GoInt)] = __tmp__._0?.__copy__();
                    _ok = __tmp__._1;
                };
                if (!_ok) {
                    _err = stdgo.Go.asInterface((stdgo._internal.fmt.Fmt.sprintf(("cannot create arbitrary value of type %s for argument %d" : stdgo.GoString), stdgo.Go.toInterface(_f.in_(_j)), stdgo.Go.toInterface(_j)) : SetupError));
                    return _err;
                };
            });
        };
        return _err;
    }
function _functionAndType(_f:stdgo.AnyInterface):{ var _0 : stdgo._internal.reflect.Reflect.Value; var _1 : stdgo._internal.reflect.Reflect.Type_; var _2 : Bool; } {
        var _v = ({} : stdgo._internal.reflect.Reflect.Value), _t = (null : stdgo._internal.reflect.Reflect.Type_), _ok = false;
        _v = stdgo._internal.reflect.Reflect.valueOf(_f)?.__copy__();
        _ok = _v.kind() == ((19u32 : stdgo._internal.reflect.Reflect.Kind));
        if (!_ok) {
            return { _0 : _v, _1 : _t, _2 : _ok };
        };
        _t = _v.type();
        return { _0 : _v, _1 : _t, _2 : _ok };
    }
function _toInterfaces(_values:stdgo.Slice<stdgo._internal.reflect.Reflect.Value>):stdgo.Slice<stdgo.AnyInterface> {
        var _ret = (new stdgo.Slice<stdgo.AnyInterface>((_values.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.AnyInterface>);
        for (_i => _v in _values) {
            _ret[(_i : stdgo.GoInt)] = _v.interface_();
        };
        return _ret;
    }
function _toString(_interfaces:stdgo.Slice<stdgo.AnyInterface>):stdgo.GoString {
        var _s = (new stdgo.Slice<stdgo.GoString>((_interfaces.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_i => _v in _interfaces) {
            _s[(_i : stdgo.GoInt)] = stdgo._internal.fmt.Fmt.sprintf(("%#v" : stdgo.GoString), _v)?.__copy__();
        };
        return stdgo._internal.strings.Strings.join(_s, (", " : stdgo.GoString))?.__copy__();
    }
function _fArray(_a:stdgo.GoArray<stdgo.GoByte>):stdgo.GoArray<stdgo.GoByte> {
        return _a?.__copy__();
    }
function _fArrayAlias(_a:TestArrayAlias):TestArrayAlias {
        return _a?.__copy__();
    }
function _fBool(_a:Bool):Bool {
        return _a;
    }
function _fBoolAlias(_a:TestBoolAlias):TestBoolAlias {
        return _a;
    }
function _fFloat32(_a:stdgo.GoFloat32):stdgo.GoFloat32 {
        return _a;
    }
function _fFloat32Alias(_a:TestFloat32Alias):TestFloat32Alias {
        return _a;
    }
function _fFloat64(_a:stdgo.GoFloat64):stdgo.GoFloat64 {
        return _a;
    }
function _fFloat64Alias(_a:TestFloat64Alias):TestFloat64Alias {
        return _a;
    }
function _fComplex64(_a:stdgo.GoComplex64):stdgo.GoComplex64 {
        return _a;
    }
function _fComplex64Alias(_a:TestComplex64Alias):TestComplex64Alias {
        return _a;
    }
function _fComplex128(_a:stdgo.GoComplex128):stdgo.GoComplex128 {
        return _a;
    }
function _fComplex128Alias(_a:TestComplex128Alias):TestComplex128Alias {
        return _a;
    }
function _fInt16(_a:stdgo.GoInt16):stdgo.GoInt16 {
        return _a;
    }
function _fInt16Alias(_a:TestInt16Alias):TestInt16Alias {
        return _a;
    }
function _fInt32(_a:stdgo.GoInt32):stdgo.GoInt32 {
        return _a;
    }
function _fInt32Alias(_a:TestInt32Alias):TestInt32Alias {
        return _a;
    }
function _fInt64(_a:stdgo.GoInt64):stdgo.GoInt64 {
        return _a;
    }
function _fInt64Alias(_a:TestInt64Alias):TestInt64Alias {
        return _a;
    }
function _fInt8(_a:stdgo.GoInt8):stdgo.GoInt8 {
        return _a;
    }
function _fInt8Alias(_a:TestInt8Alias):TestInt8Alias {
        return _a;
    }
function _fInt(_a:stdgo.GoInt):stdgo.GoInt {
        return _a;
    }
function _fIntAlias(_a:TestIntAlias):TestIntAlias {
        return _a;
    }
function _fMap(_a:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>):stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> {
        return _a;
    }
function _fMapAlias(_a:TestMapAlias):TestMapAlias {
        return _a;
    }
function _fPtr(_a:stdgo.Pointer<stdgo.GoInt>):stdgo.Pointer<stdgo.GoInt> {
        if (_a == null) {
            return (null : stdgo.Pointer<stdgo.GoInt>);
        };
        var _b = _a.value;
        return stdgo.Go.pointer(_b);
    }
function _fPtrAlias(_a:TestPtrAlias):TestPtrAlias {
        return _a;
    }
function _fSlice(_a:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
        return _a;
    }
function _fSliceAlias(_a:TestSliceAlias):TestSliceAlias {
        return _a;
    }
function _fString(_a:stdgo.GoString):stdgo.GoString {
        return _a?.__copy__();
    }
function _fStringAlias(_a:TestStringAlias):TestStringAlias {
        return _a;
    }
function _fStruct(_a:TestStruct):TestStruct {
        return _a?.__copy__();
    }
function _fStructAlias(_a:TestStructAlias):TestStructAlias {
        return _a?.__copy__();
    }
function _fUint16(_a:stdgo.GoUInt16):stdgo.GoUInt16 {
        return _a;
    }
function _fUint16Alias(_a:TestUint16Alias):TestUint16Alias {
        return _a;
    }
function _fUint32(_a:stdgo.GoUInt32):stdgo.GoUInt32 {
        return _a;
    }
function _fUint32Alias(_a:TestUint32Alias):TestUint32Alias {
        return _a;
    }
function _fUint64(_a:stdgo.GoUInt64):stdgo.GoUInt64 {
        return _a;
    }
function _fUint64Alias(_a:TestUint64Alias):TestUint64Alias {
        return _a;
    }
function _fUint8(_a:stdgo.GoUInt8):stdgo.GoUInt8 {
        return _a;
    }
function _fUint8Alias(_a:TestUint8Alias):TestUint8Alias {
        return _a;
    }
function _fUint(_a:stdgo.GoUInt):stdgo.GoUInt {
        return _a;
    }
function _fUintAlias(_a:TestUintAlias):TestUintAlias {
        return _a;
    }
function _fUintptr(_a:stdgo.GoUIntptr):stdgo.GoUIntptr {
        return _a;
    }
function _fUintptrAlias(_a:TestUintptrAlias):TestUintptrAlias {
        return _a;
    }
function _reportError(_property:stdgo.GoString, _err:stdgo.Error, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (_err != null) {
            _t.errorf(("%s: %s" : stdgo.GoString), stdgo.Go.toInterface(_property), stdgo.Go.toInterface(_err));
        };
    }
function testCheckEqual(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _reportError(("fArray" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fArray), stdgo.Go.toInterface(_fArray), null), _t);
        _reportError(("fArrayAlias" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fArrayAlias), stdgo.Go.toInterface(_fArrayAlias), null), _t);
        _reportError(("fBool" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fBool), stdgo.Go.toInterface(_fBool), null), _t);
        _reportError(("fBoolAlias" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fBoolAlias), stdgo.Go.toInterface(_fBoolAlias), null), _t);
        _reportError(("fFloat32" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fFloat32), stdgo.Go.toInterface(_fFloat32), null), _t);
        _reportError(("fFloat32Alias" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fFloat32Alias), stdgo.Go.toInterface(_fFloat32Alias), null), _t);
        _reportError(("fFloat64" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fFloat64), stdgo.Go.toInterface(_fFloat64), null), _t);
        _reportError(("fFloat64Alias" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fFloat64Alias), stdgo.Go.toInterface(_fFloat64Alias), null), _t);
        _reportError(("fComplex64" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fComplex64), stdgo.Go.toInterface(_fComplex64), null), _t);
        _reportError(("fComplex64Alias" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fComplex64Alias), stdgo.Go.toInterface(_fComplex64Alias), null), _t);
        _reportError(("fComplex128" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fComplex128), stdgo.Go.toInterface(_fComplex128), null), _t);
        _reportError(("fComplex128Alias" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fComplex128Alias), stdgo.Go.toInterface(_fComplex128Alias), null), _t);
        _reportError(("fInt16" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fInt16), stdgo.Go.toInterface(_fInt16), null), _t);
        _reportError(("fInt16Alias" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fInt16Alias), stdgo.Go.toInterface(_fInt16Alias), null), _t);
        _reportError(("fInt32" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fInt32), stdgo.Go.toInterface(_fInt32), null), _t);
        _reportError(("fInt32Alias" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fInt32Alias), stdgo.Go.toInterface(_fInt32Alias), null), _t);
        _reportError(("fInt64" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fInt64), stdgo.Go.toInterface(_fInt64), null), _t);
        _reportError(("fInt64Alias" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fInt64Alias), stdgo.Go.toInterface(_fInt64Alias), null), _t);
        _reportError(("fInt8" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fInt8), stdgo.Go.toInterface(_fInt8), null), _t);
        _reportError(("fInt8Alias" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fInt8Alias), stdgo.Go.toInterface(_fInt8Alias), null), _t);
        _reportError(("fInt" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fInt), stdgo.Go.toInterface(_fInt), null), _t);
        _reportError(("fIntAlias" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fIntAlias), stdgo.Go.toInterface(_fIntAlias), null), _t);
        _reportError(("fInt32" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fInt32), stdgo.Go.toInterface(_fInt32), null), _t);
        _reportError(("fInt32Alias" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fInt32Alias), stdgo.Go.toInterface(_fInt32Alias), null), _t);
        _reportError(("fMap" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fMap), stdgo.Go.toInterface(_fMap), null), _t);
        _reportError(("fMapAlias" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fMapAlias), stdgo.Go.toInterface(_fMapAlias), null), _t);
        _reportError(("fPtr" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fPtr), stdgo.Go.toInterface(_fPtr), null), _t);
        _reportError(("fPtrAlias" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fPtrAlias), stdgo.Go.toInterface(_fPtrAlias), null), _t);
        _reportError(("fSlice" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fSlice), stdgo.Go.toInterface(_fSlice), null), _t);
        _reportError(("fSliceAlias" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fSliceAlias), stdgo.Go.toInterface(_fSliceAlias), null), _t);
        _reportError(("fString" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fString), stdgo.Go.toInterface(_fString), null), _t);
        _reportError(("fStringAlias" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fStringAlias), stdgo.Go.toInterface(_fStringAlias), null), _t);
        _reportError(("fStruct" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fStruct), stdgo.Go.toInterface(_fStruct), null), _t);
        _reportError(("fStructAlias" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fStructAlias), stdgo.Go.toInterface(_fStructAlias), null), _t);
        _reportError(("fUint16" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fUint16), stdgo.Go.toInterface(_fUint16), null), _t);
        _reportError(("fUint16Alias" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fUint16Alias), stdgo.Go.toInterface(_fUint16Alias), null), _t);
        _reportError(("fUint32" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fUint32), stdgo.Go.toInterface(_fUint32), null), _t);
        _reportError(("fUint32Alias" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fUint32Alias), stdgo.Go.toInterface(_fUint32Alias), null), _t);
        _reportError(("fUint64" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fUint64), stdgo.Go.toInterface(_fUint64), null), _t);
        _reportError(("fUint64Alias" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fUint64Alias), stdgo.Go.toInterface(_fUint64Alias), null), _t);
        _reportError(("fUint8" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fUint8), stdgo.Go.toInterface(_fUint8), null), _t);
        _reportError(("fUint8Alias" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fUint8Alias), stdgo.Go.toInterface(_fUint8Alias), null), _t);
        _reportError(("fUint" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fUint), stdgo.Go.toInterface(_fUint), null), _t);
        _reportError(("fUintAlias" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fUintAlias), stdgo.Go.toInterface(_fUintAlias), null), _t);
        _reportError(("fUintptr" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fUintptr), stdgo.Go.toInterface(_fUintptr), null), _t);
        _reportError(("fUintptrAlias" : stdgo.GoString), checkEqual(stdgo.Go.toInterface(_fUintptrAlias), stdgo.Go.toInterface(_fUintptrAlias), null), _t);
    }
function _myStructProperty(_in:T_myStruct):Bool {
        return _in._x == ((42 : stdgo.GoInt));
    }
function testCheckProperty(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _reportError(("myStructProperty" : stdgo.GoString), check(stdgo.Go.toInterface(_myStructProperty), null), _t);
    }
function testFailure(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _f = function(_x:stdgo.GoInt):Bool {
            return false;
        };
        var _err = check(stdgo.Go.toInterface(_f), null);
        if (_err == null) {
            _t.errorf(("Check didn\'t return an error" : stdgo.GoString));
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<CheckError>)) : stdgo.Ref<CheckError>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.testing.quick.Quick.CheckError>), _1 : false };
            }, __8 = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                _t.errorf(("Error was not a CheckError: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        _err = checkEqual(stdgo.Go.toInterface(_fUint), stdgo.Go.toInterface(_fUint32), null);
        if (_err == null) {
            _t.errorf(("#1 CheckEqual didn\'t return an error" : stdgo.GoString));
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : SetupError)) : SetupError), _1 : true };
            } catch(_) {
                { _0 : (("" : stdgo.GoString) : stdgo._internal.testing.quick.Quick.SetupError), _1 : false };
            }, __25 = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                _t.errorf(("#1 Error was not a SetupError: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        _err = checkEqual(stdgo.Go.toInterface(function(_x:stdgo.GoInt, _y:stdgo.GoInt):Void {}), stdgo.Go.toInterface(function(_x:stdgo.GoInt):Void {}), null);
        if (_err == null) {
            _t.errorf(("#2 CheckEqual didn\'t return an error" : stdgo.GoString));
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : SetupError)) : SetupError), _1 : true };
            } catch(_) {
                { _0 : (("" : stdgo.GoString) : stdgo._internal.testing.quick.Quick.SetupError), _1 : false };
            }, __42 = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                _t.errorf(("#2 Error was not a SetupError: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        _err = checkEqual(stdgo.Go.toInterface(function(_x:stdgo.GoInt):stdgo.GoInt {
            return (0 : stdgo.GoInt);
        }), stdgo.Go.toInterface(function(_x:stdgo.GoInt):stdgo.GoInt32 {
            return (0 : stdgo.GoInt32);
        }), null);
        if (_err == null) {
            _t.errorf(("#3 CheckEqual didn\'t return an error" : stdgo.GoString));
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : SetupError)) : SetupError), _1 : true };
            } catch(_) {
                { _0 : (("" : stdgo.GoString) : stdgo._internal.testing.quick.Quick.SetupError), _1 : false };
            }, __59 = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                _t.errorf(("#3 Error was not a SetupError: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
    }
@:structInit class T_testRecursive___localname___R_8108 {
    public var ptr : stdgo.Ref<stdgo._internal.testing.quick.Quick.T_testRecursive___localname___R_8108> = (null : stdgo.Ref<stdgo._internal.testing.quick.Quick.T_testRecursive___localname___R_8108>);
    public var sliceP : stdgo.Slice<stdgo.Ref<stdgo._internal.testing.quick.Quick.T_testRecursive___localname___R_8108>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.testing.quick.Quick.T_testRecursive___localname___R_8108>>);
    public var slice : stdgo.Slice<stdgo._internal.testing.quick.Quick.T_testRecursive___localname___R_8108> = (null : stdgo.Slice<stdgo._internal.testing.quick.Quick.T_testRecursive___localname___R_8108>);
    public var map_ : stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick.T_testRecursive___localname___R_8108> = (null : stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick.T_testRecursive___localname___R_8108>);
    public var mapP : stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.testing.quick.Quick.T_testRecursive___localname___R_8108>> = (null : stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.testing.quick.Quick.T_testRecursive___localname___R_8108>>);
    public var mapR : stdgo.GoMap<stdgo.Ref<stdgo._internal.testing.quick.Quick.T_testRecursive___localname___R_8108>, stdgo.Ref<stdgo._internal.testing.quick.Quick.T_testRecursive___localname___R_8108>> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.testing.quick.Quick.T_testRecursive___localname___R_8108>, stdgo.Ref<stdgo._internal.testing.quick.Quick.T_testRecursive___localname___R_8108>>);
    public var sliceMap : stdgo.Slice<stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick.T_testRecursive___localname___R_8108>> = (null : stdgo.Slice<stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick.T_testRecursive___localname___R_8108>>);
    public function new(?ptr:stdgo.Ref<stdgo._internal.testing.quick.Quick.T_testRecursive___localname___R_8108>, ?sliceP:stdgo.Slice<stdgo.Ref<stdgo._internal.testing.quick.Quick.T_testRecursive___localname___R_8108>>, ?slice:stdgo.Slice<stdgo._internal.testing.quick.Quick.T_testRecursive___localname___R_8108>, ?map_:stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick.T_testRecursive___localname___R_8108>, ?mapP:stdgo.GoMap<stdgo.GoInt, stdgo.Ref<stdgo._internal.testing.quick.Quick.T_testRecursive___localname___R_8108>>, ?mapR:stdgo.GoMap<stdgo.Ref<stdgo._internal.testing.quick.Quick.T_testRecursive___localname___R_8108>, stdgo.Ref<stdgo._internal.testing.quick.Quick.T_testRecursive___localname___R_8108>>, ?sliceMap:stdgo.Slice<stdgo.GoMap<stdgo.GoInt, stdgo._internal.testing.quick.Quick.T_testRecursive___localname___R_8108>>) {
        if (ptr != null) this.ptr = ptr;
        if (sliceP != null) this.sliceP = sliceP;
        if (slice != null) this.slice = slice;
        if (map_ != null) this.map_ = map_;
        if (mapP != null) this.mapP = mapP;
        if (mapR != null) this.mapR = mapR;
        if (sliceMap != null) this.sliceMap = sliceMap;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testRecursive___localname___R_8108(ptr, sliceP, slice, map_, mapP, mapR, sliceMap);
    }
}
function testRecursive(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _f = function(_r:T_testRecursive___localname___R_8108):Bool {
            return true;
        };
        check(stdgo.Go.toInterface(_f), null);
    }
function testEmptyStruct(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _f = function(_0:T__struct_0):Bool {
            return true;
        };
        check(stdgo.Go.toInterface(_f), null);
    }
function testMutuallyRecursive(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _f = function(_a:A):Bool {
            return true;
        };
        check(stdgo.Go.toInterface(_f), null);
    }
@:structInit class T_testNonZeroSliceAndMap___localname___Q_8763 {
    public var m : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
    public var s : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public function new(?m:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, ?s:stdgo.Slice<stdgo.GoInt>) {
        if (m != null) this.m = m;
        if (s != null) this.s = s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testNonZeroSliceAndMap___localname___Q_8763(m, s);
    }
}
function testNonZeroSliceAndMap(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _f = function(_q:T_testNonZeroSliceAndMap___localname___Q_8763):Bool {
            return ((_q.m != null) && (_q.s != null) : Bool);
        };
        var _err = check(stdgo.Go.toInterface(_f), null);
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
    }
function testInt64(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __0:stdgo.GoInt64 = (0 : stdgo.GoInt64), __1:stdgo.GoInt64 = (0 : stdgo.GoInt64);
var _hi = __1, _lo = __0;
        var _f = function(_x:stdgo.GoInt64):Bool {
            if ((_x < _lo : Bool)) {
                _lo = _x;
            };
            if ((_x > _hi : Bool)) {
                _hi = _x;
            };
            return true;
        };
        var _cfg = (stdgo.Go.setRef(({ maxCount : (10000 : stdgo.GoInt) } : stdgo._internal.testing.quick.Quick.Config)) : stdgo.Ref<stdgo._internal.testing.quick.Quick.Config>);
        check(stdgo.Go.toInterface(_f), _cfg);
        if (((((_lo : stdgo.GoUInt64) >> (62i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (0i64 : stdgo.GoUInt64)) || (((_hi : stdgo.GoUInt64) >> (62i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (0i64 : stdgo.GoUInt64)) : Bool)) {
            _t.errorf(("int64 returned range %#016x,%#016x; does not look like full range" : stdgo.GoString), stdgo.Go.toInterface(_lo), stdgo.Go.toInterface(_hi));
        };
    }
class Config_asInterface {
    @:keep
    public dynamic function _getMaxCount():stdgo.GoInt return __self__.value._getMaxCount();
    @:keep
    public dynamic function _getRand():stdgo.Ref<stdgo._internal.math.rand.Rand.Rand> return __self__.value._getRand();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Config>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.testing.quick.Quick.Config_asInterface) class Config_static_extension {
    @:keep
    static public function _getMaxCount( _c:stdgo.Ref<Config>):stdgo.GoInt {
        @:recv var _c:stdgo.Ref<Config> = _c;
        var _maxCount = (0 : stdgo.GoInt);
        _maxCount = _c.maxCount;
        if (_maxCount == ((0 : stdgo.GoInt))) {
            if (_c.maxCountScale != (0 : stdgo.GoFloat64)) {
                _maxCount = ((_c.maxCountScale * (_defaultMaxCount.value : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoInt);
            } else {
                _maxCount = _defaultMaxCount.value;
            };
        };
        return _maxCount;
    }
    @:keep
    static public function _getRand( _c:stdgo.Ref<Config>):stdgo.Ref<stdgo._internal.math.rand.Rand.Rand> {
        @:recv var _c:stdgo.Ref<Config> = _c;
        if (_c.rand == null || (_c.rand : Dynamic).__nil__) {
            return stdgo._internal.math.rand.Rand.new_(stdgo._internal.math.rand.Rand.newSource(stdgo._internal.time.Time.now().unixNano()));
        };
        return _c.rand;
    }
}
class CheckError_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<CheckError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.testing.quick.Quick.CheckError_asInterface) class CheckError_static_extension {
    @:keep
    static public function error( _s:stdgo.Ref<CheckError>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<CheckError> = _s;
        return stdgo._internal.fmt.Fmt.sprintf(("#%d: failed on input %s" : stdgo.GoString), stdgo.Go.toInterface(_s.count), stdgo.Go.toInterface(_toString(_s.in_)))?.__copy__();
    }
}
class CheckEqualError_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<CheckEqualError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.testing.quick.Quick.CheckEqualError_asInterface) class CheckEqualError_static_extension {
    @:keep
    static public function error( _s:stdgo.Ref<CheckEqualError>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<CheckEqualError> = _s;
        return stdgo._internal.fmt.Fmt.sprintf(("#%d: failed on input %s. Output 1: %s. Output 2: %s" : stdgo.GoString), stdgo.Go.toInterface(_s.checkError.count), stdgo.Go.toInterface(_toString(_s.checkError.in_)), stdgo.Go.toInterface(_toString(_s.out1)), stdgo.Go.toInterface(_toString(_s.out2)))?.__copy__();
    }
}
class T_myStruct_asInterface {
    @:keep
    public dynamic function generate(_r:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, __0:stdgo.GoInt):stdgo._internal.reflect.Reflect.Value return __self__.value.generate(_r, __0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_myStruct>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.testing.quick.Quick.T_myStruct_asInterface) class T_myStruct_static_extension {
    @:keep
    static public function generate( _m:T_myStruct, _r:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, __0:stdgo.GoInt):stdgo._internal.reflect.Reflect.Value {
        @:recv var _m:T_myStruct = _m?.__copy__();
        return stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(({ _x : (42 : stdgo.GoInt) } : stdgo._internal.testing.quick.Quick.T_myStruct))))?.__copy__();
    }
}
class SetupError_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<SetupError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.testing.quick.Quick.SetupError_asInterface) class SetupError_static_extension {
    @:keep
    static public function error( _s:SetupError):stdgo.GoString {
        @:recv var _s:SetupError = _s;
        return (_s : stdgo.GoString)?.__copy__();
    }
}
