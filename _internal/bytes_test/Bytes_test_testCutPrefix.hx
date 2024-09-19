package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testCutPrefix(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.bytes_test.Bytes_test__cutPrefixTests._cutPrefixTests) {
            {
                var __tmp__ = stdgo._internal.bytes.Bytes_cutPrefix.cutPrefix((_tt._s : stdgo.Slice<stdgo.GoUInt8>), (_tt._sep : stdgo.Slice<stdgo.GoUInt8>)), _after:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _found:Bool = __tmp__._1;
                if ((((_after : stdgo.GoString) != _tt._after) || (_found != _tt._found) : Bool)) {
                    _t.errorf(("CutPrefix(%q, %q) = %q, %v, want %q, %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_tt._sep), stdgo.Go.toInterface(_after), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_tt._after), stdgo.Go.toInterface(_tt._found));
                };
            };
        };
    }
