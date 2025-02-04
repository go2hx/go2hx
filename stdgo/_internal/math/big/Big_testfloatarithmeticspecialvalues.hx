package stdgo._internal.math.big;
function testFloatArithmeticSpecialValues(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _zero = (0 : stdgo.GoFloat64);
        var _args = (new stdgo.Slice<stdgo.GoFloat64>(8, 8, ...[stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt)), (-2.71828 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64), -_zero, _zero, (1 : stdgo.GoFloat64), (2.71828 : stdgo.GoFloat64), stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        var _xx = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        var _yy = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        var _got = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        var _want = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (4 : stdgo.GoInt) : Bool)) {
                for (__8 => _x in _args) {
                    @:check2r _xx.setFloat64(_x);
                    {
                        var __tmp__ = @:check2r _xx.float64(), _got:stdgo.GoFloat64 = __tmp__._0, _acc:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
                        if (((_got != _x) || (_acc != (0 : stdgo._internal.math.big.Big_accuracy.Accuracy)) : Bool)) {
                            @:check2r _t.errorf(("Float(%g) == %g (%s)" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(stdgo.Go.asInterface(_acc)));
                        };
                    };
                    for (__9 => _y in _args) {
                        @:check2r _yy.setFloat64(_y);
                        var __0:stdgo.GoString = ("" : stdgo.GoString), __1:stdgo.GoFloat64 = (0 : stdgo.GoFloat64), __2:(stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>) -> stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = null;
var _f = __2, _z = __1, _op = __0;
                        {
                            final __value__ = _i;
                            if (__value__ == ((0 : stdgo.GoInt))) {
                                _op = ("+" : stdgo.GoString);
                                _z = (_x + _y : stdgo.GoFloat64);
                                _f = stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.add;
                            } else if (__value__ == ((1 : stdgo.GoInt))) {
                                _op = ("-" : stdgo.GoString);
                                _z = (_x - _y : stdgo.GoFloat64);
                                _f = stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.sub;
                            } else if (__value__ == ((2 : stdgo.GoInt))) {
                                _op = ("*" : stdgo.GoString);
                                _z = (_x * _y : stdgo.GoFloat64);
                                _f = stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.mul;
                            } else if (__value__ == ((3 : stdgo.GoInt))) {
                                _op = ("/" : stdgo.GoString);
                                _z = (_x / _y : stdgo.GoFloat64);
                                _f = stdgo._internal.math.big.Big_float__static_extension.Float__static_extension.quo;
                            } else {
                                throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
                            };
                        };
                        var _errnan:Bool = false;
                        ({
                            var a = function():Void {
                                var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                                try {
                                    {
                                        __deferstack__.unshift({ ran : false, f : () -> ({
                                            var a = function():Void {
                                                {
                                                    var _p = ({
                                                        final r = stdgo.Go.recover_exception;
                                                        stdgo.Go.recover_exception = null;
                                                        r;
                                                    } : stdgo.AnyInterface);
                                                    if (_p != null) {
                                                        var __blank__ = (stdgo.Go.typeAssert((_p : stdgo._internal.math.big.Big_errnan.ErrNaN)) : stdgo._internal.math.big.Big_errnan.ErrNaN);
                                                        _errnan = true;
                                                    };
                                                };
                                            };
                                            a();
                                        }) });
                                    };
                                    _f(_got, _xx, _yy);
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
                            };
                            a();
                        });
                        if (stdgo._internal.math.Math_isnan.isNaN(_z)) {
                            if (!_errnan) {
                                @:check2r _t.errorf(("%5g %s %5g = %5s; want ErrNaN panic" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_op), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)));
                            };
                            continue;
                        };
                        if (_errnan) {
                            @:check2r _t.errorf(("%5g %s %5g panicked with ErrNan; want %5s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_op), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                            continue;
                        };
                        @:check2r _want.setFloat64(_z);
                        if (!stdgo._internal.math.big.Big__alike._alike(_got, _want)) {
                            @:check2r _t.errorf(("%5g %s %5g = %5s; want %5s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_op), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                        };
                    };
                };
                _i++;
            };
        };
    }
