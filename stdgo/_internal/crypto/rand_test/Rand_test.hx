package stdgo._internal.crypto.rand_test;
import stdgo._internal.crypto.rand.Rand;
@:structInit @:private @:using(stdgo._internal.crypto.rand_test.Rand_test.T_countingReader_static_extension) class T_countingReader {
    public var _r : stdgo._internal.io.Io.Reader = (null : stdgo._internal.io.Io.Reader);
    public var _n : stdgo.GoInt = 0;
    public function new(?_r:stdgo._internal.io.Io.Reader, ?_n:stdgo.GoInt) {
        if (_r != null) this._r = _r;
        if (_n != null) this._n = _n;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_countingReader(_r, _n);
    }
}
function exampleRead():Void {
        var _c = (10 : stdgo.GoInt);
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((_c : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = stdgo._internal.crypto.rand.Rand.read(_b), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            return;
        };
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes.equal(_b, (new stdgo.Slice<stdgo.GoUInt8>((_c : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>))));
    }
function testPrimeSmall(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _n = (2 : stdgo.GoInt);
            stdgo.Go.cfor((_n < (10 : stdgo.GoInt) : Bool), _n++, {
                var __tmp__ = stdgo._internal.crypto.rand.Rand.prime(stdgo._internal.crypto.rand.Rand.reader, _n), _p:stdgo.Ref<stdgo._internal.math.big.Big.Int_> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("Can\'t generate %d-bit prime: %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
                };
                if (_p.bitLen() != (_n)) {
                    _t.fatalf(("%v is not %d-bit" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_p)), stdgo.Go.toInterface(_n));
                };
                if (!_p.probablyPrime((32 : stdgo.GoInt))) {
                    _t.fatalf(("%v is not prime" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_p)));
                };
            });
        };
    }
function testPrimeBitsLt2(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var __tmp__ = stdgo._internal.crypto.rand.Rand.prime(stdgo._internal.crypto.rand.Rand.reader, (1 : stdgo.GoInt)), _p:stdgo.Ref<stdgo._internal.math.big.Big.Int_> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((((_p != null) && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__)) || (_err == null) : Bool)) {
                _t.errorf(("Prime should return nil, error when called with bits < 2" : stdgo.GoString));
            };
        };
    }
function testPrimeNondeterministic(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _r = stdgo._internal.math.rand.Rand.new_(stdgo._internal.math.rand.Rand.newSource((42i64 : stdgo.GoInt64)));
        var __tmp__ = stdgo._internal.crypto.rand.Rand.prime(stdgo.Go.asInterface(_r), (32 : stdgo.GoInt)), _p0:stdgo.Ref<stdgo._internal.math.big.Big.Int_> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (128 : stdgo.GoInt) : Bool), _i++, {
                _r.seed((42i64 : stdgo.GoInt64));
                var __tmp__ = stdgo._internal.crypto.rand.Rand.prime(stdgo.Go.asInterface(_r), (32 : stdgo.GoInt)), _p:stdgo.Ref<stdgo._internal.math.big.Big.Int_> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
                if (_p.cmp(_p0) != ((0 : stdgo.GoInt))) {
                    return;
                };
            });
        };
        _t.error(stdgo.Go.toInterface(("Prime always generated the same prime given the same input" : stdgo.GoString)));
    }
function testInt(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _n = (128 : stdgo.GoInt);
            stdgo.Go.cfor((_n < (140 : stdgo.GoInt) : Bool), _n++, {
                var _b = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big.Int_>).setInt64((_n : stdgo.GoInt64));
                {
                    var __tmp__ = stdgo._internal.crypto.rand.Rand.int_(stdgo._internal.crypto.rand.Rand.reader, _b), _i:stdgo.Ref<stdgo._internal.math.big.Big.Int_> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatalf(("Can\'t generate random value: %v, %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_i)), stdgo.Go.toInterface(_err));
                    };
                };
            });
        };
    }
