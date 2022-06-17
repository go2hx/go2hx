package stdgo.math.big_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
function _recur(_n:GoInt64, _lim:GoInt64):Rat {
        var _term:Ref<Rat> = new Rat();
        if ((_n % ((3 : GoInt64))) != ((1 : GoInt64))) {
            _term.setInt64(((1 : GoInt64)));
        } else {
            _term.setInt64(((_n - ((1 : GoInt64))) / ((3 : GoInt64))) * ((2 : GoInt64)));
        };
        if (_n > _lim) {
            return _term;
        };
        var _frac:Ref<Rat> = new Rat().inv(_recur(_n + ((1 : GoInt64)), _lim));
        return _term.add(_term, _frac);
    }
function example_eConvergents():Void {
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i <= ((15 : GoInt)), _i++, {
                var _r:Ref<Rat> = _recur(((0 : GoInt64)), ((_i : GoInt64)));
                stdgo.fmt.Fmt.printf(((("%-13s = %s\n" : GoString))), Go.toInterface(_r), Go.toInterface(_r.floatString(((8 : GoInt)))));
            });
        };
    }
function exampleRat_SetString():Void {
        var _r:Ref<Rat> = new Rat();
        _r.setString(((("355/113" : GoString))));
        stdgo.fmt.Fmt.println(_r.floatString(((3 : GoInt))));
    }
function exampleInt_SetString():Void {
        var _i:Ref<Int_> = new Int_();
        _i.setString(((("644" : GoString))), ((8 : GoInt)));
        stdgo.fmt.Fmt.println(_i);
    }
function exampleFloat_SetString():Void {
        var _f:Ref<Float_> = new Float_();
        _f.setString(((("3.14159" : GoString))));
        stdgo.fmt.Fmt.println(_f);
    }
function exampleRat_Scan():Void {
        var _r:Ref<Rat> = new Rat();
        var __tmp__ = stdgo.fmt.Fmt.sscan(((("1.5000" : GoString))), _r), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.println(Go.toInterface(((("error scanning value:" : GoString)))), Go.toInterface(_err));
        } else {
            stdgo.fmt.Fmt.println(_r);
        };
    }
function exampleInt_Scan():Void {
        var _i:Ref<Int_> = new Int_();
        var __tmp__ = stdgo.fmt.Fmt.sscan(((("18446744073709551617" : GoString))), _i), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.println(Go.toInterface(((("error scanning value:" : GoString)))), Go.toInterface(_err));
        } else {
            stdgo.fmt.Fmt.println(_i);
        };
    }
function exampleFloat_Scan():Void {
        var _f:Ref<Float_> = new Float_();
        var __tmp__ = stdgo.fmt.Fmt.sscan(((("1.19282e99" : GoString))), _f), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.log.Log.println(Go.toInterface(((("error scanning value:" : GoString)))), Go.toInterface(_err));
        } else {
            stdgo.fmt.Fmt.println(_f);
        };
    }
function example_fibonacci():Void {
        var _a:Ref<Int_> = stdgo.math.big.Big.newInt(((0 : GoInt64)));
        var _b:Ref<Int_> = stdgo.math.big.Big.newInt(((1 : GoInt64)));
        var _limit:Int_ = new Int_();
        _limit.exp(stdgo.math.big.Big.newInt(((10 : GoInt64))), stdgo.math.big.Big.newInt(((99 : GoInt64))), null);
        while (_a.cmp(_limit) < ((0 : GoInt))) {
            _a.add(_a, _b);
            {
                final __tmp__0 = _b;
                final __tmp__1 = _a;
                _a = __tmp__0;
                _b = __tmp__1;
            };
        };
        stdgo.fmt.Fmt.println(_a);
        stdgo.fmt.Fmt.println(_a.probablyPrime(((20 : GoInt))));
    }
function example_sqrt2():Void {
        {};
        var _steps:GoInt = ((stdgo.math.Math.log2(((200 : GoFloat64))) : GoInt));
        var _two:Ref<Float_> = new Float_().setPrec(((200 : GoUInt))).setInt64(((2 : GoInt64)));
        var _half:Ref<Float_> = new Float_().setPrec(((200 : GoUInt))).setFloat64(((0.5 : GoFloat64)));
        var _x:Ref<Float_> = new Float_().setPrec(((200 : GoUInt))).setInt64(((1 : GoInt64)));
        var _t:Ref<Float_> = new Float_();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i <= _steps, _i++, {
                _t.quo(_two, _x);
                _t.add(_x, _t);
                _x.mul(_half, _t);
            });
        };
        stdgo.fmt.Fmt.printf(((("sqrt(2) = %.50f\n" : GoString))), Go.toInterface(_x));
        _t.mul(_x, _x);
        stdgo.fmt.Fmt.printf(((("error = %e\n" : GoString))), Go.toInterface(_t.sub(_two, _t)));
    }
