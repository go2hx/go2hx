package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function benchmarkBufferFullSmallReads(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((1024 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _b:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
                _b.write(_buf);
                while (((_b.len() + (20 : stdgo.GoInt) : stdgo.GoInt) < _b.cap() : Bool)) {
                    _b.write((_buf.__slice__(0, (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                };
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (5120 : stdgo.GoInt) : Bool), _i++, {
                        _b.read((_buf.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                        _b.write((_buf.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    });
                };
            });
        };
    }
