package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testEOFAtEndOfInput(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _j = __1, _i = __0;
        var __tmp__ = stdgo._internal.fmt.Fmt_sscanf.sscanf(("23" : stdgo.GoString), ("%d %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_i)), stdgo.Go.toInterface(stdgo.Go.pointer(_j))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != (1 : stdgo.GoInt)) || (_i != (23 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("Sscanf expected one value of 23; got %d %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_i));
        };
        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
            _t.errorf(("Sscanf expected EOF; got %q" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_sscan.sscan(("234" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_i)), stdgo.Go.toInterface(stdgo.Go.pointer(_j)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_n != (1 : stdgo.GoInt)) || (_i != (234 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("Sscan expected one value of 234; got %d %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_i));
        };
        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
            _t.errorf(("Sscan expected EOF; got %q" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_sscan.sscan(("234 " : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_i)), stdgo.Go.toInterface(stdgo.Go.pointer(_j)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_n != (1 : stdgo.GoInt)) || (_i != (234 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("Sscan expected one value of 234; got %d %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_i));
        };
        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
            _t.errorf(("Sscan expected EOF; got %q" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