function testIntReads(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (32 : stdgo.GoInt) : Bool), _i++, {
                var _max = (((1i64 : stdgo.GoInt64) << (_i : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoInt64);
                _t.run(stdgo._internal.fmt.Fmt.sprintf(("max=%d" : stdgo.GoString), stdgo.Go.toInterface(_max))?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                    var _reader = (stdgo.Go.setRef(({ _r : stdgo._internal.crypto.rand.Rand.reader } : stdgo._internal.crypto.rand_test.Rand_test.T_countingReader)) : stdgo.Ref<stdgo._internal.crypto.rand_test.Rand_test.T_countingReader>);
                    var __tmp__ = stdgo._internal.crypto.rand.Rand.int_(stdgo.Go.asInterface(_reader), stdgo._internal.math.big.Big.newInt(_max)), __8:stdgo.Ref<stdgo._internal.math.big.Big.Int_> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatalf(("Can\'t generate random value: %d, %v" : stdgo.GoString), stdgo.Go.toInterface(_max), stdgo.Go.toInterface(_err));
                    };
                    var _expected = (((_i + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
                    if (_reader._n != (_expected)) {
                        _t.errorf(("Int(reader, %d) should read %d bytes, but it read: %d" : stdgo.GoString), stdgo.Go.toInterface(_max), stdgo.Go.toInterface(_expected), stdgo.Go.toInterface(_reader._n));
                    };
                });
            });
        };
    }
function testIntMask(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _max = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_max <= (256 : stdgo.GoInt) : Bool), _max++, {
                _t.run(stdgo._internal.fmt.Fmt.sprintf(("max=%d" : stdgo.GoString), stdgo.Go.toInterface(_max))?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _max : Bool), _i++, {
                            if ((stdgo._internal.testing.Testing.short() && (_i == (0 : stdgo.GoInt)) : Bool)) {
                                _i = (_max - (1 : stdgo.GoInt) : stdgo.GoInt);
                            };
                            var _b:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
                            _b.writeByte((_i : stdgo.GoByte));
                            var __tmp__ = stdgo._internal.crypto.rand.Rand.int_(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), stdgo._internal.math.big.Big.newInt((_max : stdgo.GoInt64))), _n:stdgo.Ref<stdgo._internal.math.big.Big.Int_> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                _t.fatalf(("Can\'t generate random value: %d, %v" : stdgo.GoString), stdgo.Go.toInterface(_max), stdgo.Go.toInterface(_err));
                            };
                            if (_n.int64() != ((_i : stdgo.GoInt64))) {
                                _t.errorf(("Int(reader, %d) should have returned value of %d, but it returned: %v" : stdgo.GoString), stdgo.Go.toInterface(_max), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_n)));
                            };
                        });
                    };
                });
            });
        };
    }
function _testIntPanics(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _b:stdgo.Ref<stdgo._internal.math.big.Big.Int_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        } : stdgo.AnyInterface);
                        if (_err == null) {
                            _t.errorf(("Int should panic when called with max <= 0: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)));
                        };
                    };
                };
                a();
            });
            stdgo._internal.crypto.rand.Rand.int_(stdgo._internal.crypto.rand.Rand.reader, _b);
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
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
function testIntEmptyMaxPanics(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big.Int_>);
        _testIntPanics(_t, _b);
    }
function testIntNegativeMaxPanics(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big.Int_>).setInt64((-1i64 : stdgo.GoInt64));
        _testIntPanics(_t, _b);
    }
function benchmarkPrime(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _r = stdgo._internal.math.rand.Rand.new_(stdgo._internal.math.rand.Rand.newSource(stdgo._internal.time.Time.now().unixNano()));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.crypto.rand.Rand.prime(stdgo.Go.asInterface(_r), (1024 : stdgo.GoInt));
            });
        };
    }
class T_countingReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_countingReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.crypto.rand_test.Rand_test.T_countingReader_asInterface) class T_countingReader_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<T_countingReader>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<T_countingReader> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {
            var __tmp__ = _r._r.read(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _r._n = (_r._n + (_n) : stdgo.GoInt);
        return { _0 : _n, _1 : _err };
    }
}
