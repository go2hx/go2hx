package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function benchmarkMemmoveUnalignedSrcDst(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        for (__6 => _n in (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(16 : stdgo.GoInt), (64 : stdgo.GoInt), (256 : stdgo.GoInt), (4096 : stdgo.GoInt), (65536 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((((_n + (8 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var _x = (_buf.__slice__(0, ((_buf.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            var _y = (_buf.__slice__(((_buf.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            for (__7 => _off in (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(0 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt), (7 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
                _b.run(stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(("f_" : stdgo.GoString)), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_off))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    _b.setBytes((_n : stdgo.GoInt64));
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            stdgo.Go.copySlice((_x.__slice__(_off, (_n + _off : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_y.__slice__(_off, (_n + _off : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                        });
                    };
                });
                _b.run(stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(("b_" : stdgo.GoString)), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_off))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    _b.setBytes((_n : stdgo.GoInt64));
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            stdgo.Go.copySlice((_y.__slice__(_off, (_n + _off : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_x.__slice__(_off, (_n + _off : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                        });
                    };
                });
            };
        };
    }
