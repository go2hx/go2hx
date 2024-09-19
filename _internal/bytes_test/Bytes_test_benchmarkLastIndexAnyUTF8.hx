package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function benchmarkLastIndexAnyUTF8(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _x = stdgo._internal.bytes.Bytes_repeat.repeat((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(35 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (2048 : stdgo.GoInt));
        var _cs = ("你好世界, hello world. 你好世界, hello world. 你好世界, hello world." : stdgo.GoString);
        {
            var _k = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_k <= (2048 : stdgo.GoInt) : Bool), _k = (_k << ((4i64 : stdgo.GoUInt64)) : stdgo.GoInt), {
                {
                    var _j = (1 : stdgo.GoInt);
                    stdgo.Go.cfor((_j <= (64 : stdgo.GoInt) : Bool), _j = (_j << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt), {
                        _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d:%d" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_j))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                            {
                                var _i = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                                    stdgo._internal.bytes.Bytes_lastIndexAny.lastIndexAny((_x.__slice__(0, _k) : stdgo.Slice<stdgo.GoUInt8>), (_cs.__slice__(0, _j) : stdgo.GoString)?.__copy__());
                                });
                            };
                        });
                    });
                };
            });
        };
    }
