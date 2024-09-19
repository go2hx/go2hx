package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testReplace(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.strings_test.Strings_test_replaceTests.replaceTests) {
            {
                var _s = (stdgo._internal.strings.Strings_replace.replace(_tt._in?.__copy__(), _tt._old?.__copy__(), _tt._new?.__copy__(), _tt._n)?.__copy__() : stdgo.GoString);
                if (_s != (_tt._out)) {
                    _t.errorf(("Replace(%q, %q, %q, %d) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_tt._old), stdgo.Go.toInterface(_tt._new), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._out));
                };
            };
            if (_tt._n == ((-1 : stdgo.GoInt))) {
                var _s = (stdgo._internal.strings.Strings_replaceAll.replaceAll(_tt._in?.__copy__(), _tt._old?.__copy__(), _tt._new?.__copy__())?.__copy__() : stdgo.GoString);
                if (_s != (_tt._out)) {
                    _t.errorf(("ReplaceAll(%q, %q, %q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_tt._old), stdgo.Go.toInterface(_tt._new), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._out));
                };
            };
        };
    }
