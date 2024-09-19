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
function benchmarkMemclr(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        for (__6 => _n in (new stdgo.Slice<stdgo.GoInt>(6, 6, ...[(5 : stdgo.GoInt), (16 : stdgo.GoInt), (64 : stdgo.GoInt), (256 : stdgo.GoInt), (4096 : stdgo.GoInt), (65536 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            var _x = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            _b.run(stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_n))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                _b.setBytes((_n : stdgo.GoInt64));
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        stdgo._internal.runtime.Runtime_memclrBytes.memclrBytes(_x);
                    });
                };
            });
        };
        for (__7 => _m in (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(1 : stdgo.GoInt), (4 : stdgo.GoInt), (8 : stdgo.GoInt), (16 : stdgo.GoInt), (64 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            var _x = (new stdgo.Slice<stdgo.GoUInt8>((_m << (20i64 : stdgo.GoUInt64) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            _b.run(stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_m), stdgo.Go.toInterface(("M" : stdgo.GoString)))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                _b.setBytes(((_m << (20i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt64));
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        stdgo._internal.runtime.Runtime_memclrBytes.memclrBytes(_x);
                    });
                };
            });
        };
    }
