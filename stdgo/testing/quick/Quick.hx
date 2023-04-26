package stdgo.testing.quick;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
/**
    // Package quick implements utility functions to help with black box testing.
    //
    // The testing/quick package is frozen and is not accepting new features.
**/
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
private var _defaultMaxCount : Pointer<GoInt> = stdgo.flag.Flag.int_(("quickchecks" : GoString), (100 : GoInt), ("The default number of iterations for each check" : GoString));
/**
    // complexSize is the maximum length of arbitrary values that contain other
    // values.
    
    
**/
private final _complexSize = (50i64 : GoUInt64);
/**
    
    
    
**/
private var _defaultConfig : Config = ({} : stdgo.testing.quick.Quick.Config);
/**
    // A Generator can generate random values of its own type.
    
    
**/
typedef Generator = StructType & {
    /**
        // Generate returns a random instance of the type on which it is a
        // method using the size as a size hint.
        
        
    **/
    public dynamic function generate(_rand:Ref<stdgo.math.rand.Rand.Rand>, _size:GoInt):stdgo.reflect.Reflect.Value;
};
/**
    // A Config structure contains options for running a test.
    
    
**/
@:structInit @:using(stdgo.testing.quick.Quick.Config_static_extension) class Config {
    /**
        // MaxCount sets the maximum number of iterations.
        // If zero, MaxCountScale is used.
    **/
    public var maxCount : GoInt = 0;
    /**
        // MaxCountScale is a non-negative scale factor applied to the
        // default maximum.
        // A count of zero implies the default, which is usually 100
        // but can be set by the -quickchecks flag.
    **/
    public var maxCountScale : GoFloat64 = 0;
    /**
        // Rand specifies a source of random numbers.
        // If nil, a default pseudo-random source will be used.
    **/
    public var rand : Ref<stdgo.math.rand.Rand.Rand> = (null : Ref<stdgo.math.rand.Rand.Rand>);
    /**
        // Values specifies a function to generate a slice of
        // arbitrary reflect.Values that are congruent with the
        // arguments to the function being tested.
        // If nil, the top-level Value function is used to generate them.
    **/
    public var values : (Slice<stdgo.reflect.Reflect.Value>, Ref<stdgo.math.rand.Rand.Rand>) -> Void = null;
    public function new(?maxCount:GoInt, ?maxCountScale:GoFloat64, ?rand:Ref<stdgo.math.rand.Rand.Rand>, ?values:(Slice<stdgo.reflect.Reflect.Value>, Ref<stdgo.math.rand.Rand.Rand>) -> Void) {
        if (maxCount != null) this.maxCount = maxCount;
        if (maxCountScale != null) this.maxCountScale = maxCountScale;
        if (rand != null) this.rand = rand;
        if (values != null) this.values = values;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Config(maxCount, maxCountScale, rand, values);
    }
}
/**
    // A CheckError is the result of Check finding an error.
    
    
**/
@:structInit @:using(stdgo.testing.quick.Quick.CheckError_static_extension) class CheckError {
    public var count : GoInt = 0;
    public var in_ : Slice<AnyInterface> = (null : Slice<AnyInterface>);
    public function new(?count:GoInt, ?in_:Slice<AnyInterface>) {
        if (count != null) this.count = count;
        if (in_ != null) this.in_ = in_;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new CheckError(count, in_);
    }
}
/**
    // A CheckEqualError is the result CheckEqual finding an error.
    
    
**/
@:structInit @:using(stdgo.testing.quick.Quick.CheckEqualError_static_extension) class CheckEqualError {
    @:embedded
    public var checkError : stdgo.testing.quick.Quick.CheckError = ({} : stdgo.testing.quick.Quick.CheckError);
    public var out1 : Slice<AnyInterface> = (null : Slice<AnyInterface>);
    public var out2 : Slice<AnyInterface> = (null : Slice<AnyInterface>);
    public function new(?checkError:stdgo.testing.quick.Quick.CheckError, ?out1:Slice<AnyInterface>, ?out2:Slice<AnyInterface>) {
        if (checkError != null) this.checkError = checkError;
        if (out1 != null) this.out1 = out1;
        if (out2 != null) this.out2 = out2;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new CheckEqualError(checkError, out1, out2);
    }
}
/**
    
    
    
**/
@:structInit class TestStruct {
    public var a : GoInt = 0;
    public var b : GoString = "";
    public function new(?a:GoInt, ?b:GoString) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new TestStruct(a, b);
    }
}
/**
    // This tests that ArbitraryValue is working by checking that all the arbitrary
    // values of type MyStruct have x = 42.
    
    
**/
@:structInit @:private @:using(stdgo.testing.quick.Quick.T_myStruct_static_extension) class T_myStruct {
    public var _x : GoInt = 0;
    public function new(?_x:GoInt) {
        if (_x != null) this._x = _x;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_myStruct(_x);
    }
}
/**
    
    
    
**/
@:structInit class A {
    public var b : Ref<stdgo.testing.quick.Quick.B> = (null : Ref<stdgo.testing.quick.Quick.B>);
    public function new(?b:Ref<stdgo.testing.quick.Quick.B>) {
        if (b != null) this.b = b;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new A(b);
    }
}
/**
    
    
    
**/
@:structInit class B {
    public var a : Ref<stdgo.testing.quick.Quick.A> = (null : Ref<stdgo.testing.quick.Quick.A>);
    public function new(?a:Ref<stdgo.testing.quick.Quick.A>) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new B(a);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.testing.quick.Quick.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.testing.quick.Quick.T__struct_0_static_extension) private typedef T__struct_0 = {};
