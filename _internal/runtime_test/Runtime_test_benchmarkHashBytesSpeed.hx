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
function benchmarkHashBytesSpeed(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _chunks:stdgo.GoArray<_internal.runtime_test.Runtime_test_T_chunk.T_chunk> = new stdgo.GoArray<_internal.runtime_test.Runtime_test_T_chunk.T_chunk>(10, 10, ...[for (i in 0 ... 10) new _internal.runtime_test.Runtime_test_T_chunk.T_chunk(17, 17, ...[for (i in 0 ... 17) (0 : stdgo.GoUInt8)])]);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                _chunks[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)] = (_i : stdgo.GoUInt8);
            });
        };
        var _m = ({
            final x = new stdgo.GoMap.GoObjectMap<_internal.runtime_test.Runtime_test_T_chunk.T_chunk, stdgo.GoInt>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("_internal.runtime_test.Runtime_test_T_chunk.T_chunk", [], stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) }, 17), false, { get : () -> null }));
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            cast x;
        } : stdgo.GoMap<_internal.runtime_test.Runtime_test_T_chunk.T_chunk, stdgo.GoInt>);
        for (_i => _c in _chunks) {
            _m[_c] = _i;
        };
        var _idx = (0 : stdgo.GoInt);
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                if ((_m[_chunks[(_idx : stdgo.GoInt)]] ?? (0 : stdgo.GoInt)) != (_idx)) {
                    _b.error(stdgo.Go.toInterface(("bad map entry for chunk" : stdgo.GoString)));
                };
                _idx++;
                if (_idx == ((10 : stdgo.GoInt))) {
                    _idx = (0 : stdgo.GoInt);
                };
            });
        };
    }
