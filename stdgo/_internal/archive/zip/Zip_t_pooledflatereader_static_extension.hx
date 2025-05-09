package stdgo._internal.archive.zip;
@:keep @:allow(stdgo._internal.archive.zip.Zip.T_pooledFlateReader_asInterface) class T_pooledFlateReader_static_extension {
    @:keep
    @:tdfield
    static public function close( _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_pooledflatereader.T_pooledFlateReader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_pooledflatereader.T_pooledFlateReader> = _r;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/register.go#L93"
            (@:checkr _r ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = (@:checkr _r ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _err:stdgo.Error = (null : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/register.go#L96"
            if ((@:checkr _r ?? throw "null pointer dereference")._fr != null) {
                _err = (@:checkr _r ?? throw "null pointer dereference")._fr.close();
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/register.go#L98"
                stdgo._internal.archive.zip.Zip__flatereaderpool._flateReaderPool.put(stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._fr));
                (@:checkr _r ?? throw "null pointer dereference")._fr = (null : stdgo._internal.io.Io_readcloser.ReadCloser);
            };
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/register.go#L101"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _err;
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
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_pooledflatereader.T_pooledFlateReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_t_pooledflatereader.T_pooledFlateReader> = _r;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/register.go#L84"
            (@:checkr _r ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = (@:checkr _r ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/register.go#L86"
            if ((@:checkr _r ?? throw "null pointer dereference")._fr == null) {
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/register.go#L87"
                {
                    final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors_new_.new_(("Read after Close" : stdgo.GoString)) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _n = __ret__._0;
                    _err = __ret__._1;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/archive/zip/register.go#L89"
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = ({
                    @:explicitConversion final __tmp__ = (@:checkr _r ?? throw "null pointer dereference")._fr.read(_p);
                    { _0 : __tmp__._0, _1 : __tmp__._1 };
                });
                _n = __ret__._0;
                _err = __ret__._1;
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
                return { _0 : _n, _1 : _err };
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
                return { _0 : _n, _1 : _err };
            };
        };
    }
}
