package stdgo._internal.encoding.binary;
function benchmarkPutUint64(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.setBytes((8i64 : stdgo.GoInt64));
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _b.n : Bool)) {
                stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.putUint64((stdgo._internal.encoding.binary.Binary__putbuf._putbuf.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_i : stdgo.GoUInt64));
                _i++;
            };
        };
    }
