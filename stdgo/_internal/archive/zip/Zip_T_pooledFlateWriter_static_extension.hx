package stdgo._internal.archive.zip;
@:keep @:allow(stdgo._internal.archive.zip.Zip.T_pooledFlateWriter_asInterface) class T_pooledFlateWriter_static_extension {
    @:keep
    static public function close( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_pooledFlateWriter.T_pooledFlateWriter>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_pooledFlateWriter.T_pooledFlateWriter> = _w;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _w._mu.lock();
            __deferstack__.unshift(() -> _w._mu.unlock());
            var _err:stdgo.Error = (null : stdgo.Error);
            if ((_w._fw != null && ((_w._fw : Dynamic).__nil__ == null || !(_w._fw : Dynamic).__nil__))) {
                _err = _w._fw.close();
                stdgo._internal.archive.zip.Zip__flateWriterPool._flateWriterPool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_w._fw)));
                _w._fw = null;
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
    static public function write( _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_pooledFlateWriter.T_pooledFlateWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_pooledFlateWriter.T_pooledFlateWriter> = _w;
        var __deferstack__:Array<Void -> Void> = [];
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            _w._mu.lock();
            __deferstack__.unshift(() -> _w._mu.unlock());
            if ((_w._fw == null || (_w._fw : Dynamic).__nil__)) {
                {
                    final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n = (0 : stdgo.GoInt), _1 : _err = stdgo._internal.errors.Errors_new_.new_(("Write after Close" : stdgo.GoString)) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                    var __tmp__ = _w._fw.write(_p);
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
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
