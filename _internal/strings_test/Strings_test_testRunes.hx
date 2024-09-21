package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testRunes(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.strings_test.Strings_test_runesTests.runesTests) {
            var _a = (_tt._in : stdgo.Slice<stdgo.GoInt32>);
            if (!_internal.strings_test.Strings_test__runesEqual._runesEqual(_a, _tt._out)) {
                _t.errorf(("[]rune(%q) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tt._out));
                continue;
            };
            if (!_tt._lossy) {
                var _s = ((_a : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_s != (_tt._in)) {
                    _t.errorf(("string([]rune(%q)) = %x; want %x" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._in));
                };
            };
        };
    }