/**
    // A SetupError is the result of an error in the way that check is being
    // used, independent of the functions being tested.
**/
@:named @:using(stdgo.testing.quick.Quick.SetupError_static_extension) typedef SetupError = GoString;
@:named typedef TestArrayAlias = GoArray<GoUInt8>;
@:named typedef TestBoolAlias = Bool;
@:named typedef TestFloat32Alias = GoFloat32;
@:named typedef TestFloat64Alias = GoFloat64;
@:named typedef TestComplex64Alias = GoComplex64;
@:named typedef TestComplex128Alias = GoComplex128;
@:named typedef TestInt16Alias = GoInt16;
@:named typedef TestInt32Alias = GoInt32;
@:named typedef TestInt64Alias = GoInt64;
@:named typedef TestInt8Alias = GoInt8;
@:named typedef TestIntAlias = GoInt;
@:named typedef TestMapAlias = GoMap<GoInt, GoInt>;
@:named typedef TestPtrAlias = Pointer<GoInt>;
@:named typedef TestSliceAlias = Slice<GoUInt8>;
@:named typedef TestStringAlias = GoString;
@:named typedef TestStructAlias = stdgo.testing.quick.Quick.TestStruct;
@:named typedef TestUint16Alias = GoUInt16;
@:named typedef TestUint32Alias = GoUInt32;
@:named typedef TestUint64Alias = GoUInt64;
@:named typedef TestUint8Alias = GoUInt8;
@:named typedef TestUintAlias = GoUInt;
@:named typedef TestUintptrAlias = GoUIntptr;
/**
    // randFloat32 generates a random float taking the full range of a float32.
**/
private function _randFloat32(_rand:Ref<stdgo.math.rand.Rand.Rand>):GoFloat32 {
        var _f:GoFloat64 = _rand.float64() * (3.4028234663852886e+38 : GoFloat64);
        if (_rand.int_() & (1 : GoInt) == ((1 : GoInt))) {
            _f = -_f;
        };
        return (_f : GoFloat32);
    }
/**
    // randFloat64 generates a random float taking the full range of a float64.
**/
private function _randFloat64(_rand:Ref<stdgo.math.rand.Rand.Rand>):GoFloat64 {
        var _f:GoFloat64 = _rand.float64() * (1.7976931348623157e+308 : GoFloat64);
        if (_rand.int_() & (1 : GoInt) == ((1 : GoInt))) {
            _f = -_f;
        };
        return _f;
    }
/**
    // randInt64 returns a random int64.
**/
private function _randInt64(_rand:Ref<stdgo.math.rand.Rand.Rand>):GoInt64 {
        return (_rand.uint64() : GoInt64);
    }
/**
    // Value returns an arbitrary value of the given type.
    // If the type implements the Generator interface, that will be used.
    // Note: To create arbitrary values for structs, all the fields must be exported.
**/
function value(_t:stdgo.reflect.Reflect.Type, _rand:Ref<stdgo.math.rand.Rand.Rand>):{ var _0 : stdgo.reflect.Reflect.Value; var _1 : Bool; } {
        var _value:stdgo.reflect.Reflect.Value = ({} : stdgo.reflect.Reflect.Value), _ok:Bool = false;
        return _sizedValue(_t, _rand, (50 : GoInt));
    }
