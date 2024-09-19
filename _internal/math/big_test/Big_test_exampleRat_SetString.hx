package _internal.math.big_test;
function exampleRat_SetString():Void {
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        _r.setString(("355/113" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_r.floatString((3 : stdgo.GoInt))));
    }
