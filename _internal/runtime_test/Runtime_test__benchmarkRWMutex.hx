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
function _benchmarkRWMutex(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _localWork:stdgo.GoInt, _writeRatio:stdgo.GoInt):Void {
        var _rwm:stdgo._internal.runtime.Runtime_RWMutex.RWMutex = ({} : stdgo._internal.runtime.Runtime_RWMutex.RWMutex);
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            var _foo = (0 : stdgo.GoInt);
            while (_pb.next()) {
                _foo++;
                if ((_foo % _writeRatio : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                    _rwm.lock();
                    _rwm.unlock();
                } else {
                    _rwm.rlock();
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor(_i != (_localWork), _i = (_i + ((1 : stdgo.GoInt)) : stdgo.GoInt), {
                            _foo = (_foo * ((2 : stdgo.GoInt)) : stdgo.GoInt);
                            _foo = (_foo / ((2 : stdgo.GoInt)) : stdgo.GoInt);
                        });
                    };
                    _rwm.runlock();
                };
            };
            var __blank__ = _foo;
        });
    }
