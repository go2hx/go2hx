package _internal.math.big_test;
function exampleInt_Scan():Void {
        var _i = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var __tmp__ = stdgo._internal.fmt.Fmt_sscan.sscan(("18446744073709551617" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_i))), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log_println.println(stdgo.Go.toInterface(("error scanning value:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        } else {
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_i)));
        };
    }
