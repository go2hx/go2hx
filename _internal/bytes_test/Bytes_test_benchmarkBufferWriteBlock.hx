package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function benchmarkBufferWriteBlock(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _block = (new stdgo.Slice<stdgo.GoUInt8>((1024 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (__0 => _n in (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(4096 : stdgo.GoInt), (65536 : stdgo.GoInt), (1048576 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("N%d" : stdgo.GoString), stdgo.Go.toInterface(_n))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                _b.reportAllocs();
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        var _bb:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
                        while ((_bb.len() < _n : Bool)) {
                            _bb.write(_block);
                        };
                    });
                };
            });
        };
    }