/**
    // sizedValue returns an arbitrary value of the given type. The size
    // hint is used for shrinking as a function of indirection level so
    // that recursive data structures will terminate.
**/
private function _sizedValue(_t:stdgo.reflect.Reflect.Type, _rand:Ref<stdgo.math.rand.Rand.Rand>, _size:GoInt):{ var _0 : stdgo.reflect.Reflect.Value; var _1 : Bool; } {
        var _value:stdgo.reflect.Reflect.Value = ({} : stdgo.reflect.Reflect.Value), _ok:Bool = false;
        {
            var __tmp__ = try {
                { value : (Go.typeAssert((stdgo.reflect.Reflect.zero(_t).interface_() : Generator)) : Generator), ok : true };
            } catch(_) {
                { value : (null : stdgo.testing.quick.Quick.Generator), ok : false };
            }, _m = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return { _0 : _m.generate(_rand, _size)?.__copy__(), _1 : true };
            };
        };
        var _v:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.new_(_t).elem()?.__copy__();
        {
            var _concrete:stdgo.reflect.Reflect.Type = _t;
            {
                final __value__ = _concrete.kind();
                if (__value__ == ((1u32 : stdgo.reflect.Reflect.Kind))) {
                    _v.setBool(_rand.int_() & (1 : GoInt) == ((0 : GoInt)));
                } else if (__value__ == ((13u32 : stdgo.reflect.Reflect.Kind))) {
                    _v.setFloat((_randFloat32(_rand) : GoFloat64));
                } else if (__value__ == ((14u32 : stdgo.reflect.Reflect.Kind))) {
                    _v.setFloat(_randFloat64(_rand));
                } else if (__value__ == ((15u32 : stdgo.reflect.Reflect.Kind))) {
                    _v.setComplex(new GoComplex128((_randFloat32(_rand) : GoFloat64), (_randFloat32(_rand) : GoFloat64)));
                } else if (__value__ == ((16u32 : stdgo.reflect.Reflect.Kind))) {
                    _v.setComplex(new GoComplex128(_randFloat64(_rand), _randFloat64(_rand)));
                } else if (__value__ == ((4u32 : stdgo.reflect.Reflect.Kind))) {
                    _v.setInt(_randInt64(_rand));
                } else if (__value__ == ((5u32 : stdgo.reflect.Reflect.Kind))) {
                    _v.setInt(_randInt64(_rand));
                } else if (__value__ == ((6u32 : stdgo.reflect.Reflect.Kind))) {
                    _v.setInt(_randInt64(_rand));
                } else if (__value__ == ((3u32 : stdgo.reflect.Reflect.Kind))) {
                    _v.setInt(_randInt64(_rand));
                } else if (__value__ == ((2u32 : stdgo.reflect.Reflect.Kind))) {
                    _v.setInt(_randInt64(_rand));
                } else if (__value__ == ((9u32 : stdgo.reflect.Reflect.Kind))) {
                    _v.setUint((_randInt64(_rand) : GoUInt64));
                } else if (__value__ == ((10u32 : stdgo.reflect.Reflect.Kind))) {
                    _v.setUint((_randInt64(_rand) : GoUInt64));
                } else if (__value__ == ((11u32 : stdgo.reflect.Reflect.Kind))) {
                    _v.setUint((_randInt64(_rand) : GoUInt64));
                } else if (__value__ == ((8u32 : stdgo.reflect.Reflect.Kind))) {
                    _v.setUint((_randInt64(_rand) : GoUInt64));
                } else if (__value__ == ((7u32 : stdgo.reflect.Reflect.Kind))) {
                    _v.setUint((_randInt64(_rand) : GoUInt64));
                } else if (__value__ == ((12u32 : stdgo.reflect.Reflect.Kind))) {
                    _v.setUint((_randInt64(_rand) : GoUInt64));
                } else if (__value__ == ((21u32 : stdgo.reflect.Reflect.Kind))) {
                    var _numElems:GoInt = _rand.intn(_size);
                    _v.set(stdgo.reflect.Reflect.makeMap(_concrete)?.__copy__());
                    {
                        var _i:GoInt = (0 : GoInt);
                        Go.cfor(_i < _numElems, _i++, {
                            var __tmp__ = _sizedValue(_concrete.key(), _rand, _size), _key:stdgo.reflect.Reflect.Value = __tmp__._0, _ok1:Bool = __tmp__._1;
                            var __tmp__ = _sizedValue(_concrete.elem(), _rand, _size), _value:stdgo.reflect.Reflect.Value = __tmp__._0, _ok2:Bool = __tmp__._1;
                            if (!_ok1 || !_ok2) {
                                return { _0 : (new stdgo.reflect.Reflect.Value() : stdgo.reflect.Reflect.Value), _1 : false };
                            };
                            _v.setMapIndex(_key?.__copy__(), _value?.__copy__());
                        });
                    };
                } else if (__value__ == ((22u32 : stdgo.reflect.Reflect.Kind))) {
                    if (_rand.intn(_size) == ((0 : GoInt))) {
                        _v.set(stdgo.reflect.Reflect.zero(_concrete)?.__copy__());
                    } else {
                        var __tmp__ = _sizedValue(_concrete.elem(), _rand, _size), _elem:stdgo.reflect.Reflect.Value = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (!_ok) {
                            return { _0 : (new stdgo.reflect.Reflect.Value() : stdgo.reflect.Reflect.Value), _1 : false };
                        };
                        _v.set(stdgo.reflect.Reflect.new_(_concrete.elem())?.__copy__());
                        _v.elem().set(_elem?.__copy__());
                    };
                } else if (__value__ == ((23u32 : stdgo.reflect.Reflect.Kind))) {
                    var _numElems:GoInt = _rand.intn(_size);
                    var _sizeLeft:GoInt = _size - _numElems;
                    _v.set(stdgo.reflect.Reflect.makeSlice(_concrete, _numElems, _numElems)?.__copy__());
                    {
                        var _i:GoInt = (0 : GoInt);
                        Go.cfor(_i < _numElems, _i++, {
                            var __tmp__ = _sizedValue(_concrete.elem(), _rand, _sizeLeft), _elem:stdgo.reflect.Reflect.Value = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (!_ok) {
                                return { _0 : (new stdgo.reflect.Reflect.Value() : stdgo.reflect.Reflect.Value), _1 : false };
                            };
                            _v.index(_i).set(_elem?.__copy__());
                        });
                    };
                } else if (__value__ == ((17u32 : stdgo.reflect.Reflect.Kind))) {
                    {
                        var _i:GoInt = (0 : GoInt);
                        Go.cfor(_i < _v.len(), _i++, {
                            var __tmp__ = _sizedValue(_concrete.elem(), _rand, _size), _elem:stdgo.reflect.Reflect.Value = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (!_ok) {
                                return { _0 : (new stdgo.reflect.Reflect.Value() : stdgo.reflect.Reflect.Value), _1 : false };
                            };
                            _v.index(_i).set(_elem?.__copy__());
                        });
                    };
                } else if (__value__ == ((24u32 : stdgo.reflect.Reflect.Kind))) {
                    var _numChars:GoInt = _rand.intn((50 : GoInt));
                    var _codePoints = new Slice<GoInt32>((_numChars : GoInt).toBasic(), 0).__setNumber32__();
                    {
                        var _i:GoInt = (0 : GoInt);
                        Go.cfor(_i < _numChars, _i++, {
                            _codePoints[(_i : GoInt)] = (_rand.intn((1114111 : GoInt)) : GoRune);
                        });
                    };
                    _v.setString((_codePoints : GoString));
                } else if (__value__ == ((25u32 : stdgo.reflect.Reflect.Kind))) {
                    var _n:GoInt = _v.numField();
                    var _sizeLeft:GoInt = _size;
                    if (_n > _sizeLeft) {
                        _sizeLeft = (1 : GoInt);
                    } else if (_n > (0 : GoInt)) {
                        _sizeLeft = _sizeLeft / (_n);
                    };
                    {
                        var _i:GoInt = (0 : GoInt);
                        Go.cfor(_i < _n, _i++, {
                            var __tmp__ = _sizedValue(_concrete.field(_i).type, _rand, _sizeLeft), _elem:stdgo.reflect.Reflect.Value = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (!_ok) {
                                return { _0 : (new stdgo.reflect.Reflect.Value() : stdgo.reflect.Reflect.Value), _1 : false };
                            };
                            _v.field(_i).set(_elem?.__copy__());
                        });
                    };
                } else {
                    return { _0 : (new stdgo.reflect.Reflect.Value() : stdgo.reflect.Reflect.Value), _1 : false };
                };
            };
        };
        return { _0 : _v?.__copy__(), _1 : true };
    }
