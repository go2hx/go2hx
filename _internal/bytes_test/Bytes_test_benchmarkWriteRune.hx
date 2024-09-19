package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function benchmarkWriteRune(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {};
        {};
        _b.setBytes((((4096 : stdgo.GoInt) * stdgo._internal.unicode.utf8.Utf8_runeLen.runeLen((9786 : stdgo.GoInt32)) : stdgo.GoInt) : stdgo.GoInt64));
        var _buf = stdgo._internal.bytes.Bytes_newBuffer.newBuffer((new stdgo.Slice<stdgo.GoUInt8>((16384 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _buf.reset();
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (4096 : stdgo.GoInt) : Bool), _i++, {
                        _buf.writeRune((9786 : stdgo.GoInt32));
                    });
                };
            });
        };
    }
