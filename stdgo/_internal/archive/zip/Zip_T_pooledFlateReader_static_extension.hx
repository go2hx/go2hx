package stdgo._internal.archive.zip;
@:keep @:allow(stdgo._internal.archive.zip.Zip.T_pooledFlateReader_asInterface) class T_pooledFlateReader_static_extension {
    @:keep
    @:tdfield
    static public function close( _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_pooledFlateReader.T_pooledFlateReader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_pooledFlateReader.T_pooledFlateReader> = _r;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            @:check2 (@:checkr _r ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _r ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            var _err:stdgo.Error = (null : stdgo.Error);
            if ((@:checkr _r ?? throw "null pointer dereference")._fr != null) {
                _err = (@:checkr _r ?? throw "null pointer dereference")._fr.close();
                @:check2 stdgo._internal.archive.zip.Zip__flateReaderPool._flateReaderPool.put(stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._fr));
                (@:checkr _r ?? throw "null pointer dereference")._fr = (null : stdgo._internal.io.Io_ReadCloser.ReadCloser);
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                return _err;
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return (null : stdgo.Error);
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
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return (null : stdgo.Error);
        };
    }
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_pooledFlateReader.T_pooledFlateReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_pooledFlateReader.T_pooledFlateReader> = _r;
        var __deferstack__:Array<Void -> Void> = [];
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            @:check2 (@:checkr _r ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _r ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            if ((@:checkr _r ?? throw "null pointer dereference")._fr == null) {
                {
                    final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors_new_.new_(("Read after Close" : stdgo.GoString)) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        __deferstack__.remove(defer);
                        defer();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = (@:checkr _r ?? throw "null pointer dereference")._fr.read(_p);
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _n, _1 : _err };
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
                __deferstack__.remove(defer);
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return { _0 : _n, _1 : _err };
        };
    }
}
