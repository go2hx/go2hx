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
function benchmarkPallocBitsSummarize(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _patterns = (new stdgo.Slice<stdgo.GoUInt64>(14, 14, ...[
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
(4611756388245323776i64 : stdgo.GoUInt64),
(1152992149383195391i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
        for (__6 => _p in _patterns) {
            var _buf = (stdgo.Go.setRef(new stdgo._internal.runtime.Runtime_PallocBits.PallocBits(8, 8, ...[for (i in 0 ... 8) (0 : stdgo.GoUInt64)])) : stdgo.Ref<stdgo._internal.runtime.Runtime_PallocBits.PallocBits>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_buf.length) : Bool), _i++, {
                    _buf[(_i : stdgo.GoInt)] = _p;
                });
            };
            _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("Unpacked%02X" : stdgo.GoString), stdgo.Go.toInterface(_p))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                _internal.runtime_test.Runtime_test__checkPallocSum._checkPallocSum(stdgo.Go.asInterface(_b), _buf.summarize(), stdgo._internal.runtime.Runtime_summarizeSlow.summarizeSlow(_buf));
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _buf.summarize();
                    });
                };
            });
        };
    }
