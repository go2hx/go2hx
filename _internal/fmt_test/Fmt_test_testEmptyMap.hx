package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testEmptyMap(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _m:stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        var _s = (stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_m))?.__copy__() : stdgo.GoString);
        if (_s != (("map[]" : stdgo.GoString))) {
            _t.errorf(("nil map printed as %q not %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("map[]" : stdgo.GoString)));
        };
        _m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        _s = stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_m))?.__copy__();
        if (_s != (("map[]" : stdgo.GoString))) {
            _t.errorf(("empty map printed as %q not %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("map[]" : stdgo.GoString)));
        };
    }
