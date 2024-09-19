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
function testTracebackGeneric(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (_internal.runtime_test.Runtime_test__flagQuick._flagQuick.value) {
            _t.skip(stdgo.Go.toInterface(("-quick" : stdgo.GoString)));
        };
        var _x:_internal.runtime_test.Runtime_test_T_testTracebackGenericTyp.T_testTracebackGenericTyp<stdgo.GoInt> = ({} : _internal.runtime_test.Runtime_test_T_testTracebackGenericTyp.T_testTracebackGenericTyp<stdgo.GoInt>);
        var _tests = (new stdgo.Slice<_internal.runtime_test.Runtime_test_T__struct_39.T__struct_39>(4, 4, ...[({ _fn : function(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt return _internal.runtime_test.Runtime_test__testTracebackGenericFn._testTracebackGenericFn((0 : stdgo.GoInt), _0), _expect : ("testTracebackGenericFn[...](" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_39.T__struct_39), ({ _fn : function(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
            return _internal.runtime_test.Runtime_test__testTracebackGenericFnInlined._testTracebackGenericFnInlined(_buf);
        }, _expect : ("testTracebackGenericFnInlined[...](" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_39.T__struct_39), ({ _fn : _x.m, _expect : ("testTracebackGenericTyp[...].M(" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_39.T__struct_39), ({ _fn : function(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
            return _x.inlined(_buf);
        }, _expect : ("testTracebackGenericTyp[...].Inlined(" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_39.T__struct_39)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _fn : null, _expect : ("" : stdgo.GoString) } : _internal.runtime_test.Runtime_test_T__struct_39.T__struct_39)])) : stdgo.Slice<_internal.runtime_test.Runtime_test_T__struct_39.T__struct_39>);
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1000, 1000, ...[for (i in 0 ... 1000) (0 : stdgo.GoUInt8)]);
        for (__6 => _test in _tests) {
            var _n = (_test._fn((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
            var _got = (_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>);
            if (!stdgo._internal.bytes.Bytes_contains.contains(_got, (_test._expect : stdgo.Slice<stdgo.GoUInt8>))) {
                _t.errorf(("traceback does not contain expected string: want %q, got\n%s" : stdgo.GoString), stdgo.Go.toInterface(_test._expect), stdgo.Go.toInterface(_got));
            };
            if (stdgo._internal.bytes.Bytes_contains.contains(_got, (("shape" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))) {
                _t.errorf(("traceback contains shape name: got\n%s" : stdgo.GoString), stdgo.Go.toInterface(_got));
            };
        };
    }
