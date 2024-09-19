package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testSliceOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {};
            var _s = ((1000000u32 : stdgo.GoUInt) : stdgo.GoUInt);
            var _l = (((-1u32 : stdgo.GoUInt) / _s : stdgo.GoUInt) + (1u32 : stdgo.GoUInt) : stdgo.GoUInt);
            if (((_l * _s : stdgo.GoUInt) >= _s : Bool)) {
                _t.fatal(stdgo.Go.toInterface(("slice size does not overflow" : stdgo.GoString)));
            };
            var _x:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1000000, 1000000, ...[for (i in 0 ... 1000000) (0 : stdgo.GoUInt8)]);
            var _st = (stdgo._internal.reflect.Reflect_sliceOf.sliceOf(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_x))) : stdgo._internal.reflect.Reflect_Type_.Type_);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        var _err = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        } : stdgo.AnyInterface);
                        if (_err == null) {
                            _t.fatal(stdgo.Go.toInterface(("slice overflow does not panic" : stdgo.GoString)));
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
            stdgo._internal.reflect.Reflect_makeSlice.makeSlice(_st, (_l : stdgo.GoInt), (_l : stdgo.GoInt));
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
