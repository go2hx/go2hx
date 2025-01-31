package stdgo._internal.encoding.gob;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.testing.Testing;
import stdgo._internal.io.Io;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.sort.Sort;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.encoding.binary.Binary;
function _buildEncEngine(_info:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>, _building:stdgo.GoMap<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>, Bool>):stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encEngine.T_encEngine> {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if (((_building != null) && (_building[_info] ?? false) : Bool)) {
                return null;
            };
            @:check2 (@:checkr _info ?? throw "null pointer dereference")._encInit.lock();
            {
                final __f__ = @:check2 (@:checkr _info ?? throw "null pointer dereference")._encInit.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _enc = @:check2 (@:checkr _info ?? throw "null pointer dereference")._encoder.load();
            if ((_enc == null || (_enc : Dynamic).__nil__)) {
                if (_building == null) {
                    _building = ({
                        final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>, Bool>();
                        {};
                        cast x;
                    } : stdgo.GoMap<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>, Bool>);
                };
                _building[_info] = true;
                _enc = stdgo._internal.encoding.gob.Gob__compileEnc._compileEnc(_ut, _building);
                @:check2 (@:checkr _info ?? throw "null pointer dereference")._encoder.store(_enc);
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _enc;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encEngine.T_encEngine>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encEngine.T_encEngine>);
            };
        };
    }
