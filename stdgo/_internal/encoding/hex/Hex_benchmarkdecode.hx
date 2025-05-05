package stdgo._internal.encoding.hex;
function benchmarkDecode(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L253"
        for (__0 => _size in (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(256 : stdgo.GoInt), (1024 : stdgo.GoInt), (4096 : stdgo.GoInt), (16384 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            var _src = stdgo._internal.bytes.Bytes_repeat.repeat((new stdgo.Slice<stdgo.GoUInt8>(8, 8, ...[(50 : stdgo.GoUInt8), (98 : stdgo.GoUInt8), (55 : stdgo.GoUInt8), (52 : stdgo.GoUInt8), (52 : stdgo.GoUInt8), (102 : stdgo.GoUInt8), (97 : stdgo.GoUInt8), (97 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (_size / (8 : stdgo.GoInt) : stdgo.GoInt));
            stdgo._internal.encoding.hex.Hex__sink._sink = (new stdgo.Slice<stdgo.GoUInt8>((_size / (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L257"
            _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_size))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L258"
                _b.setBytes((_size : stdgo.GoInt64));
                //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L259"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L260"
                        stdgo._internal.encoding.hex.Hex_decode.decode(stdgo._internal.encoding.hex.Hex__sink._sink, _src);
                        _i++;
                    };
                };
            });
        };
    }
