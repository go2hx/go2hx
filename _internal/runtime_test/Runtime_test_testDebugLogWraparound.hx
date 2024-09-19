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
function testDebugLogWraparound(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _internal.runtime_test.Runtime_test__skipDebugLog._skipDebugLog(_t);
            stdgo._internal.runtime.Runtime_lockOSThread.lockOSThread();
            __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime_unlockOSThread.unlockOSThread());
            stdgo._internal.runtime.Runtime_resetDebugLog.resetDebugLog();
            var _longString:stdgo.GoString = stdgo._internal.strings.Strings_repeat.repeat(("a" : stdgo.GoString), (128 : stdgo.GoInt));
            var _want:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
            {
                var __0 = (0 : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _j = __1, _i = __0;
                stdgo.Go.cfor((_j < (32768 : stdgo.GoInt) : Bool), {
                    final __tmp__0 = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    final __tmp__1 = (_j + (_longString.length) : stdgo.GoInt);
                    _i = __tmp__0;
                    _j = __tmp__1;
                }, {
                    stdgo._internal.runtime.Runtime_dlog.dlog().i(_i).s(_longString?.__copy__()).end();
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_want) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), ("[] %d %s\n" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_longString));
                });
            };
            var _log = (stdgo._internal.runtime.Runtime_dumpDebugLog.dumpDebugLog()?.__copy__() : stdgo.GoString);
            var _lost = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("^>> begin log \\d+; lost first \\d+KB <<\\n" : stdgo.GoString));
            if (!_lost.matchString(_log?.__copy__())) {
                _t.fatalf(("want matching %s, got %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_lost)), stdgo.Go.toInterface(_log));
            };
            var _idx = _lost.findStringIndex(_log?.__copy__());
            _log = _internal.runtime_test.Runtime_test__dlogCanonicalize._dlogCanonicalize((_log.__slice__(_idx[(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__())?.__copy__();
            if (!stdgo._internal.strings.Strings_hasSuffix.hasSuffix((_want.string() : stdgo.GoString)?.__copy__(), _log?.__copy__())) {
                _t.fatalf(("wrong suffix:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_log));
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
