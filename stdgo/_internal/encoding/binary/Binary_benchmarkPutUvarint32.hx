package stdgo._internal.encoding.binary;
function benchmarkPutUvarint32(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((5 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b.setBytes((4i64 : stdgo.GoInt64));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                {
                    var _j = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
                    stdgo.Go.cfor((_j < (5u32 : stdgo.GoUInt) : Bool), _j++, {
                        stdgo._internal.encoding.binary.Binary_putUvarint.putUvarint(_buf, ((1i64 : stdgo.GoUInt64) << ((_j * (7u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64));
                    });
                };
            });
        };
    }
