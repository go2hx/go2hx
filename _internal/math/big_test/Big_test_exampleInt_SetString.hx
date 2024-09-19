package _internal.math.big_test;
function exampleInt_SetString():Void {
        var _i = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        _i.setString(("644" : stdgo.GoString), (8 : stdgo.GoInt));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_i)));
    }
