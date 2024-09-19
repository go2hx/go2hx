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
function testPinnerCgoCheckString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _pinner:stdgo._internal.runtime.Runtime_Pinner.Pinner = ({} : stdgo._internal.runtime.Runtime_Pinner.Pinner);
            __deferstack__.unshift(() -> _pinner.unpin());
            var _b = (("foobar" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
            var _str = ((stdgo._internal.unsafe.Unsafe_string.string(stdgo.Go.pointer(_b[(0 : stdgo.GoInt)]), (6 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            _internal.runtime_test.Runtime_test__assertCgoCheckPanics._assertCgoCheckPanics(_t, stdgo.Go.toInterface(stdgo.Go.pointer(_str)));
            _pinner.pin(stdgo.Go.toInterface(stdgo.Go.pointer(_b[(0 : stdgo.GoInt)])));
            stdgo._internal.runtime.Runtime_cgoCheckPointer.cgoCheckPointer(stdgo.Go.toInterface(stdgo.Go.pointer(_str)), stdgo.Go.toInterface(true));
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
