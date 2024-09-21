package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testToTitle(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.bytes_test.Bytes_test_toTitleTests.toTitleTests) {
            {
                var _s = ((stdgo._internal.bytes.Bytes_toTitle.toTitle((_tt._in : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_s != (_tt._out)) {
                    _t.errorf(("ToTitle(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._out));
                };
            };
        };
    }
