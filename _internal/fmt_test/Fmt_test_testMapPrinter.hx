package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testMapPrinter(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _m0 = ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>);
        var _s = (stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_m0))?.__copy__() : stdgo.GoString);
        if (_s != (("map[]" : stdgo.GoString))) {
            _t.errorf(("empty map printed as %q not %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("map[]" : stdgo.GoString)));
        };
        var _m1 = ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            x.set((1 : stdgo.GoInt), ("one" : stdgo.GoString));
x.set((2 : stdgo.GoInt), ("two" : stdgo.GoString));
x.set((3 : stdgo.GoInt), ("three" : stdgo.GoString));
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>);
        var _a = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("1:one" : stdgo.GoString), ("2:two" : stdgo.GoString), ("3:three" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        _internal.fmt_test.Fmt_test__presentInMap._presentInMap(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_m1))?.__copy__(), _a, _t);
        _internal.fmt_test.Fmt_test__presentInMap._presentInMap(stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_m1))?.__copy__(), _a, _t);
        if (!stdgo._internal.strings.Strings_hasPrefix.hasPrefix(stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface((stdgo.Go.setRef(_m1) : stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoString>>)))?.__copy__(), ("&" : stdgo.GoString))) {
            _t.errorf(("no initial & for address of map" : stdgo.GoString));
        };
        _internal.fmt_test.Fmt_test__presentInMap._presentInMap(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_m1) : stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoString>>)))?.__copy__(), _a, _t);
        _internal.fmt_test.Fmt_test__presentInMap._presentInMap(stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface((stdgo.Go.setRef(_m1) : stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoString>>)))?.__copy__(), _a, _t);
    }
