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
function benchmarkFindBitRange64(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _patterns = (new stdgo.Slice<stdgo.GoUInt64>(13, 13, ...[
(0i64 : stdgo.GoUInt64),
(-1i64 : stdgo.GoUInt64),
(170i64 : stdgo.GoUInt64),
(-6148914691236517206i64 : stdgo.GoUInt64),
(-9223372033991464278i64 : stdgo.GoUInt64),
(-6148914694099828735i64 : stdgo.GoUInt64),
(-4919131752989213765i64 : stdgo.GoUInt64),
(-9223372033705133125i64 : stdgo.GoUInt64),
(-4919131756138856447i64 : stdgo.GoUInt64),
(-3689348814741910324i64 : stdgo.GoUInt64),
(4919131752989213764i64 : stdgo.GoUInt64),
(4629771061636907072i64 : stdgo.GoUInt64),
(4611756388245323776i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        var _sizes = (new stdgo.Slice<stdgo.GoUInt>(3, 3, ...[(2u32 : stdgo.GoUInt), (8u32 : stdgo.GoUInt), (32u32 : stdgo.GoUInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>);
        for (__6 => _pattern in _patterns) {
            for (__7 => _size in _sizes) {
                _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("Pattern%02XSize%d" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_size))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                            stdgo._internal.runtime.Runtime_findBitRange64.findBitRange64(_pattern, _size);
                        });
                    };
                });
            };
        };
    }
