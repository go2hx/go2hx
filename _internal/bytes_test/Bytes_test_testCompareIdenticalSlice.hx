package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testCompareIdenticalSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b:stdgo.Slice<stdgo.GoUInt8> = (("Hello Gophers!" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        if (stdgo._internal.bytes.Bytes_compare.compare(_b, _b) != ((0 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("b != b" : stdgo.GoString)));
        };
        if (stdgo._internal.bytes.Bytes_compare.compare(_b, (_b.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) != ((1 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("b > b[:1] failed" : stdgo.GoString)));
        };
    }
