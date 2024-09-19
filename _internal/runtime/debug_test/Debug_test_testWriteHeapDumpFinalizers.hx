package _internal.runtime.debug_test;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.runtime.debug.Debug;
function testWriteHeapDumpFinalizers(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (true) {
                _t.skipf(("WriteHeapDump is not available on %s." : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
            };
            var __tmp__ = stdgo._internal.os.Os_createTemp.createTemp(stdgo.Go.str()?.__copy__(), ("heapdumptest" : stdgo.GoString)), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("TempFile failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _f.name();
                __deferstack__.unshift(() -> stdgo._internal.os.Os_remove.remove(_a0?.__copy__()));
            };
            __deferstack__.unshift(() -> _f.close());
            stdgo.Go.println(("allocating objects" : stdgo.GoString));
            var _x = (stdgo.Go.setRef((new _internal.runtime.debug_test.Debug_test_Obj.Obj() : _internal.runtime.debug_test.Debug_test_Obj.Obj)) : stdgo.Ref<_internal.runtime.debug_test.Debug_test_Obj.Obj>);
            stdgo._internal.runtime.Runtime_setFinalizer.setFinalizer(stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_internal.runtime.debug_test.Debug_test__objfin._objfin));
            var _y = (stdgo.Go.setRef((new _internal.runtime.debug_test.Debug_test_Obj.Obj() : _internal.runtime.debug_test.Debug_test_Obj.Obj)) : stdgo.Ref<_internal.runtime.debug_test.Debug_test_Obj.Obj>);
            stdgo._internal.runtime.Runtime_setFinalizer.setFinalizer(stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_internal.runtime.debug_test.Debug_test__objfin._objfin));
            stdgo.Go.println(("starting gc" : stdgo.GoString));
            stdgo._internal.runtime.Runtime_gc.gc();
            stdgo.Go.println(("starting dump" : stdgo.GoString));
            stdgo._internal.runtime.debug.Debug_writeHeapDump.writeHeapDump(_f.fd());
            stdgo.Go.println(("done dump" : stdgo.GoString));
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
