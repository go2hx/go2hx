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
function testMemHash64Equality(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (stdgo._internal.runtime.Runtime_useAeshash.useAeshash.value) {
            _t.skip(stdgo.Go.toInterface(("skipping since AES hash implementation is used" : stdgo.GoString)));
        };
        var _b:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8, ...[for (i in 0 ... 8) (0 : stdgo.GoUInt8)]);
        var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newSource.newSource((1234i64 : stdgo.GoInt64)));
        var _seed = (_r.uint64() : stdgo.GoUIntptr);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                _internal.runtime_test.Runtime_test__randBytes._randBytes(_r, (_b.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                var _got = (stdgo._internal.runtime.Runtime_memHash64.memHash64((stdgo.Go.toInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>)) : stdgo._internal.unsafe.Unsafe.UnsafePointer), _seed) : stdgo.GoUIntptr);
                var _want = (stdgo._internal.runtime.Runtime_memHash.memHash((stdgo.Go.toInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>)) : stdgo._internal.unsafe.Unsafe.UnsafePointer), _seed, (8 : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                if (_got != (_want)) {
                    _t.errorf(("MemHash64(%x, %v) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_seed), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            });
        };
    }