/**
    // Check looks for an input to f, any function that returns bool,
    // such that f returns false. It calls f repeatedly, with arbitrary
    // values for each argument. If f returns false on a given input,
    // Check returns that input as a *CheckError.
    // For example:
    //
    //	func TestOddMultipleOfThree(t *testing.T) {
    //		f := func(x int) bool {
    //			y := OddMultipleOfThree(x)
    //			return y%2 == 1 && y%3 == 0
    //		}
    //		if err := quick.Check(f, nil); err != nil {
    //			t.Error(err)
    //		}
    //	}
**/
function check(_f:AnyInterface, _config:Ref<Config>):Error {
        if (_config == null || (_config : Dynamic).__nil__) {
            _config = (Go.setRef(_defaultConfig) : Ref<stdgo.testing.quick.Quick.Config>);
        };
        var __tmp__ = _functionAndType(_f), _fVal:stdgo.reflect.Reflect.Value = __tmp__._0, _fType:stdgo.reflect.Reflect.Type = __tmp__._1, _ok:Bool = __tmp__._2;
        if (!_ok) {
            return Go.asInterface(((("argument is not a function" : GoString) : stdgo.testing.quick.Quick.SetupError) : SetupError));
        };
        if (_fType.numOut() != ((1 : GoInt))) {
            return Go.asInterface(((("function does not return one value" : GoString) : stdgo.testing.quick.Quick.SetupError) : SetupError));
        };
        if (_fType.out((0 : GoInt)).kind() != ((1u32 : stdgo.reflect.Reflect.Kind))) {
            return Go.asInterface(((("function does not return a bool" : GoString) : stdgo.testing.quick.Quick.SetupError) : SetupError));
        };
        var _arguments = new Slice<stdgo.reflect.Reflect.Value>((_fType.numIn() : GoInt).toBasic(), 0, ...[for (i in 0 ... ((_fType.numIn() : GoInt).toBasic() > 0 ? (_fType.numIn() : GoInt).toBasic() : 0 : GoInt).toBasic()) ({} : stdgo.reflect.Reflect.Value)]);
        var _rand = _config._getRand();
        var _maxCount:GoInt = _config._getMaxCount();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _maxCount, _i++, {
                var _err:Error = _arbitraryValues(_arguments, _fType, _config, _rand);
                if (_err != null) {
                    return _err;
                };
                if (!_fVal.call(_arguments)[(0 : GoInt)].bool_()) {
                    return Go.asInterface((Go.setRef((new CheckError(_i + (1 : GoInt), _toInterfaces(_arguments)) : CheckError)) : Ref<stdgo.testing.quick.Quick.CheckError>));
                };
            });
        };
        return (null : Error);
    }
/**
    // CheckEqual looks for an input on which f and g return different results.
    // It calls f and g repeatedly with arbitrary values for each argument.
    // If f and g return different answers, CheckEqual returns a *CheckEqualError
    // describing the input and the outputs.
**/
function checkEqual(_f:AnyInterface, _g:AnyInterface, _config:Ref<Config>):Error {
        if (_config == null || (_config : Dynamic).__nil__) {
            _config = (Go.setRef(_defaultConfig) : Ref<stdgo.testing.quick.Quick.Config>);
        };
        var __tmp__ = _functionAndType(_f), _x:stdgo.reflect.Reflect.Value = __tmp__._0, _xType:stdgo.reflect.Reflect.Type = __tmp__._1, _ok:Bool = __tmp__._2;
        if (!_ok) {
            return Go.asInterface(((("f is not a function" : GoString) : stdgo.testing.quick.Quick.SetupError) : SetupError));
        };
        var __tmp__ = _functionAndType(_g), _y:stdgo.reflect.Reflect.Value = __tmp__._0, _yType:stdgo.reflect.Reflect.Type = __tmp__._1, _ok:Bool = __tmp__._2;
        if (!_ok) {
            return Go.asInterface(((("g is not a function" : GoString) : stdgo.testing.quick.Quick.SetupError) : SetupError));
        };
        if (!((_xType.string() : String) == (_yType.string() : String))) {
            return Go.asInterface(((("functions have different types" : GoString) : stdgo.testing.quick.Quick.SetupError) : SetupError));
        };
        var _arguments = new Slice<stdgo.reflect.Reflect.Value>((_xType.numIn() : GoInt).toBasic(), 0, ...[for (i in 0 ... ((_xType.numIn() : GoInt).toBasic() > 0 ? (_xType.numIn() : GoInt).toBasic() : 0 : GoInt).toBasic()) ({} : stdgo.reflect.Reflect.Value)]);
        var _rand = _config._getRand();
        var _maxCount:GoInt = _config._getMaxCount();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _maxCount, _i++, {
                var _err:Error = _arbitraryValues(_arguments, _xType, _config, _rand);
                if (_err != null) {
                    return _err;
                };
                var _xOut = _toInterfaces(_x.call(_arguments));
                var _yOut = _toInterfaces(_y.call(_arguments));
                if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_xOut), Go.toInterface(_yOut))) {
                    return Go.asInterface((Go.setRef((new CheckEqualError((new CheckError(_i + (1 : GoInt), _toInterfaces(_arguments)) : CheckError), _xOut, _yOut) : CheckEqualError)) : Ref<stdgo.testing.quick.Quick.CheckEqualError>));
                };
            });
        };
        return (null : Error);
    }
/**
    // arbitraryValues writes Values to args such that args contains Values
    // suitable for calling f.
**/
private function _arbitraryValues(_args:Slice<stdgo.reflect.Reflect.Value>, _f:stdgo.reflect.Reflect.Type, _config:Ref<Config>, _rand:Ref<stdgo.math.rand.Rand.Rand>):Error {
        var _err:Error = (null : Error);
        if (_config.values != null) {
            _config.values(_args, _rand);
            return _err;
        };
        {
            var _j:GoInt = (0 : GoInt);
            Go.cfor(_j < (_args.length), _j++, {
                var _ok:Bool = false;
                {
                    var __tmp__ = value(_f.in_(_j), _rand);
                    _args[(_j : GoInt)] = __tmp__._0?.__copy__();
                    _ok = __tmp__._1;
                };
                if (!_ok) {
                    _err = Go.asInterface((stdgo.fmt.Fmt.sprintf(("cannot create arbitrary value of type %s for argument %d" : GoString), Go.toInterface(_f.in_(_j)), Go.toInterface(_j)) : SetupError));
                    return _err;
                };
            });
        };
        return _err;
    }
private function _functionAndType(_f:AnyInterface):{ var _0 : stdgo.reflect.Reflect.Value; var _1 : stdgo.reflect.Reflect.Type; var _2 : Bool; } {
        var _v:stdgo.reflect.Reflect.Value = ({} : stdgo.reflect.Reflect.Value), _t:stdgo.reflect.Reflect.Type = (null : stdgo.reflect.Reflect.Type), _ok:Bool = false;
        _v = stdgo.reflect.Reflect.valueOf(_f)?.__copy__();
        _ok = _v.kind() == ((19u32 : stdgo.reflect.Reflect.Kind));
        if (!_ok) {
            return { _0 : _v, _1 : _t, _2 : _ok };
        };
        _t = _v.type();
        return { _0 : _v, _1 : _t, _2 : _ok };
    }