function exampleFloat_Add():Void {
        var _x:Float_ = new Float_(), _y:Float_ = new Float_(), _z:Float_ = new Float_();
        _x.setInt64(((1000 : GoInt64)));
        _y.setFloat64(((2.718281828 : GoFloat64)));
        _z.setPrec(((32 : GoUInt)));
        _z.add(_x, _y);
        stdgo.fmt.Fmt.printf(((("x = %.10g (%s, prec = %d, acc = %s)\n" : GoString))), Go.toInterface(_x), Go.toInterface(_x.text(((((("p" : GoString))).code : GoRune)), ((0 : GoInt)))), Go.toInterface(_x.prec()), Go.toInterface(_x.acc()));
        stdgo.fmt.Fmt.printf(((("y = %.10g (%s, prec = %d, acc = %s)\n" : GoString))), Go.toInterface(_y), Go.toInterface(_y.text(((((("p" : GoString))).code : GoRune)), ((0 : GoInt)))), Go.toInterface(_y.prec()), Go.toInterface(_y.acc()));
        stdgo.fmt.Fmt.printf(((("z = %.10g (%s, prec = %d, acc = %s)\n" : GoString))), Go.toInterface(_z), Go.toInterface(_z.text(((((("p" : GoString))).code : GoRune)), ((0 : GoInt)))), Go.toInterface(_z.prec()), Go.toInterface(_z.acc()));
    }
function exampleFloat_shift():Void {
        {
            var _s:GoInt = ((-5 : GoInt));
            Go.cfor(_s <= ((5 : GoInt)), _s++, {
                var _x:Ref<Float_> = stdgo.math.big.Big.newFloat(((0.5 : GoFloat64)));
                _x.setMantExp(_x, _x.mantExp(null) + _s);
                stdgo.fmt.Fmt.println(_x);
            });
        };
    }
function exampleFloat_Cmp():Void {
        var _inf:GoFloat64 = stdgo.math.Math.inf(((1 : GoInt)));
        var _zero:GoFloat64 = ((0 : GoFloat64));
        var _operands:Slice<GoFloat64> = ((new Slice<GoFloat64>(-_inf, ((-1.2 : GoFloat64)), -_zero, ((0 : GoFloat64)), ((1.2 : GoFloat64)), _inf) : Slice<GoFloat64>));
        stdgo.fmt.Fmt.println(((("   x     y  cmp" : GoString))));
        stdgo.fmt.Fmt.println(((("---------------" : GoString))));
        for (_0 => _x64 in _operands) {
            var _x:Ref<Float_> = stdgo.math.big.Big.newFloat(_x64);
            for (_1 => _y64 in _operands) {
                var _y:Ref<Float_> = stdgo.math.big.Big.newFloat(_y64);
                stdgo.fmt.Fmt.printf(((("%4g  %4g  %3d\n" : GoString))), Go.toInterface(_x), Go.toInterface(_y), Go.toInterface(_x.cmp(_y)));
            };
            stdgo.fmt.Fmt.println();
        };
    }
function exampleRoundingMode():Void {
        var _operands:Slice<GoFloat64> = ((new Slice<GoFloat64>(((2.6 : GoFloat64)), ((2.5 : GoFloat64)), ((2.1 : GoFloat64)), ((-2.1 : GoFloat64)), ((-2.5 : GoFloat64)), ((-2.6 : GoFloat64))) : Slice<GoFloat64>));
        stdgo.fmt.Fmt.print(((("   x" : GoString))));
        {
            var _mode:RoundingMode = ((0 : GoUInt8));
            Go.cfor(_mode <= ((5 : GoUInt8)), _mode++, {
                stdgo.fmt.Fmt.printf(((("  %s" : GoString))), Go.toInterface(_mode));
            });
        };
        stdgo.fmt.Fmt.println();
        for (_0 => _f64 in _operands) {
            stdgo.fmt.Fmt.printf(((("%4g" : GoString))), Go.toInterface(_f64));
            {
                var _mode:RoundingMode = ((0 : GoUInt8));
                Go.cfor(_mode <= ((5 : GoUInt8)), _mode++, {
                    var _f:Ref<Float_> = new Float_().setPrec(((2 : GoUInt))).setMode(_mode).setFloat64(_f64);
                    stdgo.fmt.Fmt.printf(((("  %*g" : GoString))), Go.toInterface((((_mode.toString() : GoString)) != null ? ((_mode.toString() : GoString)).length : ((0 : GoInt)))), Go.toInterface(_f));
                });
            };
            stdgo.fmt.Fmt.println();
        };
    }
