package stdgo._internal.archive.zip;
@:keep @:allow(stdgo._internal.archive.zip.Zip.T_pooledFlateReader_asInterface) class T_pooledFlateReader_static_extension {
    @:keep
    static public function close( _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_pooledFlateReader.T_pooledFlateReader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_pooledFlateReader.T_pooledFlateReader> = _r;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _r._mu.lock();
            __deferstack__.unshift(() -> _r._mu.unlock());
            var _err:stdgo.Error = (null : stdgo.Error);
            if (_r._fr != null) {
                _err = _r._fr.close();
                stdgo._internal.archive.zip.Zip__flateReaderPool._flateReaderPool.put(stdgo.Go.toInterface(_r._fr));
                _r._fr = (null : stdgo._internal.io.Io_ReadCloser.ReadCloser);
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _err;
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.Error = (null : stdgo.Error);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function read( _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_pooledFlateReader.T_pooledFlateReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_pooledFlateReader.T_pooledFlateReader> = _r;
        var __deferstack__:Array<Void -> Void> = [];
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            _r._mu.lock();
            __deferstack__.unshift(() -> _r._mu.unlock());
            if (_r._fr == null) {
                {
                    final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors_new_.new_(("Read after Close" : stdgo.GoString)) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = _r._fr.read(_p);
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
}