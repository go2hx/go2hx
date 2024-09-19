package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testNext(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>(5, 5, ...[(0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8), (4 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _tmp = (new stdgo.Slice<stdgo.GoUInt8>((5 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (5 : stdgo.GoInt) : Bool), _i++, {
                {
                    var _j = (_i : stdgo.GoInt);
                    stdgo.Go.cfor((_j <= (5 : stdgo.GoInt) : Bool), _j++, {
                        {
                            var _k = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_k <= (6 : stdgo.GoInt) : Bool), _k++, {
                                var _buf = stdgo._internal.bytes.Bytes_newBuffer.newBuffer((_b.__slice__((0 : stdgo.GoInt), _j) : stdgo.Slice<stdgo.GoUInt8>));
                                var __tmp__ = _buf.read((_tmp.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, __0:stdgo.Error = __tmp__._1;
                                if (_n != (_i)) {
                                    _t.fatalf(("Read %d returned %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_n));
                                };
                                var _bb = _buf.next(_k);
                                var _want = (_k : stdgo.GoInt);
                                if ((_want > (_j - _i : stdgo.GoInt) : Bool)) {
                                    _want = (_j - _i : stdgo.GoInt);
                                };
                                if ((_bb.length) != (_want)) {
                                    _t.fatalf(("in %d,%d: len(Next(%d)) == %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k), stdgo.Go.toInterface((_bb.length)));
                                };
                                for (_l => _v in _bb) {
                                    if (_v != (((_l + _i : stdgo.GoInt) : stdgo.GoUInt8))) {
                                        _t.fatalf(("in %d,%d: Next(%d)[%d] = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(_v), stdgo.Go.toInterface((_l + _i : stdgo.GoInt)));
                                    };
                                };
                            });
                        };
                    });
                };
            });
        };
    }
