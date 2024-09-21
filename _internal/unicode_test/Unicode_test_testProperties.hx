package _internal.unicode_test;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
function testProperties(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _notTested = ({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>);
        for (_k => _ in stdgo._internal.unicode.Unicode_properties.properties) {
            _notTested[_k] = true;
        };
        for (__0 => _test in _internal.unicode_test.Unicode_test__inPropTest._inPropTest) {
            {
                var __tmp__ = (stdgo._internal.unicode.Unicode_properties.properties != null && stdgo._internal.unicode.Unicode_properties.properties.exists(_test._script?.__copy__()) ? { _0 : stdgo._internal.unicode.Unicode_properties.properties[_test._script?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>), _1 : false }), __1:stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    _t.fatal(stdgo.Go.toInterface(_test._script), stdgo.Go.toInterface(("not a known prop" : stdgo.GoString)));
                };
            };
            if (!stdgo._internal.unicode.Unicode_is_.is_((stdgo._internal.unicode.Unicode_properties.properties[_test._script] ?? (null : stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>)), _test._rune)) {
                _t.errorf(("IsCategory(%U, %s) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_test._rune), stdgo.Go.toInterface(_test._script));
            };
            if (_notTested != null) _notTested.remove(_test._script);
        };
        for (_k => _ in _notTested) {
            _t.error(stdgo.Go.toInterface(("property not tested:" : stdgo.GoString)), stdgo.Go.toInterface(_k));
        };
    }
