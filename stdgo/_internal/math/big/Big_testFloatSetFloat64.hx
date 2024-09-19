package stdgo._internal.math.big;
function testFloatSetFloat64(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            for (__14 => _want in (new stdgo.Slice<stdgo.GoFloat64>(16, 16, ...[
(0 : stdgo.GoFloat64),
(1 : stdgo.GoFloat64),
(2 : stdgo.GoFloat64),
(12345 : stdgo.GoFloat64),
(1e+10 : stdgo.GoFloat64),
(1e+100 : stdgo.GoFloat64),
(3.14159265e+10 : stdgo.GoFloat64),
(2.718281828e-123 : stdgo.GoFloat64),
(0.3333333333333333 : stdgo.GoFloat64),
(3.4028234663852886e+38 : stdgo.GoFloat64),
(1.7976931348623157e+308 : stdgo.GoFloat64),
(1.401298464324817e-45 : stdgo.GoFloat64),
(5e-324 : stdgo.GoFloat64),
stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt)),
stdgo._internal.math.Math_inf.inf((0 : stdgo.GoInt)),
-stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>)) {
                for (_i => _ in (new stdgo.GoArray<stdgo.GoInt>(2, 2, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)) {
                    if ((_i & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                        _want = -_want;
                    };
                    var _f:stdgo._internal.math.big.Big_Float_.Float_ = ({} : stdgo._internal.math.big.Big_Float_.Float_);
                    _f.setFloat64(_want);
                    {
                        var __tmp__ = _f.float64(), _got:stdgo.GoFloat64 = __tmp__._0, _acc:stdgo._internal.math.big.Big_Accuracy.Accuracy = __tmp__._1;
                        if (((_got != _want) || (_acc != (0 : stdgo._internal.math.big.Big_Accuracy.Accuracy)) : Bool)) {
                            _t.errorf(("got %g (%s, %s); want %g (Exact)" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_f.text((112 : stdgo.GoUInt8), (0 : stdgo.GoInt))), stdgo.Go.toInterface(stdgo.Go.asInterface(_acc)), stdgo.Go.toInterface(_want));
                        };
                    };
                };
            };
            {};
            {
                var _prec = ((1u32 : stdgo.GoUInt) : stdgo.GoUInt);
                stdgo.Go.cfor((_prec <= (52u32 : stdgo.GoUInt) : Bool), _prec++, {
                    var _f = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setPrec(_prec).setMode((2 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode)).setFloat64(((2381903803200024i64 : stdgo.GoUInt64) : stdgo.GoFloat64));
                    var __tmp__ = _f.float64(), _got:stdgo.GoFloat64 = __tmp__._0, __15:stdgo._internal.math.big.Big_Accuracy.Accuracy = __tmp__._1;
                    var _want = (((2381903803200024i64 : stdgo.GoUInt64) & ((((((1i64 : stdgo.GoUInt64) << (((52u32 : stdgo.GoUInt) - _prec : stdgo.GoUInt)) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) ^ (-1i32 : stdgo.GoInt) : stdgo.GoUInt64)) : stdgo.GoUInt64) : stdgo.GoFloat64);
                    if (_got != (_want)) {
                        _t.errorf(("got %g (%s); want %g" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_f.text((112 : stdgo.GoUInt8), (0 : stdgo.GoInt))), stdgo.Go.toInterface(_want));
                    };
                });
            };
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert(({
                                    final r = stdgo.Go.recover_exception;
                                    stdgo.Go.recover_exception = null;
                                    r;
                                } : stdgo._internal.math.big.Big_ErrNaN.ErrNaN)) : stdgo._internal.math.big.Big_ErrNaN.ErrNaN), _1 : true };
                            } catch(_) {
                                { _0 : ({} : stdgo._internal.math.big.Big_ErrNaN.ErrNaN), _1 : false };
                            }, _p = __tmp__._0, _ok = __tmp__._1;
                            if (!_ok) {
                                _t.errorf(("got %v; want ErrNaN panic" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_p)));
                            };
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
                        if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                            if (__exception__.message == "__return__") throw "__return__";
                            exe = stdgo.Go.toInterface(__exception__.message);
                        };
                        stdgo.Go.recover_exception = exe;
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                };
                a();
            });
            var _f:stdgo._internal.math.big.Big_Float_.Float_ = ({} : stdgo._internal.math.big.Big_Float_.Float_);
            _f.setFloat64(stdgo._internal.math.Math_naN.naN());
            _t.errorf(("got %s; want ErrNaN panic" : stdgo.GoString), stdgo.Go.toInterface(_f.text((112 : stdgo.GoUInt8), (0 : stdgo.GoInt))));
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
                if (__exception__.message == "__return__") throw "__return__";
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
