package stdgo.crypto.rand_test;
import stdgo.crypto.rand.Rand;
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.crypto.rand_test.Rand_test.T_countingReader_static_extension) class T_countingReader {
    public var _r : stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);
    public var _n : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_r:stdgo.io.Io.Reader, ?_n:stdgo.StdGoTypes.GoInt) {
        if (_r != null) this._r = _r;
        if (_n != null) this._n = _n;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_countingReader(_r, _n);
    }
}
/**
    // This example reads 10 cryptographically secure pseudorandom numbers from
    // rand.Reader and writes them to a byte slice.
**/
function exampleRead():Void {
        var _c:stdgo.StdGoTypes.GoInt = (10 : stdgo.StdGoTypes.GoInt);
        var _b = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_c : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var __tmp__ = stdgo.crypto.rand.Rand.read(_b), __0:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            return;
        };
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.bytes.Bytes.equal(_b, new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_c : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__())));
    }
/**
    // https://golang.org/issue/6849.
**/
function testPrimeSmall(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {
            var _n:stdgo.StdGoTypes.GoInt = (2 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_n < (10 : stdgo.StdGoTypes.GoInt), _n++, {
                var __tmp__ = stdgo.crypto.rand.Rand.prime(stdgo.crypto.rand.Rand.reader, _n), _p:stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("Can\'t generate %d-bit prime: %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
                };
                if (_p.bitLen() != (_n)) {
                    _t.fatalf(("%v is not %d-bit" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_p)), stdgo.Go.toInterface(_n));
                };
                if (!_p.probablyPrime((32 : stdgo.StdGoTypes.GoInt))) {
                    _t.fatalf(("%v is not prime" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_p)));
                };
            });
        };
    }
/**
    // Test that passing bits < 2 causes Prime to return nil, error
**/
function testPrimeBitsLt2(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {
            var __tmp__ = stdgo.crypto.rand.Rand.prime(stdgo.crypto.rand.Rand.reader, (1 : stdgo.StdGoTypes.GoInt)), _p:stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_p != null) && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__)) || (_err == null)) {
                _t.errorf(("Prime should return nil, error when called with bits < 2" : stdgo.GoString)?.__copy__());
            };
        };
    }
function testPrimeNondeterministic(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _r = stdgo.math.rand.Rand.new_(stdgo.math.rand.Rand.newSource((42i64 : stdgo.StdGoTypes.GoInt64)));
        var __tmp__ = stdgo.crypto.rand.Rand.prime(stdgo.Go.asInterface(_r), (32 : stdgo.StdGoTypes.GoInt)), _p0:stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (128 : stdgo.StdGoTypes.GoInt), _i++, {
                _r.seed((42i64 : stdgo.StdGoTypes.GoInt64));
                var __tmp__ = stdgo.crypto.rand.Rand.prime(stdgo.Go.asInterface(_r), (32 : stdgo.StdGoTypes.GoInt)), _p:stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
                if (_p.cmp(_p0) != ((0 : stdgo.StdGoTypes.GoInt))) {
                    return;
                };
            });
        };
        _t.error(stdgo.Go.toInterface(("Prime always generated the same prime given the same input" : stdgo.GoString)));
    }
