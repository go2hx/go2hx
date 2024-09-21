package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testToValidUTF8(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tc in _internal.bytes_test.Bytes_test__toValidUTF8Tests._toValidUTF8Tests) {
            var _got = stdgo._internal.bytes.Bytes_toValidUTF8.toValidUTF8((_tc._in : stdgo.Slice<stdgo.GoUInt8>), (_tc._repl : stdgo.Slice<stdgo.GoUInt8>));
            if (!stdgo._internal.bytes.Bytes_equal.equal(_got, (_tc._out : stdgo.Slice<stdgo.GoUInt8>))) {
                _t.errorf(("ToValidUTF8(%q, %q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._repl), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tc._out));
            };
        };
    }
