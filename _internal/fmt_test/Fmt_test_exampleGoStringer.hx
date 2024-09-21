package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function exampleGoStringer():Void {
        var _p1 = ({ name : ("Warren" : stdgo.GoString), age : (31u32 : stdgo.GoUInt), addr : (stdgo.Go.setRef(({ city : ("Denver" : stdgo.GoString), state : ("CO" : stdgo.GoString), country : ("U.S.A." : stdgo.GoString) } : _internal.fmt_test.Fmt_test_Address.Address)) : stdgo.Ref<_internal.fmt_test.Fmt_test_Address.Address>) } : _internal.fmt_test.Fmt_test_Person.Person);
        stdgo._internal.fmt.Fmt_printf.printf(("%#v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_p1)));
        var _p2 = ({ name : ("Theia" : stdgo.GoString), age : (4u32 : stdgo.GoUInt) } : _internal.fmt_test.Fmt_test_Person.Person);
        stdgo._internal.fmt.Fmt_printf.printf(("%#v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_p2)));
    }
