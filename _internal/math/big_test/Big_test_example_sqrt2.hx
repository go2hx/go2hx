package _internal.math.big_test;
function example_sqrt2():Void {
        {};
        var _steps = (stdgo._internal.math.Math_log2.log2((200 : stdgo.GoFloat64)) : stdgo.GoInt);
        var _two = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setPrec((200u32 : stdgo.GoUInt)).setInt64((2i64 : stdgo.GoInt64));
        var _half = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setPrec((200u32 : stdgo.GoUInt)).setFloat64((0.5 : stdgo.GoFloat64));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setPrec((200u32 : stdgo.GoUInt)).setInt64((1i64 : stdgo.GoInt64));
        var _t = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= _steps : Bool), _i++, {
                _t.quo(_two, _x);
                _t.add(_x, _t);
                _x.mul(_half, _t);
            });
        };
        stdgo._internal.fmt.Fmt_printf.printf(("sqrt(2) = %.50f\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        _t.mul(_x, _x);
        stdgo._internal.fmt.Fmt_printf.printf(("error = %e\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t.sub(_two, _t))));
    }
