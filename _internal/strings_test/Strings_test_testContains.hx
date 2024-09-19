package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testContains(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _ct in _internal.strings_test.Strings_test_containsTests.containsTests) {
            if (stdgo._internal.strings.Strings_contains.contains(_ct._str?.__copy__(), _ct._substr?.__copy__()) != (_ct._expected)) {
                _t.errorf(("Contains(%s, %s) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_ct._str), stdgo.Go.toInterface(_ct._substr), stdgo.Go.toInterface(!_ct._expected), stdgo.Go.toInterface(_ct._expected));
            };
        };
    }
