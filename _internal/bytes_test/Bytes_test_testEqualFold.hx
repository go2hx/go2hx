package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testEqualFold(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.bytes_test.Bytes_test_equalFoldTests.equalFoldTests) {
            {
                var _out = (stdgo._internal.bytes.Bytes_equalFold.equalFold((_tt._s : stdgo.Slice<stdgo.GoUInt8>), (_tt._t : stdgo.Slice<stdgo.GoUInt8>)) : Bool);
                if (_out != (_tt._out)) {
                    _t.errorf(("EqualFold(%#q, %#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._t), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out));
                };
            };
            {
                var _out = (stdgo._internal.bytes.Bytes_equalFold.equalFold((_tt._t : stdgo.Slice<stdgo.GoUInt8>), (_tt._s : stdgo.Slice<stdgo.GoUInt8>)) : Bool);
                if (_out != (_tt._out)) {
                    _t.errorf(("EqualFold(%#q, %#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._t), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out));
                };
            };
        };
    }
