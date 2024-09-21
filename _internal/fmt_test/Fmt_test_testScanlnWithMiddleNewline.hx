package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testScanlnWithMiddleNewline(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _r = stdgo._internal.strings.Strings_newReader.newReader(("123\n456\n" : stdgo.GoString));
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _b = __1, _a = __0;
        var __tmp__ = stdgo._internal.fmt.Fmt_fscanln.fscanln(stdgo.Go.asInterface(_r), stdgo.Go.toInterface(stdgo.Go.pointer(_a)), stdgo.Go.toInterface(stdgo.Go.pointer(_b))), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("expected error scanning string with extra newline" : stdgo.GoString)));
        } else if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("newline" : stdgo.GoString))) {
            _t.errorf(("expected newline error scanning string with extra newline, got: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
