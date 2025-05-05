package stdgo._internal.encoding.binary;
function testVarint(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/varint_test.go#L102"
        for (__8 => _x in stdgo._internal.encoding.binary.Binary__tests._tests) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/binary/varint_test.go#L103"
            stdgo._internal.encoding.binary.Binary__testvarint._testVarint(_t, _x);
            //"file:///home/runner/.go/go1.21.3/src/encoding/binary/varint_test.go#L104"
            stdgo._internal.encoding.binary.Binary__testvarint._testVarint(_t, -_x);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/varint_test.go#L106"
        {
            var _x = ((7i64 : stdgo.GoInt64) : stdgo.GoInt64);
            while (_x != ((0i64 : stdgo.GoInt64))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/varint_test.go#L107"
                stdgo._internal.encoding.binary.Binary__testvarint._testVarint(_t, _x);
//"file:///home/runner/.go/go1.21.3/src/encoding/binary/varint_test.go#L108"
                stdgo._internal.encoding.binary.Binary__testvarint._testVarint(_t, -_x);
                _x = (_x << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt64);
            };
        };
    }
