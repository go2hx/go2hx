package stdgo._internal.runtime.pprof;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.context.Context;
import stdgo._internal.sort.Sort;
import stdgo._internal.text.tabwriter.Tabwriter;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.strings.Strings;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.time.Time;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.math.Math;
import stdgo._internal.internal.abi.Abi;
function newProfile(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile> {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            stdgo._internal.runtime.pprof.Pprof__lockProfiles._lockProfiles();
            {
                final __f__ = stdgo._internal.runtime.pprof.Pprof__unlockProfiles._unlockProfiles;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if (_name == (stdgo.Go.str())) {
                throw stdgo.Go.toInterface(("pprof: NewProfile with empty name" : stdgo.GoString));
            };
            if (((stdgo._internal.runtime.pprof.Pprof__profiles._profiles._m[_name] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>)) != null && ((stdgo._internal.runtime.pprof.Pprof__profiles._profiles._m[_name] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>) : Dynamic).__nil__ == null || !(stdgo._internal.runtime.pprof.Pprof__profiles._profiles._m[_name] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>) : Dynamic).__nil__))) {
                throw stdgo.Go.toInterface((("pprof: NewProfile name already in use: " : stdgo.GoString) + _name?.__copy__() : stdgo.GoString));
            };
            var _p = (stdgo.Go.setRef(({ _name : _name?.__copy__(), _m : ({
                final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo.Slice<stdgo.GoUIntptr>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoUIntptr>);
                {};
                cast x;
            } : stdgo.GoMap<stdgo.AnyInterface, stdgo.Slice<stdgo.GoUIntptr>>) } : stdgo._internal.runtime.pprof.Pprof_Profile.Profile)) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>);
            stdgo._internal.runtime.pprof.Pprof__profiles._profiles._m[_name] = _p;
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _p;
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
                return (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>);
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
                return (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>);
            };
        };
    }
