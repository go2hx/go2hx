package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testContainsRune(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _ct in _internal.strings_test.Strings_test_containsRuneTests.containsRuneTests) {
            if (stdgo._internal.strings.Strings_containsRune.containsRune(_ct._str?.__copy__(), _ct._r) != (_ct._expected)) {
                _t.errorf(("ContainsRune(%q, %q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_ct._str), stdgo.Go.toInterface(_ct._r), stdgo.Go.toInterface(!_ct._expected), stdgo.Go.toInterface(_ct._expected));
            };
        };
    }
