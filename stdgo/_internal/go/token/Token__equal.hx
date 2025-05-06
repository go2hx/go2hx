package stdgo._internal.go.token;
function _equal(_p:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _q:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>):stdgo.Error {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L17"
            if (_p == (_q)) {
                //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L19"
                return (null : stdgo.Error);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L23"
            (@:checkr _p ?? throw "null pointer dereference")._mutex.lock();
            //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L24"
            (@:checkr _q ?? throw "null pointer dereference")._mutex.lock();
            {
                final __f__ = (@:checkr _q ?? throw "null pointer dereference")._mutex.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                final __f__ = (@:checkr _p ?? throw "null pointer dereference")._mutex.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L28"
            if ((@:checkr _p ?? throw "null pointer dereference")._base != ((@:checkr _q ?? throw "null pointer dereference")._base)) {
                //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L29"
                {
                    final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("different bases: %d != %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._base), stdgo.Go.toInterface((@:checkr _q ?? throw "null pointer dereference")._base));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L32"
            if (((@:checkr _p ?? throw "null pointer dereference")._files.length) != (((@:checkr _q ?? throw "null pointer dereference")._files.length))) {
                //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L33"
                {
                    final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("different number of files: %d != %d" : stdgo.GoString), stdgo.Go.toInterface(((@:checkr _p ?? throw "null pointer dereference")._files.length)), stdgo.Go.toInterface(((@:checkr _q ?? throw "null pointer dereference")._files.length)));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L36"
            for (_i => _f in (@:checkr _p ?? throw "null pointer dereference")._files) {
                var _g = (@:checkr _q ?? throw "null pointer dereference")._files[(_i : stdgo.GoInt)];
                //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L38"
                if ((@:checkr _f ?? throw "null pointer dereference")._name != ((@:checkr _g ?? throw "null pointer dereference")._name)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L39"
                    {
                        final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("different filenames: %q != %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference")._name), stdgo.Go.toInterface((@:checkr _g ?? throw "null pointer dereference")._name));
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L41"
                if ((@:checkr _f ?? throw "null pointer dereference")._base != ((@:checkr _g ?? throw "null pointer dereference")._base)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L42"
                    {
                        final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("different base for %q: %d != %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference")._name), stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference")._base), stdgo.Go.toInterface((@:checkr _g ?? throw "null pointer dereference")._base));
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L44"
                if ((@:checkr _f ?? throw "null pointer dereference")._size != ((@:checkr _g ?? throw "null pointer dereference")._size)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L45"
                    {
                        final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("different size for %q: %d != %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference")._name), stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference")._size), stdgo.Go.toInterface((@:checkr _g ?? throw "null pointer dereference")._size));
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L47"
                for (_j => _l in (@:checkr _f ?? throw "null pointer dereference")._lines) {
                    var _m = ((@:checkr _g ?? throw "null pointer dereference")._lines[(_j : stdgo.GoInt)] : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L49"
                    if (_l != (_m)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L50"
                        {
                            final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("different offsets for %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference")._name));
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L53"
                for (_j => _l in (@:checkr _f ?? throw "null pointer dereference")._infos) {
                    var _m = ((@:checkr _g ?? throw "null pointer dereference")._infos[(_j : stdgo.GoInt)] : stdgo._internal.go.token.Token_t_lineinfo.T_lineInfo);
                    //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L55"
                    if (((_l.offset != (_m.offset) || _l.filename != (_m.filename) : Bool) || (_l.line != _m.line) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L56"
                        {
                            final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("different infos for %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference")._name));
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L62"
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
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
                return (null : stdgo.Error);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
                return (null : stdgo.Error);
            };
        };
    }
