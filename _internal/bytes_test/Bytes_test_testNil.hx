package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testNil(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = (null : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        if ((_b.string() : stdgo.GoString) != (("<nil>" : stdgo.GoString))) {
            _t.errorf(("expected <nil>; got %q" : stdgo.GoString), stdgo.Go.toInterface((_b.string() : stdgo.GoString)));
        };
    }
