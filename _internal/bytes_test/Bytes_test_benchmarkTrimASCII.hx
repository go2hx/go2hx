package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function benchmarkTrimASCII(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _cs = ("0123456789abcdef" : stdgo.GoString);
        {
            var _k = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_k <= (4096 : stdgo.GoInt) : Bool), _k = (_k << ((4i64 : stdgo.GoUInt64)) : stdgo.GoInt), {
                {
                    var _j = (1 : stdgo.GoInt);
                    stdgo.Go.cfor((_j <= (16 : stdgo.GoInt) : Bool), _j = (_j << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt), {
                        _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d:%d" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_j))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                            var _x = stdgo._internal.bytes.Bytes_repeat.repeat(((_cs.__slice__(0, _j) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _k);
                            {
                                var _i = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                                    stdgo._internal.bytes.Bytes_trim.trim((_x.__slice__(0, _k) : stdgo.Slice<stdgo.GoUInt8>), (_cs.__slice__(0, _j) : stdgo.GoString)?.__copy__());
                                });
                            };
                        });
                    });
                };
            });
        };
    }
