package _internal.crypto_test;
function _test(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _name:stdgo.GoString, _cipherText:stdgo.Slice<stdgo.GoUInt8>, _xor:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> Void):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _want = ("abcdefghij" : stdgo.GoString);
            var _plainText = (_want : stdgo.Slice<stdgo.GoUInt8>);
            var _shorterLen = ((_cipherText.length) / (2 : stdgo.GoInt) : stdgo.GoInt);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        var _err = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        } : stdgo.AnyInterface);
                        if (_err == null) {
                            _t.errorf(("%v XORKeyStream expected to panic on len(dst) < len(src), but didn\'t" : stdgo.GoString), stdgo.Go.toInterface(_name));
                        };
                        {};
                        if (_plainText[(_shorterLen : stdgo.GoInt)] == (("0123456789" : stdgo.GoString)[(_shorterLen : stdgo.GoInt)])) {
                            _t.errorf(("%v XORKeyStream did out of bounds write, want %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_want), stdgo.Go.toInterface((_plainText : stdgo.GoString)));
                        };
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
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
                        return;
                    };
                };
                a();
            });
            _xor((_plainText.__slice__(0, _shorterLen) : stdgo.Slice<stdgo.GoUInt8>), _cipherText);
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
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
            return;
        };
    }
