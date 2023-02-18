package stdgo.crypto.rand_test;
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
    
    
    
**/
@:structInit @:private @:using(stdgo.crypto.rand_test.Rand_test.T_countingReader_static_extension) class T_countingReader {
    public var _r : stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);
    public var _n : GoInt = 0;
    public function new(?_r:stdgo.io.Io.Reader, ?_n:GoInt) {
        if (_r != null) this._r = _r;
        if (_n != null) this._n = _n;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_countingReader(_r, _n);
    }
}
/**
    // This example reads 10 cryptographically secure pseudorandom numbers from
    // rand.Reader and writes them to a byte slice.
**/
function exampleRead():Void {
        var _c:GoInt = (10 : GoInt);
        var _b = new Slice<GoUInt8>((_c : GoInt).toBasic(), 0, ...[for (i in 0 ... (_c : GoInt).toBasic()) (0 : GoUInt8)]);
        var __tmp__ = stdgo.crypto.rand.Rand.read(_b), _0:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            stdgo.fmt.Fmt.println(Go.toInterface(("error:" : GoString)), Go.toInterface(_err));
            return;
        };
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.equal(_b, new Slice<GoUInt8>((_c : GoInt).toBasic(), 0, ...[for (i in 0 ... (_c : GoInt).toBasic()) (0 : GoUInt8)]))));
    }
/**
    // https://golang.org/issue/6849.
**/
function testPrimeSmall(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _n:GoInt = (2 : GoInt);
            Go.cfor(_n < (10 : GoInt), _n++, {
                var __tmp__ = stdgo.crypto.rand.Rand.prime(stdgo.crypto.rand.Rand.reader, _n), _p:Ref<stdgo.math.big.Big.Int_> = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("Can\'t generate %d-bit prime: %v" : GoString), Go.toInterface(_n), Go.toInterface(_err));
                };
                if (_p.bitLen() != (_n)) {
                    _t.fatalf(("%v is not %d-bit" : GoString), Go.toInterface(Go.asInterface(_p)), Go.toInterface(_n));
                };
                if (!_p.probablyPrime((32 : GoInt))) {
                    _t.fatalf(("%v is not prime" : GoString), Go.toInterface(Go.asInterface(_p)));
                };
            });
        };
    }
/**
    // Test that passing bits < 2 causes Prime to return nil, error
**/
function testPrimeBitsLt2(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var __tmp__ = stdgo.crypto.rand.Rand.prime(stdgo.crypto.rand.Rand.reader, (1 : GoInt)), _p:Ref<stdgo.math.big.Big.Int_> = __tmp__._0, _err:Error = __tmp__._1;
            if ((_p != null) || (_err == null)) {
                _t.errorf(("Prime should return nil, error when called with bits < 2" : GoString));
            };
        };
    }
function testPrimeNondeterministic(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _r = stdgo.math.rand.Rand.new_(stdgo.math.rand.Rand.newSource(("42" : GoInt64)));
        var __tmp__ = stdgo.crypto.rand.Rand.prime(Go.asInterface(_r), (32 : GoInt)), _p0:Ref<stdgo.math.big.Big.Int_> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (128 : GoInt), _i++, {
                _r.seed(("42" : GoInt64));
                var __tmp__ = stdgo.crypto.rand.Rand.prime(Go.asInterface(_r), (32 : GoInt)), _p:Ref<stdgo.math.big.Big.Int_> = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
                if (_p.cmp(_p0) != ((0 : GoInt))) {
                    return;
                };
            });
        };
        _t.error(Go.toInterface(("Prime always generated the same prime given the same input" : GoString)));
    }
function testInt(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _n:GoInt = (128 : GoInt);
            Go.cfor(_n < (140 : GoInt), _n++, {
                var _b = ({} : stdgo.math.big.Big.Int_).setInt64((_n : GoInt64));
                {
                    var __tmp__ = stdgo.crypto.rand.Rand.int_(stdgo.crypto.rand.Rand.reader, _b), _i:Ref<stdgo.math.big.Big.Int_> = __tmp__._0, _err:Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatalf(("Can\'t generate random value: %v, %v" : GoString), Go.toInterface(Go.asInterface(_i)), Go.toInterface(_err));
                    };
                };
            });
        };
    }