private function _toInterfaces(_values:Slice<stdgo.reflect.Reflect.Value>):Slice<AnyInterface> {
        var _ret = new Slice<AnyInterface>((_values.length : GoInt).toBasic(), 0);
        for (_i => _v in _values) {
            _ret[(_i : GoInt)] = _v.interface_();
        };
        return _ret;
    }
private function _toString(_interfaces:Slice<AnyInterface>):GoString {
        var _s = new Slice<GoString>((_interfaces.length : GoInt).toBasic(), 0).__setString__();
        for (_i => _v in _interfaces) {
            _s[(_i : GoInt)] = stdgo.fmt.Fmt.sprintf(("%#v" : GoString), _v);
        };
        return stdgo.strings.Strings.join(_s, (", " : GoString));
    }
private function _fArray(_a:GoArray<GoByte>):GoArray<GoByte> {
        return _a?.__copy__();
    }
private function _fArrayAlias(_a:TestArrayAlias):TestArrayAlias {
        return _a?.__copy__();
    }
private function _fBool(_a:Bool):Bool {
        return _a;
    }
private function _fBoolAlias(_a:TestBoolAlias):TestBoolAlias {
        return _a;
    }
private function _fFloat32(_a:GoFloat32):GoFloat32 {
        return _a;
    }
private function _fFloat32Alias(_a:TestFloat32Alias):TestFloat32Alias {
        return _a;
    }
private function _fFloat64(_a:GoFloat64):GoFloat64 {
        return _a;
    }
private function _fFloat64Alias(_a:TestFloat64Alias):TestFloat64Alias {
        return _a;
    }
private function _fComplex64(_a:GoComplex64):GoComplex64 {
        return _a;
    }
private function _fComplex64Alias(_a:TestComplex64Alias):TestComplex64Alias {
        return _a;
    }
private function _fComplex128(_a:GoComplex128):GoComplex128 {
        return _a;
    }
private function _fComplex128Alias(_a:TestComplex128Alias):TestComplex128Alias {
        return _a;
    }
private function _fInt16(_a:GoInt16):GoInt16 {
        return _a;
    }
private function _fInt16Alias(_a:TestInt16Alias):TestInt16Alias {
        return _a;
    }
private function _fInt32(_a:GoInt32):GoInt32 {
        return _a;
    }
private function _fInt32Alias(_a:TestInt32Alias):TestInt32Alias {
        return _a;
    }
private function _fInt64(_a:GoInt64):GoInt64 {
        return _a;
    }
private function _fInt64Alias(_a:TestInt64Alias):TestInt64Alias {
        return _a;
    }
private function _fInt8(_a:GoInt8):GoInt8 {
        return _a;
    }
private function _fInt8Alias(_a:TestInt8Alias):TestInt8Alias {
        return _a;
    }
private function _fInt(_a:GoInt):GoInt {
        return _a;
    }
private function _fIntAlias(_a:TestIntAlias):TestIntAlias {
        return _a;
    }
private function _fMap(_a:GoMap<GoInt, GoInt>):GoMap<GoInt, GoInt> {
        return _a;
    }
private function _fMapAlias(_a:TestMapAlias):TestMapAlias {
        return _a;
    }
private function _fPtr(_a:Pointer<GoInt>):Pointer<GoInt> {
        if (_a == null) {
            return (null : Pointer<GoInt>);
        };
        var _b:GoInt = _a.value;
        return Go.pointer(_b);
    }
private function _fPtrAlias(_a:TestPtrAlias):TestPtrAlias {
        return _a;
    }
private function _fSlice(_a:Slice<GoByte>):Slice<GoByte> {
        return _a;
    }
private function _fSliceAlias(_a:TestSliceAlias):TestSliceAlias {
        return _a;
    }
private function _fString(_a:GoString):GoString {
        return _a;
    }
private function _fStringAlias(_a:TestStringAlias):TestStringAlias {
        return _a;
    }
private function _fStruct(_a:TestStruct):TestStruct {
        return _a?.__copy__();
    }
private function _fStructAlias(_a:TestStructAlias):TestStructAlias {
        return _a?.__copy__();
    }
private function _fUint16(_a:GoUInt16):GoUInt16 {
        return _a;
    }
private function _fUint16Alias(_a:TestUint16Alias):TestUint16Alias {
        return _a;
    }
private function _fUint32(_a:GoUInt32):GoUInt32 {
        return _a;
    }
private function _fUint32Alias(_a:TestUint32Alias):TestUint32Alias {
        return _a;
    }
private function _fUint64(_a:GoUInt64):GoUInt64 {
        return _a;
    }
private function _fUint64Alias(_a:TestUint64Alias):TestUint64Alias {
        return _a;
    }
private function _fUint8(_a:GoUInt8):GoUInt8 {
        return _a;
    }
private function _fUint8Alias(_a:TestUint8Alias):TestUint8Alias {
        return _a;
    }
private function _fUint(_a:GoUInt):GoUInt {
        return _a;
    }
private function _fUintAlias(_a:TestUintAlias):TestUintAlias {
        return _a;
    }
private function _fUintptr(_a:GoUIntptr):GoUIntptr {
        return _a;
    }
private function _fUintptrAlias(_a:TestUintptrAlias):TestUintptrAlias {
        return _a;
    }
private function _reportError(_property:GoString, _err:Error, _t:Ref<stdgo.testing.Testing.T>):Void {
        if (_err != null) {
            _t.errorf(("%s: %s" : GoString), Go.toInterface(_property), Go.toInterface(_err));
        };
    }
