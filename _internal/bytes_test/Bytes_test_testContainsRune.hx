package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testContainsRune(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _ct in _internal.bytes_test.Bytes_test_containsRuneTests.containsRuneTests) {
            if (stdgo._internal.bytes.Bytes_containsRune.containsRune(_ct._b, _ct._r) != (_ct._expected)) {
                _t.errorf(("ContainsRune(%q, %q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_ct._b), stdgo.Go.toInterface(_ct._r), stdgo.Go.toInterface(!_ct._expected), stdgo.Go.toInterface(_ct._expected));
            };
        };
    }
