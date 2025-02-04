package stdgo._internal.math.big;
function testFloatSetFloat64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            for (__8 => _want in (new stdgo.Slice<stdgo.GoFloat64>(16, 16, ...[
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
                    var _f:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_);
                    @:check2 _f.setFloat64(_want);
                    {
                        var __tmp__ = @:check2 _f.float64(), _got:stdgo.GoFloat64 = __tmp__._0, _acc:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
                        if (((_got != _want) || (_acc != (0 : stdgo._internal.math.big.Big_accuracy.Accuracy)) : Bool)) {
                            @:check2r _t.errorf(("got %g (%s, %s); want %g (Exact)" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(@:check2 _f.text((112 : stdgo.GoUInt8), (0 : stdgo.GoInt))), stdgo.Go.toInterface(stdgo.Go.asInterface(_acc)), stdgo.Go.toInterface(_want));
                        };
                    };
                };
            };
            {};
            {
                var _prec = ((1u32 : stdgo.GoUInt) : stdgo.GoUInt);
                while ((_prec <= (52u32 : stdgo.GoUInt) : Bool)) {
                    var _f = @:check2r @:check2r @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>).setPrec(_prec).setMode((2 : stdgo._internal.math.big.Big_roundingmode.RoundingMode)).setFloat64(((2381903803200024i64 : stdgo.GoUInt64) : stdgo.GoFloat64));
var __tmp__ = @:check2r _f.float64(), _got:stdgo.GoFloat64 = __tmp__._0, __9:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
var _want = (((2381903803200024i64 : stdgo.GoUInt64) & ((((((1i64 : stdgo.GoUInt64) << (((52u32 : stdgo.GoUInt) - _prec : stdgo.GoUInt)) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) ^ (-1i32 : stdgo.GoInt32) : stdgo.GoUInt64)) : stdgo.GoUInt64) : stdgo.GoFloat64);
if (_got != (_want)) {
                        @:check2r _t.errorf(("got %g (%s); want %g" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(@:check2r _f.text((112 : stdgo.GoUInt8), (0 : stdgo.GoInt))), stdgo.Go.toInterface(_want));
                    };
                    _prec++;
                };
            };
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert(({
                                    final r = stdgo.Go.recover_exception;
                                    stdgo.Go.recover_exception = null;
                                    r;
                                } : stdgo._internal.math.big.Big_errnan.ErrNaN)) : stdgo._internal.math.big.Big_errnan.ErrNaN), _1 : true };
                            } catch(_) {
                                { _0 : ({} : stdgo._internal.math.big.Big_errnan.ErrNaN), _1 : false };
                            }, _p = __tmp__._0, _ok = __tmp__._1;
                            if (!_ok) {
                                @:check2r _t.errorf(("got %v; want ErrNaN panic" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_p)));
                            };
                        };
                    };
                    a();
                }) });
            };
            var _f:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_);
            @:check2 _f.setFloat64(stdgo._internal.math.Math_nan.naN());
            @:check2r _t.errorf(("got %s; want ErrNaN panic" : stdgo.GoString), stdgo.Go.toInterface(@:check2 _f.text((112 : stdgo.GoUInt8), (0 : stdgo.GoInt))));
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
