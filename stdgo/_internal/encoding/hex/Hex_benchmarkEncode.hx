package stdgo._internal.encoding.hex;
function benchmarkEncode(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        for (__0 => _size in (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(256 : stdgo.GoInt), (1024 : stdgo.GoInt), (4096 : stdgo.GoInt), (16384 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            var _src = stdgo._internal.bytes.Bytes_repeat.repeat((new stdgo.Slice<stdgo.GoUInt8>(8, 8, ...[(2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8), (5 : stdgo.GoUInt8), (7 : stdgo.GoUInt8), (9 : stdgo.GoUInt8), (11 : stdgo.GoUInt8), (13 : stdgo.GoUInt8), (17 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (_size / (8 : stdgo.GoInt) : stdgo.GoInt));
            stdgo._internal.encoding.hex.Hex__sink._sink = (new stdgo.Slice<stdgo.GoUInt8>(((2 : stdgo.GoInt) * _size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_size))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                _b.setBytes((_size : stdgo.GoInt64));
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        stdgo._internal.encoding.hex.Hex_encode.encode(stdgo._internal.encoding.hex.Hex__sink._sink, _src);
                    });
                };
            });
        };
    }