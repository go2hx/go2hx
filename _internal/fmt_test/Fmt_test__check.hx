package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function _check(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _got:stdgo.GoString, _want:stdgo.GoString):Void {
        if (_got != (_want)) {
            _t.error(stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("!=" : stdgo.GoString)), stdgo.Go.toInterface(_want));
        };
    }
