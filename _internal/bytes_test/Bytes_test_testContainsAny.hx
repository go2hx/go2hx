package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testContainsAny(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _ct in _internal.bytes_test.Bytes_test_containsAnyTests.containsAnyTests) {
            if (stdgo._internal.bytes.Bytes_containsAny.containsAny(_ct._b, _ct._substr?.__copy__()) != (_ct._expected)) {
                _t.errorf(("ContainsAny(%s, %s) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_ct._b), stdgo.Go.toInterface(_ct._substr), stdgo.Go.toInterface(!_ct._expected), stdgo.Go.toInterface(_ct._expected));
            };
        };
    }
