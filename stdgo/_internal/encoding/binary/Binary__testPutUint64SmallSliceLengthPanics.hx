package stdgo._internal.encoding.binary;
function _testPutUint64SmallSliceLengthPanics():Bool {
        var __deferstack__:Array<Void -> Void> = [];
        var _panicked = false;
        try {
            {
                __deferstack__.unshift(() -> ({
                    var a = function():Void {
                        _panicked = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        }) != null;
                    };
                    a();
                }));
            };
            var _b = (new stdgo.GoArray<stdgo.GoUInt8>(8, 8, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
            stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.putUint64((_b.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (72623859790382856i64 : stdgo.GoUInt64));
            {
                final __ret__:Bool = _panicked = false;
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _panicked;
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
            return _panicked;
        };
    }
