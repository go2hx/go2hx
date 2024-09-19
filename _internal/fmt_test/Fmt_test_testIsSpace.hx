package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testIsSpace(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
            stdgo.Go.cfor((_i <= (1114111 : stdgo.GoInt32) : Bool), _i++, {
                if (stdgo._internal.fmt.Fmt_isSpace.isSpace(_i) != (stdgo._internal.unicode.Unicode_isSpace.isSpace(_i))) {
                    _t.errorf(("isSpace(%U) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_isSpace.isSpace(_i)), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode_isSpace.isSpace(_i)));
                };
            });
        };
    }
