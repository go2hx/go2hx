package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testIndexByte(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.strings_test.Strings_test__indexTests._indexTests) {
            if ((_tt._sep.length) != ((1 : stdgo.GoInt))) {
                continue;
            };
            var _pos = (stdgo._internal.strings.Strings_indexByte.indexByte(_tt._s?.__copy__(), _tt._sep[(0 : stdgo.GoInt)]) : stdgo.GoInt);
            if (_pos != (_tt._out)) {
                _t.errorf(("IndexByte(%q, %q) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_pos), stdgo.Go.toInterface(_tt._out));
            };
        };
    }
