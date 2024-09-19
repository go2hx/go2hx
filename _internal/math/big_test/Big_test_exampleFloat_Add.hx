package _internal.math.big_test;
function exampleFloat_Add():Void {
        var __0:stdgo._internal.math.big.Big_Float_.Float_ = ({} : stdgo._internal.math.big.Big_Float_.Float_), __1:stdgo._internal.math.big.Big_Float_.Float_ = ({} : stdgo._internal.math.big.Big_Float_.Float_), __2:stdgo._internal.math.big.Big_Float_.Float_ = ({} : stdgo._internal.math.big.Big_Float_.Float_);
var _z = __2, _y = __1, _x = __0;
        _x.setInt64((1000i64 : stdgo.GoInt64));
        _y.setFloat64((2.718281828 : stdgo.GoFloat64));
        _z.setPrec((32u32 : stdgo.GoUInt));
        _z.add((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>), (stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>));
        stdgo._internal.fmt.Fmt_printf.printf(("x = %.10g (%s, prec = %d, acc = %s)\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>))), stdgo.Go.toInterface(_x.text((112 : stdgo.GoUInt8), (0 : stdgo.GoInt))), stdgo.Go.toInterface(_x.prec()), stdgo.Go.toInterface(stdgo.Go.asInterface(_x.acc())));
        stdgo._internal.fmt.Fmt_printf.printf(("y = %.10g (%s, prec = %d, acc = %s)\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>))), stdgo.Go.toInterface(_y.text((112 : stdgo.GoUInt8), (0 : stdgo.GoInt))), stdgo.Go.toInterface(_y.prec()), stdgo.Go.toInterface(stdgo.Go.asInterface(_y.acc())));
        stdgo._internal.fmt.Fmt_printf.printf(("z = %.10g (%s, prec = %d, acc = %s)\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_z) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>))), stdgo.Go.toInterface(_z.text((112 : stdgo.GoUInt8), (0 : stdgo.GoInt))), stdgo.Go.toInterface(_z.prec()), stdgo.Go.toInterface(stdgo.Go.asInterface(_z.acc())));
    }
