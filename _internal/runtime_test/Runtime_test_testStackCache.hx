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
function testStackCache(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (4 : stdgo.GoInt) : Bool), _i++, {
                var _reqchans:stdgo.GoArray<stdgo.Chan<stdgo.GoInt>> = new stdgo.GoArray<stdgo.Chan<stdgo.GoInt>>(200, 200, ...[for (i in 0 ... 200) (null : stdgo.Chan<stdgo.GoInt>)]);
                var _done = (new stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>(0, () -> ({} : _internal.runtime_test.Runtime_test_T_struct0.T_struct0)) : stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>);
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (200 : stdgo.GoInt) : Bool), _j++, {
                        _reqchans[(_j : stdgo.GoInt)] = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
                        stdgo.Go.routine(() -> _internal.runtime_test.Runtime_test__growing._growing(_reqchans[(_j : stdgo.GoInt)], _done));
                    });
                };
                {
                    var _s = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_s < (5 : stdgo.GoInt) : Bool), _s++, {
                        {
                            var _j = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_j < (200 : stdgo.GoInt) : Bool), _j++, {
                                _reqchans[(_j : stdgo.GoInt)].__send__(((1 : stdgo.GoInt) << (_s : stdgo.GoUInt) : stdgo.GoInt));
                            });
                        };
                        {
                            var _j = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_j < (200 : stdgo.GoInt) : Bool), _j++, {
                                _done.__get__();
                            });
                        };
                    });
                };
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (200 : stdgo.GoInt) : Bool), _j++, {
                        if (_reqchans[(_j : stdgo.GoInt)] != null) _reqchans[(_j : stdgo.GoInt)].__close__();
                    });
                };
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (200 : stdgo.GoInt) : Bool), _j++, {
                        _done.__get__();
                    });
                };
            });
        };
    }
