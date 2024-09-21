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
function testGcMapIndirection(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent((1 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent(_a0));
            };
            stdgo._internal.runtime.Runtime_gc.gc();
            {};
            var _m = ({
                final x = new stdgo.GoMap.GoObjectMap<_internal.runtime_test.Runtime_test_T_testGcMapIndirection___localname___T_1149.T_testGcMapIndirection___localname___T_1149, _internal.runtime_test.Runtime_test_T_testGcMapIndirection___localname___T_1149.T_testGcMapIndirection___localname___T_1149>();
                x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("_internal.runtime_test.Runtime_test_T_testGcMapIndirection___localname___T_1149.T_testGcMapIndirection___localname___T_1149", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_a", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind) }, 256) }, optional : false }]), false, { get : () -> null }));
                x.__defaultValue__ = () -> ({} : _internal.runtime_test.Runtime_test_T_testGcMapIndirection___localname___T_1149.T_testGcMapIndirection___localname___T_1149);
                {};
                cast x;
            } : stdgo.GoMap<_internal.runtime_test.Runtime_test_T_testGcMapIndirection___localname___T_1149.T_testGcMapIndirection___localname___T_1149, _internal.runtime_test.Runtime_test_T_testGcMapIndirection___localname___T_1149.T_testGcMapIndirection___localname___T_1149>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (2000 : stdgo.GoInt) : Bool), _i++, {
                    var _a:_internal.runtime_test.Runtime_test_T_testGcMapIndirection___localname___T_1149.T_testGcMapIndirection___localname___T_1149 = ({} : _internal.runtime_test.Runtime_test_T_testGcMapIndirection___localname___T_1149.T_testGcMapIndirection___localname___T_1149);
                    _a._a[(0 : stdgo.GoInt)] = _i;
                    _m[_a] = (new _internal.runtime_test.Runtime_test_T_testGcMapIndirection___localname___T_1149.T_testGcMapIndirection___localname___T_1149() : _internal.runtime_test.Runtime_test_T_testGcMapIndirection___localname___T_1149.T_testGcMapIndirection___localname___T_1149);
                });
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
