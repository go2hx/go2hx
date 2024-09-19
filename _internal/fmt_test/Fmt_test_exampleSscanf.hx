package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function exampleSscanf():Void {
        var _name:stdgo.GoString = ("" : stdgo.GoString);
        var _age:stdgo.GoInt = (0 : stdgo.GoInt);
        var __tmp__ = stdgo._internal.fmt.Fmt_sscanf.sscanf(("Kim is 22 years old" : stdgo.GoString), ("%s is %d years old" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_name)), stdgo.Go.toInterface(stdgo.Go.pointer(_age))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        stdgo._internal.fmt.Fmt_printf.printf(("%d: %s, %d\n" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_age));
    }
