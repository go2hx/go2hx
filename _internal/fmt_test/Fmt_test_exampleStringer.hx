package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function exampleStringer():Void {
        var _a = ({ name : ("Gopher" : stdgo.GoString), age : (2u32 : stdgo.GoUInt) } : _internal.fmt_test.Fmt_test_Animal.Animal);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_a)));
    }
