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
function testSmhasherSanity(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newSource.newSource((1234i64 : stdgo.GoInt64)));
        {};
        {};
        {};
        {};
        {
            var _k = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_k < (10 : stdgo.GoInt) : Bool), _k++, {
                {
                    var _n = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_n < (128 : stdgo.GoInt) : Bool), _n++, {
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < (16 : stdgo.GoInt) : Bool), _i++, {
                                var _b:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(176, 176, ...[for (i in 0 ... 176) (0 : stdgo.GoUInt8)]);
                                var _c:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(176, 176, ...[for (i in 0 ... 176) (0 : stdgo.GoUInt8)]);
                                _internal.runtime_test.Runtime_test__randBytes._randBytes(_r, (_b.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                                _internal.runtime_test.Runtime_test__randBytes._randBytes(_r, (_c.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                                stdgo.Go.copySlice((_c.__slice__(((16 : stdgo.GoInt) + _i : stdgo.GoInt), (((16 : stdgo.GoInt) + _i : stdgo.GoInt) + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_b.__slice__((16 : stdgo.GoInt), ((16 : stdgo.GoInt) + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                                if (stdgo._internal.runtime.Runtime_bytesHash.bytesHash((_b.__slice__((16 : stdgo.GoInt), ((16 : stdgo.GoInt) + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (0 : stdgo.GoUIntptr)) != (stdgo._internal.runtime.Runtime_bytesHash.bytesHash((_c.__slice__(((16 : stdgo.GoInt) + _i : stdgo.GoInt), (((16 : stdgo.GoInt) + _i : stdgo.GoInt) + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (0 : stdgo.GoUIntptr)))) {
                                    _t.errorf(("hash depends on bytes outside key" : stdgo.GoString));
                                };
                            });
                        };
                    });
                };
            });
        };
    }