function testCheckEqual(_t:Ref<stdgo.testing.Testing.T>):Void {
        _reportError(("fArray" : GoString), checkEqual(Go.toInterface(_fArray), Go.toInterface(_fArray), null), _t);
        _reportError(("fArrayAlias" : GoString), checkEqual(Go.toInterface(_fArrayAlias), Go.toInterface(_fArrayAlias), null), _t);
        _reportError(("fBool" : GoString), checkEqual(Go.toInterface(_fBool), Go.toInterface(_fBool), null), _t);
        _reportError(("fBoolAlias" : GoString), checkEqual(Go.toInterface(_fBoolAlias), Go.toInterface(_fBoolAlias), null), _t);
        _reportError(("fFloat32" : GoString), checkEqual(Go.toInterface(_fFloat32), Go.toInterface(_fFloat32), null), _t);
        _reportError(("fFloat32Alias" : GoString), checkEqual(Go.toInterface(_fFloat32Alias), Go.toInterface(_fFloat32Alias), null), _t);
        _reportError(("fFloat64" : GoString), checkEqual(Go.toInterface(_fFloat64), Go.toInterface(_fFloat64), null), _t);
        _reportError(("fFloat64Alias" : GoString), checkEqual(Go.toInterface(_fFloat64Alias), Go.toInterface(_fFloat64Alias), null), _t);
        _reportError(("fComplex64" : GoString), checkEqual(Go.toInterface(_fComplex64), Go.toInterface(_fComplex64), null), _t);
        _reportError(("fComplex64Alias" : GoString), checkEqual(Go.toInterface(_fComplex64Alias), Go.toInterface(_fComplex64Alias), null), _t);
        _reportError(("fComplex128" : GoString), checkEqual(Go.toInterface(_fComplex128), Go.toInterface(_fComplex128), null), _t);
        _reportError(("fComplex128Alias" : GoString), checkEqual(Go.toInterface(_fComplex128Alias), Go.toInterface(_fComplex128Alias), null), _t);
        _reportError(("fInt16" : GoString), checkEqual(Go.toInterface(_fInt16), Go.toInterface(_fInt16), null), _t);
        _reportError(("fInt16Alias" : GoString), checkEqual(Go.toInterface(_fInt16Alias), Go.toInterface(_fInt16Alias), null), _t);
        _reportError(("fInt32" : GoString), checkEqual(Go.toInterface(_fInt32), Go.toInterface(_fInt32), null), _t);
        _reportError(("fInt32Alias" : GoString), checkEqual(Go.toInterface(_fInt32Alias), Go.toInterface(_fInt32Alias), null), _t);
        _reportError(("fInt64" : GoString), checkEqual(Go.toInterface(_fInt64), Go.toInterface(_fInt64), null), _t);
        _reportError(("fInt64Alias" : GoString), checkEqual(Go.toInterface(_fInt64Alias), Go.toInterface(_fInt64Alias), null), _t);
        _reportError(("fInt8" : GoString), checkEqual(Go.toInterface(_fInt8), Go.toInterface(_fInt8), null), _t);
        _reportError(("fInt8Alias" : GoString), checkEqual(Go.toInterface(_fInt8Alias), Go.toInterface(_fInt8Alias), null), _t);
        _reportError(("fInt" : GoString), checkEqual(Go.toInterface(_fInt), Go.toInterface(_fInt), null), _t);
        _reportError(("fIntAlias" : GoString), checkEqual(Go.toInterface(_fIntAlias), Go.toInterface(_fIntAlias), null), _t);
        _reportError(("fInt32" : GoString), checkEqual(Go.toInterface(_fInt32), Go.toInterface(_fInt32), null), _t);
        _reportError(("fInt32Alias" : GoString), checkEqual(Go.toInterface(_fInt32Alias), Go.toInterface(_fInt32Alias), null), _t);
        _reportError(("fMap" : GoString), checkEqual(Go.toInterface(_fMap), Go.toInterface(_fMap), null), _t);
        _reportError(("fMapAlias" : GoString), checkEqual(Go.toInterface(_fMapAlias), Go.toInterface(_fMapAlias), null), _t);
        _reportError(("fPtr" : GoString), checkEqual(Go.toInterface(_fPtr), Go.toInterface(_fPtr), null), _t);
        _reportError(("fPtrAlias" : GoString), checkEqual(Go.toInterface(_fPtrAlias), Go.toInterface(_fPtrAlias), null), _t);
        _reportError(("fSlice" : GoString), checkEqual(Go.toInterface(_fSlice), Go.toInterface(_fSlice), null), _t);
        _reportError(("fSliceAlias" : GoString), checkEqual(Go.toInterface(_fSliceAlias), Go.toInterface(_fSliceAlias), null), _t);
        _reportError(("fString" : GoString), checkEqual(Go.toInterface(_fString), Go.toInterface(_fString), null), _t);
        _reportError(("fStringAlias" : GoString), checkEqual(Go.toInterface(_fStringAlias), Go.toInterface(_fStringAlias), null), _t);
        _reportError(("fStruct" : GoString), checkEqual(Go.toInterface(_fStruct), Go.toInterface(_fStruct), null), _t);
        _reportError(("fStructAlias" : GoString), checkEqual(Go.toInterface(_fStructAlias), Go.toInterface(_fStructAlias), null), _t);
        _reportError(("fUint16" : GoString), checkEqual(Go.toInterface(_fUint16), Go.toInterface(_fUint16), null), _t);
        _reportError(("fUint16Alias" : GoString), checkEqual(Go.toInterface(_fUint16Alias), Go.toInterface(_fUint16Alias), null), _t);
        _reportError(("fUint32" : GoString), checkEqual(Go.toInterface(_fUint32), Go.toInterface(_fUint32), null), _t);
        _reportError(("fUint32Alias" : GoString), checkEqual(Go.toInterface(_fUint32Alias), Go.toInterface(_fUint32Alias), null), _t);
        _reportError(("fUint64" : GoString), checkEqual(Go.toInterface(_fUint64), Go.toInterface(_fUint64), null), _t);
        _reportError(("fUint64Alias" : GoString), checkEqual(Go.toInterface(_fUint64Alias), Go.toInterface(_fUint64Alias), null), _t);
        _reportError(("fUint8" : GoString), checkEqual(Go.toInterface(_fUint8), Go.toInterface(_fUint8), null), _t);
        _reportError(("fUint8Alias" : GoString), checkEqual(Go.toInterface(_fUint8Alias), Go.toInterface(_fUint8Alias), null), _t);
        _reportError(("fUint" : GoString), checkEqual(Go.toInterface(_fUint), Go.toInterface(_fUint), null), _t);
        _reportError(("fUintAlias" : GoString), checkEqual(Go.toInterface(_fUintAlias), Go.toInterface(_fUintAlias), null), _t);
        _reportError(("fUintptr" : GoString), checkEqual(Go.toInterface(_fUintptr), Go.toInterface(_fUintptr), null), _t);
        _reportError(("fUintptrAlias" : GoString), checkEqual(Go.toInterface(_fUintptrAlias), Go.toInterface(_fUintptrAlias), null), _t);
    }
