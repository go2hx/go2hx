package stdgo._internal.math.big;
function testFloatArithmeticSpecialValues(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _zero = (0 : stdgo.GoFloat64);
        var _args = (new stdgo.Slice<stdgo.GoFloat64>(8, 8, ...[stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt)), (-2.71828 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64), -_zero, _zero, (1 : stdgo.GoFloat64), (2.71828 : stdgo.GoFloat64), stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        var _xx = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        var _yy = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        var _got = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        var _want = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1605"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (4 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1606"
                for (__8 => _x in _args) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1607"
                    _xx.setFloat64(_x);
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1611"
                    {
                        var __tmp__ = _xx.float64(), _got:stdgo.GoFloat64 = __tmp__._0, _acc:stdgo._internal.math.big.Big_accuracy.Accuracy = __tmp__._1;
                        if (((_got != _x) || (_acc != (0 : stdgo._internal.math.big.Big_accuracy.Accuracy)) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1612"
                            _t.errorf(("Float(%g) == %g (%s)" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(stdgo.Go.asInterface(_acc)));
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1614"
                    for (__9 => _y in _args) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1615"
                        _yy.setFloat64(_y);
                        var _op:stdgo.GoString = ("" : stdgo.GoString), _z:stdgo.GoFloat64 = (0 : stdgo.GoFloat64), _f:(stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>, stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>) -> stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = null;
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1621"
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
                                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1639"
                                throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
                            };
                        };
                        var _errnan:Bool = false;
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1643"
                        ({
                            var a = function():Void {
                                var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                                try {
                                    {
                                        __deferstack__.unshift({ ran : false, f : () -> ({
                                            var a = function():Void {
                                                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1645"
                                                {
                                                    var _p = ({
                                                        final r = stdgo.Go.recover_exception;
                                                        stdgo.Go.recover_exception = null;
                                                        r;
                                                    } : stdgo.AnyInterface);
                                                    if (_p != null) {
                                                        (stdgo.Go.typeAssert((_p : stdgo._internal.math.big.Big_errnan.ErrNaN)) : stdgo._internal.math.big.Big_errnan.ErrNaN);
                                                        _errnan = true;
                                                    };
                                                };
                                            };
                                            a();
                                        }) });
                                    };
                                    //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1650"
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
                                        if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1652"
                        if (stdgo._internal.math.Math_isnan.isNaN(_z)) {
                            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1653"
                            if (!_errnan) {
                                //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1654"
                                _t.errorf(("%5g %s %5g = %5s; want ErrNaN panic" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_op), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)));
                            };
                            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1656"
                            continue;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1658"
                        if (_errnan) {
                            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1659"
                            _t.errorf(("%5g %s %5g panicked with ErrNan; want %5s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_op), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1660"
                            continue;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1662"
                        _want.setFloat64(_z);
                        //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1663"
                        if (!stdgo._internal.math.big.Big__alike._alike(_got, _want)) {
                            //"file:///home/runner/.go/go1.21.3/src/math/big/float_test.go#L1664"
                            _t.errorf(("%5g %s %5g = %5s; want %5s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_op), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                        };
                    };
                };
                _i++;
            };
        };
    }
