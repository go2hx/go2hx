package stdgo._internal.encoding.hex;
function benchmarkDump(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L267"
        for (__0 => _size in (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(256 : stdgo.GoInt), (1024 : stdgo.GoInt), (4096 : stdgo.GoInt), (16384 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            var _src = stdgo._internal.bytes.Bytes_repeat.repeat((new stdgo.Slice<stdgo.GoUInt8>(8, 8, ...[(2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8), (5 : stdgo.GoUInt8), (7 : stdgo.GoUInt8), (9 : stdgo.GoUInt8), (11 : stdgo.GoUInt8), (13 : stdgo.GoUInt8), (17 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (_size / (8 : stdgo.GoInt) : stdgo.GoInt));
            //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L270"
            _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_size))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L271"
                _b.setBytes((_size : stdgo.GoInt64));
                //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L272"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L273"
                        stdgo._internal.encoding.hex.Hex_dump.dump(_src);
                        _i++;
                    };
                };
            });
        };
    }