/**
    // Test that Int reads only the necessary number of bytes from the reader for
    // max at each bit length
**/
function testIntReads(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (32 : GoInt), _i++, {
                var _max:GoInt64 = (("1" : GoInt64) << (_i : GoUInt64) : GoInt64);
                _t.run(stdgo.fmt.Fmt.sprintf(("max=%d" : GoString), Go.toInterface(_max)), function(_t:Ref<stdgo.testing.Testing.T>):Void {
                    var _reader = (({ _r : stdgo.crypto.rand.Rand.reader } : T_countingReader) : Ref<stdgo.crypto.rand_test.Rand_test.T_countingReader>);
                    var __tmp__ = stdgo.crypto.rand.Rand.int_(Go.asInterface(_reader), stdgo.math.big.Big.newInt(_max)), _0:Ref<stdgo.math.big.Big.Int_> = __tmp__._0, _err:Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatalf(("Can\'t generate random value: %d, %v" : GoString), Go.toInterface(_max), Go.toInterface(_err));
                    };
                    var _expected:GoInt = (_i + (7 : GoInt)) / (8 : GoInt);
                    if (_reader._n != (_expected)) {
                        _t.errorf(("Int(reader, %d) should read %d bytes, but it read: %d" : GoString), Go.toInterface(_max), Go.toInterface(_expected), Go.toInterface(_reader._n));
                    };
                });
            });
        };
    }
/**
    // Test that Int does not mask out valid return values
**/
function testIntMask(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _max:GoInt = (1 : GoInt);
            Go.cfor(_max <= (256 : GoInt), _max++, {
                _t.run(stdgo.fmt.Fmt.sprintf(("max=%d" : GoString), Go.toInterface(_max)), function(_t:Ref<stdgo.testing.Testing.T>):Void {
                    {
                        var _i:GoInt = (0 : GoInt);
                        Go.cfor(_i < _max, _i++, {
                            if (stdgo.testing.Testing.short() && (_i == (0 : GoInt))) {
                                _i = _max - (1 : GoInt);
                            };
                            var _b:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
                            _b.writeByte((_i : GoByte));
                            var __tmp__ = stdgo.crypto.rand.Rand.int_(Go.asInterface((_b : Ref<stdgo.bytes.Bytes.Buffer>)), stdgo.math.big.Big.newInt((_max : GoInt64))), _n:Ref<stdgo.math.big.Big.Int_> = __tmp__._0, _err:Error = __tmp__._1;
                            if (_err != null) {
                                _t.fatalf(("Can\'t generate random value: %d, %v" : GoString), Go.toInterface(_max), Go.toInterface(_err));
                            };
                            if (_n.int64() != ((_i : GoInt64))) {
                                _t.errorf(("Int(reader, %d) should have returned value of %d, but it returned: %v" : GoString), Go.toInterface(_max), Go.toInterface(_i), Go.toInterface(Go.asInterface(_n)));
                            };
                        });
                    };
                });
            });
        };
    }
private function _testIntPanics(_t:Ref<stdgo.testing.Testing.T>, _b:Ref<stdgo.math.big.Big.Int_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        __deferstack__.unshift(() -> {
            var a = function():Void {
                {
                    var _err:AnyInterface = ({
                        final r = Go.recover_exception;
                        Go.recover_exception = null;
                        r;
                    });
                    if (_err == null) {
                        _t.errorf(("Int should panic when called with max <= 0: %v" : GoString), Go.toInterface(Go.asInterface(_b)));
                    };
                };
            };
            a();
        });
        try {
            stdgo.crypto.rand.Rand.int_(stdgo.crypto.rand.Rand.reader, _b);
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
/**
    // Test that passing a new big.Int as max causes Int to panic
**/
function testIntEmptyMaxPanics(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _b = ({} : stdgo.math.big.Big.Int_);
        _testIntPanics(_t, _b);
    }
/**
    // Test that passing a negative value as max causes Int to panic
**/
function testIntNegativeMaxPanics(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _b = ({} : stdgo.math.big.Big.Int_).setInt64((("-1" : GoInt64) : GoInt64));
        _testIntPanics(_t, _b);
    }
function benchmarkPrime(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _r = stdgo.math.rand.Rand.new_(stdgo.math.rand.Rand.newSource(stdgo.time.Time.now().unixNano()));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                stdgo.crypto.rand.Rand.prime(Go.asInterface(_r), (1024 : GoInt));
            });
        };
    }
class T_countingReader_asInterface {
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_countingReader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.crypto.rand_test.Rand_test.T_countingReader_asInterface) class T_countingReader_static_extension {
    @:keep
    static public function read( _r:Ref<T_countingReader>, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
        {
            var __tmp__ = _r._r.read(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _r._n = _r._n + (_n);
        return { _0 : _n, _1 : _err };
    }
}
