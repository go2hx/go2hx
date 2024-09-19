package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function benchmarkRepeatLarge(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _s = stdgo._internal.bytes.Bytes_repeat.repeat((("@" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (8192 : stdgo.GoInt));
        {
            var _j = (8 : stdgo.GoInt);
            stdgo.Go.cfor((_j <= (30 : stdgo.GoInt) : Bool), _j++, {
                for (__0 => _k in (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (16 : stdgo.GoInt), (4097 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
                    var _s = (_s.__slice__(0, _k) : stdgo.Slice<stdgo.GoUInt8>);
                    var _n = ((((1 : stdgo.GoInt) << _j : stdgo.GoInt)) / _k : stdgo.GoInt);
                    if (_n == ((0 : stdgo.GoInt))) {
                        continue;
                    };
                    _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d/%d" : stdgo.GoString), stdgo.Go.toInterface(((1 : stdgo.GoInt) << _j : stdgo.GoInt)), stdgo.Go.toInterface(_k))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                                stdgo._internal.bytes.Bytes_repeat.repeat(_s, _n);
                            });
                        };
                        _b.setBytes(((_n * (_s.length) : stdgo.GoInt) : stdgo.GoInt64));
                    });
                };
            });
        };
    }
