package stdgo._internal.encoding.gob;
function _encodeAndRecover(_value:stdgo.AnyInterface):{ var _0 : stdgo.Error; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _encodeErr = (null : stdgo.Error), _panicErr = (null : stdgo.Error);
        try {
            {
                __deferstack__.unshift(() -> ({
                    var a = function():Void {
                        var _e = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        } : stdgo.AnyInterface);
                        if (_e != null) {
                            {
                                final __type__ = _e;
                                if (stdgo.Go.typeEquals((__type__ : stdgo.Error))) {
                                    var _err:stdgo.Error = __type__ == null ? (null : stdgo.Error) : __type__.__underlying__() == null ? (null : stdgo.Error) : __type__ == null ? (null : stdgo.Error) : __type__.__underlying__().value;
                                    _panicErr = _err;
                                } else {
                                    var _err:stdgo.AnyInterface = __type__?.__underlying__();
                                    _panicErr = stdgo._internal.fmt.Fmt_errorf.errorf(("%v" : stdgo.GoString), _err);
                                };
                            };
                        };
                    };
                    a();
                }));
            };
            _encodeErr = @:check2r stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo._internal.io.Io_discard.discard).encode(_value);
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                return { _0 : _encodeErr, _1 : _panicErr };
            };
            {
                for (defer in __deferstack__) {
                    __deferstack__.remove(defer);
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _encodeErr, _1 : _panicErr };
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
            return { _0 : _encodeErr, _1 : _panicErr };
        };
    }