private function _myStructProperty(_in:T_myStruct):Bool {
        return _in._x == ((42 : GoInt));
    }
function testCheckProperty(_t:Ref<stdgo.testing.Testing.T>):Void {
        _reportError(("myStructProperty" : GoString), check(Go.toInterface(_myStructProperty), null), _t);
    }
function testFailure(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _f:GoInt -> Bool = function(_x:GoInt):Bool {
            return false;
        };
        var _err:Error = check(Go.toInterface(_f), null);
        if (_err == null) {
            _t.errorf(("Check didn\'t return an error" : GoString));
        };
        {
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_err) : Ref<CheckError>)) : Ref<CheckError>), ok : true };
            } catch(_) {
                { value : (null : Ref<stdgo.testing.quick.Quick.CheckError>), ok : false };
            }, __0 = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok) {
                _t.errorf(("Error was not a CheckError: %s" : GoString), Go.toInterface(_err));
            };
        };
        _err = checkEqual(Go.toInterface(_fUint), Go.toInterface(_fUint32), null);
        if (_err == null) {
            _t.errorf(("#1 CheckEqual didn\'t return an error" : GoString));
        };
        {
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_err) : SetupError)) : SetupError), ok : true };
            } catch(_) {
                { value : (("" : GoString) : stdgo.testing.quick.Quick.SetupError), ok : false };
            }, __1 = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok) {
                _t.errorf(("#1 Error was not a SetupError: %s" : GoString), Go.toInterface(_err));
            };
        };
        _err = checkEqual(Go.toInterface(function(_x:GoInt, _y:GoInt):Void {}), Go.toInterface(function(_x:GoInt):Void {}), null);
        if (_err == null) {
            _t.errorf(("#2 CheckEqual didn\'t return an error" : GoString));
        };
        {
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_err) : SetupError)) : SetupError), ok : true };
            } catch(_) {
                { value : (("" : GoString) : stdgo.testing.quick.Quick.SetupError), ok : false };
            }, __2 = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok) {
                _t.errorf(("#2 Error was not a SetupError: %s" : GoString), Go.toInterface(_err));
            };
        };
        _err = checkEqual(Go.toInterface(function(_x:GoInt):GoInt {
            return (0 : GoInt);
        }), Go.toInterface(function(_x:GoInt):GoInt32 {
            return (0 : GoInt32);
        }), null);
        if (_err == null) {
            _t.errorf(("#3 CheckEqual didn\'t return an error" : GoString));
        };
        {
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_err) : SetupError)) : SetupError), ok : true };
            } catch(_) {
                { value : (("" : GoString) : stdgo.testing.quick.Quick.SetupError), ok : false };
            }, __3 = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok) {
                _t.errorf(("#3 Error was not a SetupError: %s" : GoString), Go.toInterface(_err));
            };
        };
    }
/**
    
    
    
**/
@:structInit class T_testRecursive_0___localname___R {
    public var ptr : Ref<stdgo.testing.quick.Quick.T_testRecursive_0___localname___R> = (null : Ref<stdgo.testing.quick.Quick.T_testRecursive_0___localname___R>);
    public var sliceP : Slice<Ref<stdgo.testing.quick.Quick.T_testRecursive_0___localname___R>> = (null : Slice<Ref<stdgo.testing.quick.Quick.T_testRecursive_0___localname___R>>);
    public var slice : Slice<stdgo.testing.quick.Quick.T_testRecursive_0___localname___R> = (null : Slice<stdgo.testing.quick.Quick.T_testRecursive_0___localname___R>);
    public var map : GoMap<GoInt, stdgo.testing.quick.Quick.T_testRecursive_0___localname___R> = (null : GoMap<GoInt, stdgo.testing.quick.Quick.T_testRecursive_0___localname___R>);
    public var mapP : GoMap<GoInt, Ref<stdgo.testing.quick.Quick.T_testRecursive_0___localname___R>> = (null : GoMap<GoInt, Ref<stdgo.testing.quick.Quick.T_testRecursive_0___localname___R>>);
    public var mapR : GoMap<Ref<stdgo.testing.quick.Quick.T_testRecursive_0___localname___R>, Ref<stdgo.testing.quick.Quick.T_testRecursive_0___localname___R>> = (null : GoMap<Ref<stdgo.testing.quick.Quick.T_testRecursive_0___localname___R>, Ref<stdgo.testing.quick.Quick.T_testRecursive_0___localname___R>>);
    public var sliceMap : Slice<GoMap<GoInt, stdgo.testing.quick.Quick.T_testRecursive_0___localname___R>> = (null : Slice<GoMap<GoInt, stdgo.testing.quick.Quick.T_testRecursive_0___localname___R>>);
    public function new(?ptr:Ref<stdgo.testing.quick.Quick.T_testRecursive_0___localname___R>, ?sliceP:Slice<Ref<stdgo.testing.quick.Quick.T_testRecursive_0___localname___R>>, ?slice:Slice<stdgo.testing.quick.Quick.T_testRecursive_0___localname___R>, ?map:GoMap<GoInt, stdgo.testing.quick.Quick.T_testRecursive_0___localname___R>, ?mapP:GoMap<GoInt, Ref<stdgo.testing.quick.Quick.T_testRecursive_0___localname___R>>, ?mapR:GoMap<Ref<stdgo.testing.quick.Quick.T_testRecursive_0___localname___R>, Ref<stdgo.testing.quick.Quick.T_testRecursive_0___localname___R>>, ?sliceMap:Slice<GoMap<GoInt, stdgo.testing.quick.Quick.T_testRecursive_0___localname___R>>) {
        if (ptr != null) this.ptr = ptr;
        if (sliceP != null) this.sliceP = sliceP;
        if (slice != null) this.slice = slice;
        if (map != null) this.map = map;
        if (mapP != null) this.mapP = mapP;
        if (mapR != null) this.mapR = mapR;
        if (sliceMap != null) this.sliceMap = sliceMap;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_testRecursive_0___localname___R(ptr, sliceP, slice, map, mapP, mapR, sliceMap);
    }
}
/**
    // Recursive data structures didn't terminate.
    // Issues 8818 and 11148.
**/
function testRecursive(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _f:stdgo.testing.quick.Quick.T_testRecursive_0___localname___R -> Bool = function(_r:T_testRecursive_0___localname___R):Bool {
            return true;
        };
        check(Go.toInterface(_f), null);
    }
