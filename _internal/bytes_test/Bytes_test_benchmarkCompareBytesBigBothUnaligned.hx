package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function benchmarkCompareBytesBigBothUnaligned(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (8 : stdgo.GoInt) : Bool), _i++, {
                _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("offset=%d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    _internal.bytes_test.Bytes_test__benchmarkCompareBytesBigBothUnaligned._benchmarkCompareBytesBigBothUnaligned(_b, _i);
                });
            });
        };
    }
