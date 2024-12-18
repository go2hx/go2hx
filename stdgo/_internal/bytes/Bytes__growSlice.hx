package stdgo._internal.bytes;
function _growSlice(_b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                __deferstack__.unshift(() -> ({
                    var a = function():Void {
                        if (({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        }) != null) {
                            throw stdgo.Go.toInterface(stdgo._internal.bytes.Bytes_errTooLarge.errTooLarge);
                        };
                    };
                    a();
                }));
            };
            var _c = ((_b.length) + _n : stdgo.GoInt);
            if ((_c < ((2 : stdgo.GoInt) * _b.capacity : stdgo.GoInt) : Bool)) {
                _c = ((2 : stdgo.GoInt) * _b.capacity : stdgo.GoInt);
            };
            var _b2 = ((null : stdgo.Slice<stdgo.GoUInt8>).__append__(...((new stdgo.Slice<stdgo.GoUInt8>((_c : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
            _b2.__copyTo__(_b);
            {
                final __ret__:stdgo.Slice<stdgo.GoUInt8> = (_b2.__slice__(0, (_b.length)) : stdgo.Slice<stdgo.GoUInt8>);
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
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
            final __ret__:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
