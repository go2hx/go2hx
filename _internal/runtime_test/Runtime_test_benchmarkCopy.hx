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
function benchmarkCopy(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        for (__6 => _l in (new stdgo.Slice<stdgo.GoInt>(9, 9, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (4 : stdgo.GoInt), (8 : stdgo.GoInt), (12 : stdgo.GoInt), (16 : stdgo.GoInt), (32 : stdgo.GoInt), (128 : stdgo.GoInt), (1024 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((4096 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            _b.run(stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_l), stdgo.Go.toInterface(("Byte" : stdgo.GoString)))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _s = (new stdgo.Slice<stdgo.GoUInt8>((_l : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                var _n:stdgo.GoInt = (0 : stdgo.GoInt);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _n = stdgo.Go.copySlice(_buf, _s);
                    });
                };
                _b.setBytes((_n : stdgo.GoInt64));
            });
            _b.run(stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_l), stdgo.Go.toInterface(("String" : stdgo.GoString)))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                var _s = (((new stdgo.Slice<stdgo.GoUInt8>((_l : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                var _n:stdgo.GoInt = (0 : stdgo.GoInt);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _n = stdgo.Go.copySlice(_buf, _s);
                    });
                };
                _b.setBytes((_n : stdgo.GoInt64));
            });
        };
    }