function testInt(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {
            var _n:stdgo.StdGoTypes.GoInt = (128 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_n < (140 : stdgo.StdGoTypes.GoInt), _n++, {
                var _b = (stdgo.Go.setRef(({} : stdgo.math.big.Big.Int_)) : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_>).setInt64((_n : stdgo.StdGoTypes.GoInt64));
                {
                    var __tmp__ = stdgo.crypto.rand.Rand.int_(stdgo.crypto.rand.Rand.reader, _b), _i:stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatalf(("Can\'t generate random value: %v, %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_i)), stdgo.Go.toInterface(_err));
                    };
                };
            });
        };
    }
/**
    // Test that Int reads only the necessary number of bytes from the reader for
    // max at each bit length
**/
function testIntReads(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (32 : stdgo.StdGoTypes.GoInt), _i++, {
                var _max:stdgo.StdGoTypes.GoInt64 = ((1i64 : stdgo.StdGoTypes.GoInt64) << (_i : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoInt64);
                _t.run(stdgo.fmt.Fmt.sprintf(("max=%d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_max))?.__copy__(), function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
                    var _reader = (stdgo.Go.setRef(({ _r : stdgo.crypto.rand.Rand.reader } : stdgo.crypto.rand_test.Rand_test.T_countingReader)) : stdgo.StdGoTypes.Ref<stdgo.crypto.rand_test.Rand_test.T_countingReader>);
                    var __tmp__ = stdgo.crypto.rand.Rand.int_(stdgo.Go.asInterface(_reader), stdgo.math.big.Big.newInt(_max)), __0:stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatalf(("Can\'t generate random value: %d, %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_max), stdgo.Go.toInterface(_err));
                    };
                    var _expected:stdgo.StdGoTypes.GoInt = (_i + (7 : stdgo.StdGoTypes.GoInt)) / (8 : stdgo.StdGoTypes.GoInt);
                    if (_reader._n != (_expected)) {
                        _t.errorf(("Int(reader, %d) should read %d bytes, but it read: %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_max), stdgo.Go.toInterface(_expected), stdgo.Go.toInterface(_reader._n));
                    };
                });
            });
        };
    }
/**
    // Test that Int does not mask out valid return values
**/
function testIntMask(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {
            var _max:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_max <= (256 : stdgo.StdGoTypes.GoInt), _max++, {
                _t.run(stdgo.fmt.Fmt.sprintf(("max=%d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_max))?.__copy__(), function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
                    {
                        var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor(_i < _max, _i++, {
                            if (stdgo.testing.Testing.short() && (_i == (0 : stdgo.StdGoTypes.GoInt))) {
                                _i = _max - (1 : stdgo.StdGoTypes.GoInt);
                            };
                            var _b:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
                            _b.writeByte((_i : stdgo.StdGoTypes.GoByte));
                            var __tmp__ = stdgo.crypto.rand.Rand.int_(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)), stdgo.math.big.Big.newInt((_max : stdgo.StdGoTypes.GoInt64))), _n:stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                _t.fatalf(("Can\'t generate random value: %d, %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_max), stdgo.Go.toInterface(_err));
                            };
                            if (_n.int64() != ((_i : stdgo.StdGoTypes.GoInt64))) {
                                _t.errorf(("Int(reader, %d) should have returned value of %d, but it returned: %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_max), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_n)));
                            };
                        });
                    };
                });
            });
        };
    }
function _testIntPanics(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _b:stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err:stdgo.StdGoTypes.AnyInterface = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (_err == null) {
                            _t.errorf(("Int should panic when called with max <= 0: %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)));
                        };
                    };
                };
                a();
            });
            stdgo.crypto.rand.Rand.int_(stdgo.crypto.rand.Rand.reader, _b);
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
/**
    // Test that passing a new big.Int as max causes Int to panic
**/
function testIntEmptyMaxPanics(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo.math.big.Big.Int_)) : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_>);
        _testIntPanics(_t, _b);
    }
/**
    // Test that passing a negative value as max causes Int to panic
**/
function testIntNegativeMaxPanics(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo.math.big.Big.Int_)) : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_>).setInt64((-1i64 : stdgo.StdGoTypes.GoInt64));
        _testIntPanics(_t, _b);
    }
function benchmarkPrime(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _r = stdgo.math.rand.Rand.new_(stdgo.math.rand.Rand.newSource(stdgo.time.Time.now().unixNano()));
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                stdgo.crypto.rand.Rand.prime(stdgo.Go.asInterface(_r), (1024 : stdgo.StdGoTypes.GoInt));
            });
        };
    }
class T_countingReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_countingReader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.crypto.rand_test.Rand_test.T_countingReader_asInterface) class T_countingReader_static_extension {
    @:keep
    static public function read( _r:stdgo.StdGoTypes.Ref<T_countingReader>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.StdGoTypes.Ref<T_countingReader> = _r;
        var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = _r._r.read(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _r._n = _r._n + (_n);
        return { _0 : _n, _1 : _err };
    }
}