function testEmptyStruct(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _f:T__struct_0 -> Bool = function(_0:T__struct_0):Bool {
            return true;
        };
        check(Go.toInterface(_f), null);
    }
function testMutuallyRecursive(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _f:stdgo.testing.quick.Quick.A -> Bool = function(_a:A):Bool {
            return true;
        };
        check(Go.toInterface(_f), null);
    }
/**
    
    
    
**/
@:structInit class T_testNonZeroSliceAndMap_0___localname___Q {
    public var m : GoMap<GoInt, GoInt> = (null : GoMap<GoInt, GoInt>);
    public var s : Slice<GoInt> = (null : Slice<GoInt>);
    public function new(?m:GoMap<GoInt, GoInt>, ?s:Slice<GoInt>) {
        if (m != null) this.m = m;
        if (s != null) this.s = s;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_testNonZeroSliceAndMap_0___localname___Q(m, s);
    }
}
/**
    // Some serialization formats (e.g. encoding/pem) cannot distinguish
    // between a nil and an empty map or slice, so avoid generating the
    // zero value for these.
**/
function testNonZeroSliceAndMap(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _f:stdgo.testing.quick.Quick.T_testNonZeroSliceAndMap_0___localname___Q -> Bool = function(_q:T_testNonZeroSliceAndMap_0___localname___Q):Bool {
            return (_q.m != null) && (_q.s != null);
        };
        var _err:Error = check(Go.toInterface(_f), null);
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
    }
function testInt64(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __0:GoInt64 = (0 : GoInt64), __1:GoInt64 = (0 : GoInt64), _hi:GoInt64 = __1, _lo:GoInt64 = __0;
        var _f:GoInt64 -> Bool = function(_x:GoInt64):Bool {
            if (_x < _lo) {
                _lo = _x;
            };
            if (_x > _hi) {
                _hi = _x;
            };
            return true;
        };
        var _cfg = (Go.setRef(({ maxCount : (10000 : GoInt) } : Config)) : Ref<stdgo.testing.quick.Quick.Config>);
        check(Go.toInterface(_f), _cfg);
        if ((((_lo : GoUInt64) >> (62i64 : GoUInt64)) == (0i64 : GoUInt64)) || (((_hi : GoUInt64) >> (62i64 : GoUInt64)) == (0i64 : GoUInt64))) {
            _t.errorf(("int64 returned range %#016x,%#016x; does not look like full range" : GoString), Go.toInterface(_lo), Go.toInterface(_hi));
        };
    }
class Config_asInterface {
    /**
        // getMaxCount returns the maximum number of iterations to run for a given
        // Config.
    **/
    @:keep
    public dynamic function _getMaxCount():GoInt return __self__.value._getMaxCount();
    /**
        // getRand returns the *rand.Rand to use for a given Config.
    **/
    @:keep
    public dynamic function _getRand():Ref<stdgo.math.rand.Rand.Rand> return __self__.value._getRand();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Config>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.testing.quick.Quick.Config_asInterface) class Config_static_extension {
    /**
        // getMaxCount returns the maximum number of iterations to run for a given
        // Config.
    **/
    @:keep
    static public function _getMaxCount( _c:Ref<Config>):GoInt {
        var _maxCount:GoInt = (0 : GoInt);
        _maxCount = _c.maxCount;
        if (_maxCount == ((0 : GoInt))) {
            if (_c.maxCountScale != (0 : GoFloat64)) {
                _maxCount = (_c.maxCountScale * (_defaultMaxCount.value : GoFloat64) : GoInt);
            } else {
                _maxCount = _defaultMaxCount.value;
            };
        };
        return _maxCount;
    }
    /**
        // getRand returns the *rand.Rand to use for a given Config.
    **/
    @:keep
    static public function _getRand( _c:Ref<Config>):Ref<stdgo.math.rand.Rand.Rand> {
        if (_c.rand == null || (_c.rand : Dynamic).__nil__) {
            return stdgo.math.rand.Rand.new_(stdgo.math.rand.Rand.newSource(stdgo.time.Time.now().unixNano()));
        };
        return _c.rand;
    }
}
class CheckError_asInterface {
    @:keep
    public dynamic function error():GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<CheckError>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.testing.quick.Quick.CheckError_asInterface) class CheckError_static_extension {
    @:keep
    static public function error( _s:Ref<CheckError>):GoString {
        return stdgo.fmt.Fmt.sprintf(("#%d: failed on input %s" : GoString), Go.toInterface(_s.count), Go.toInterface(_toString(_s.in_)));
    }
}
class CheckEqualError_asInterface {
    @:keep
    public dynamic function error():GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<CheckEqualError>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.testing.quick.Quick.CheckEqualError_asInterface) class CheckEqualError_static_extension {
    @:keep
    static public function error( _s:Ref<CheckEqualError>):GoString {
        return stdgo.fmt.Fmt.sprintf(("#%d: failed on input %s. Output 1: %s. Output 2: %s" : GoString), Go.toInterface(_s.checkError.count), Go.toInterface(_toString(_s.checkError.in_)), Go.toInterface(_toString(_s.out1)), Go.toInterface(_toString(_s.out2)));
    }
}
class T_myStruct_asInterface {
    @:keep
    public dynamic function generate(_r:Ref<stdgo.math.rand.Rand.Rand>, __0:GoInt):stdgo.reflect.Reflect.Value return __self__.value.generate(_r, __0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_myStruct>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.testing.quick.Quick.T_myStruct_asInterface) class T_myStruct_static_extension {
    @:keep
    static public function generate( _m:T_myStruct, _r:Ref<stdgo.math.rand.Rand.Rand>, __0:GoInt):stdgo.reflect.Reflect.Value {
        return stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.asInterface(({ _x : (42 : GoInt) } : T_myStruct))))?.__copy__();
    }
}
class SetupError_asInterface {
    @:keep
    public dynamic function error():GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<SetupError>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.testing.quick.Quick.SetupError_asInterface) class SetupError_static_extension {
    @:keep
    static public function error( _s:SetupError):GoString {
        return (_s : GoString);
    }
}
