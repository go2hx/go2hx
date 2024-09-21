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
function _checkPanicNil(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _want:stdgo.AnyInterface):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _name = ("/godebug/non-default-behavior/panicnil:events" : stdgo.GoString);
            var _s = (new stdgo.Slice<stdgo._internal.runtime.metrics.Metrics_Sample.Sample>(1, 1, ...[({ name : _name?.__copy__() } : stdgo._internal.runtime.metrics.Metrics_Sample.Sample)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.metrics.Metrics_Sample.Sample)])) : stdgo.Slice<stdgo._internal.runtime.metrics.Metrics_Sample.Sample>);
            stdgo._internal.runtime.metrics.Metrics_read.read(_s);
            var _v1 = (_s[(0 : stdgo.GoInt)].value.uint64() : stdgo.GoUInt64);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        var _e = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        } : stdgo.AnyInterface);
                        if (!((stdgo._internal.reflect.Reflect_typeOf.typeOf(_e).string() : String) == (stdgo._internal.reflect.Reflect_typeOf.typeOf(_want).string() : String))) {
                            stdgo.Go.println(_e, _want);
                            _t.errorf(("recover() = %v, want %v" : stdgo.GoString), _e, _want);
                            throw stdgo.Go.toInterface(_e);
                        };
                        stdgo._internal.runtime.metrics.Metrics_read.read(_s);
                        var _v2 = (_s[(0 : stdgo.GoInt)].value.uint64() : stdgo.GoUInt64);
                        if (_want == null) {
                            if (_v2 != ((_v1 + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64))) {
                                _t.errorf(("recover() with panicnil=1 did not increment metric %s" : stdgo.GoString), stdgo.Go.toInterface(_name));
                            };
                        } else {
                            if (_v2 != (_v1)) {
                                _t.errorf(("recover() with panicnil=0 incremented metric %s: %d -> %d" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_v1), stdgo.Go.toInterface(_v2));
                            };
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
                };
                a();
            });
            throw (null : stdgo.AnyInterface);
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
