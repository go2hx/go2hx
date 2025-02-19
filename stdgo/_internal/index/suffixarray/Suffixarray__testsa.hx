package stdgo._internal.index.suffixarray;
function _testSA(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _x:stdgo.Slice<stdgo.GoUInt8>, _build:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Slice<stdgo.GoInt>):Bool {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        {
                            var _e = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            } : stdgo.AnyInterface);
                            if (_e != null) {
                                @:check2r _t.logf(("build %v" : stdgo.GoString), stdgo.Go.toInterface(_x));
                                throw stdgo.Go.toInterface(_e);
                            };
                        };
                    };
                    a();
                }) });
            };
            var _sa = _build(_x);
            if ((_sa.length) != ((_x.length))) {
                @:check2r _t.errorf(("build %v: len(sa) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface((_sa.length)), stdgo.Go.toInterface((_x.length)));
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return false;
                };
            };
            {
                var _i = (0 : stdgo.GoInt);
                while (((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_sa.length) : Bool)) {
                    if (((((_sa[(_i : stdgo.GoInt)] < (0 : stdgo.GoInt) : Bool) || (_sa[(_i : stdgo.GoInt)] >= (_x.length) : Bool) : Bool) || (_sa[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] < (0 : stdgo.GoInt) : Bool) : Bool) || (_sa[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] >= (_x.length) : Bool) : Bool)) {
                        @:check2r _t.errorf(("build %s: sa out of range: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_sa));
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return false;
                        };
                    };
if ((stdgo._internal.bytes.Bytes_compare.compare((_x.__slice__(_sa[(_i : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>), (_x.__slice__(_sa[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>)) >= (0 : stdgo.GoInt) : Bool)) {
                        @:check2r _t.errorf(("build %v -> %v\nsa[%d:] = %d,%d out of order" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_sa), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_sa[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_sa[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]));
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return false;
                        };
                    };
                    _i++;
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return true;
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
                return false;
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
                return false;
            };
        };
    }
