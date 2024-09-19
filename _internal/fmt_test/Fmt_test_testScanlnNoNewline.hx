package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testScanlnNoNewline(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _a:stdgo.GoInt = (0 : stdgo.GoInt);
        var __tmp__ = stdgo._internal.fmt.Fmt_sscanln.sscanln(("1 x\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_a))), __3:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("expected error scanning string missing newline" : stdgo.GoString)));
        } else if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("newline" : stdgo.GoString))) {
            _t.errorf(("expected newline error scanning string missing newline, got: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
