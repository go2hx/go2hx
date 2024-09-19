package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function benchmarkIndexPeriodic(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _key = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(1 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (__0 => _skip in (new stdgo.GoArray<stdgo.GoInt>(6, 6, ...[(2 : stdgo.GoInt), (4 : stdgo.GoInt), (8 : stdgo.GoInt), (16 : stdgo.GoInt), (32 : stdgo.GoInt), (64 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)) {
            _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("IndexPeriodic%d" : stdgo.GoString), stdgo.Go.toInterface(_skip))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _buf = (new stdgo.Slice<stdgo.GoUInt8>((65536 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (_buf.length) : Bool), _i = (_i + (_skip) : stdgo.GoInt), {
                        _buf[(_i : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
                    });
                };
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        stdgo._internal.bytes.Bytes_index.index(_buf, _key);
                    });
                };
            });
        };
    }
