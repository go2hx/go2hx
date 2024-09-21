package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testFmtInterface(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _i1:stdgo.AnyInterface = (null : stdgo.AnyInterface);
        _i1 = stdgo.Go.toInterface(("abc" : stdgo.GoString));
        var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s" : stdgo.GoString), _i1)?.__copy__() : stdgo.GoString);
        if (_s != (("abc" : stdgo.GoString))) {
            _t.errorf(("Sprintf(\"%%s\", empty(\"abc\")) = %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("abc" : stdgo.GoString)));
        };
    }
