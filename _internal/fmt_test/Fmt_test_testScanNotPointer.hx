package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testScanNotPointer(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _r = stdgo._internal.strings.Strings_newReader.newReader(("1" : stdgo.GoString));
        var _a:stdgo.GoInt = (0 : stdgo.GoInt);
        var __tmp__ = stdgo._internal.fmt.Fmt_fscan.fscan(stdgo.Go.asInterface(_r), stdgo.Go.toInterface(_a)), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("expected error scanning non-pointer" : stdgo.GoString)));
        } else if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("pointer" : stdgo.GoString))) {
            _t.errorf(("expected pointer error scanning non-pointer, got: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
