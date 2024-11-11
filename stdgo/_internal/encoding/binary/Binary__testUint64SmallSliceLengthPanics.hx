package stdgo._internal.encoding.binary;
function _testUint64SmallSliceLengthPanics():Bool {
        var __deferstack__:Array<Void -> Void> = [];
        var _panicked = false;
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    _panicked = ({
                        final r = stdgo.Go.recover_exception;
                        stdgo.Go.recover_exception = null;
                        r;
                    }) != null;
                };
                a();
            });
            var _b = (new stdgo.GoArray<stdgo.GoUInt8>(8, 8, ...[(1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8), (4 : stdgo.GoUInt8), (5 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (7 : stdgo.GoUInt8), (8 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
            stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.uint64((_b.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return false;
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
