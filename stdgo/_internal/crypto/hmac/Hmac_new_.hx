package stdgo._internal.crypto.hmac;
function new_(_h:() -> stdgo._internal.hash.Hash_hash.Hash, _key:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.hash.Hash_hash.Hash {
        //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L130"
        if (false) {
            var _hm = (stdgo._internal.crypto.internal.boring.Boring_newhmac.newHMAC(_h, _key) : stdgo._internal.hash.Hash_hash.Hash);
            //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L132"
            if (_hm != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L133"
                return _hm;
            };
        };
        var _hm = (stdgo.Go.setRef(({} : stdgo._internal.crypto.hmac.Hmac_t_hmac.T_hmac)) : stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_t_hmac.T_hmac>);
        (@:checkr _hm ?? throw "null pointer dereference")._outer = _h();
        (@:checkr _hm ?? throw "null pointer dereference")._inner = _h();
        var _unique = (true : Bool);
        //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L141"
        ({
            var a = function():Void {
                var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                try {
                    {
                        __deferstack__.unshift({ ran : false, f : () -> ({
                            var a = function():Void {
                                ({
                                    final r = stdgo.Go.recover_exception;
                                    stdgo.Go.recover_exception = null;
                                    r;
                                });
                            };
                            a();
                        }) });
                    };
                    //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L146"
                    if (stdgo.Go.toInterface((@:checkr _hm ?? throw "null pointer dereference")._outer) == (stdgo.Go.toInterface((@:checkr _hm ?? throw "null pointer dereference")._inner))) {
                        _unique = false;
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
                        return;
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
                        return;
                    };
                };
            };
            a();
        });
        //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L150"
        if (!_unique) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L151"
            throw stdgo.Go.toInterface(("crypto/hmac: hash generation function does not produce unique values" : stdgo.GoString));
        };
        var _blocksize = ((@:checkr _hm ?? throw "null pointer dereference")._inner.blockSize() : stdgo.GoInt);
        (@:checkr _hm ?? throw "null pointer dereference")._ipad = (new stdgo.Slice<stdgo.GoUInt8>((_blocksize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _hm ?? throw "null pointer dereference")._opad = (new stdgo.Slice<stdgo.GoUInt8>((_blocksize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L156"
        if (((_key.length) > _blocksize : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L158"
            (@:checkr _hm ?? throw "null pointer dereference")._outer.write(_key);
            _key = (@:checkr _hm ?? throw "null pointer dereference")._outer.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L161"
        (@:checkr _hm ?? throw "null pointer dereference")._ipad.__copyTo__(_key);
        //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L162"
        (@:checkr _hm ?? throw "null pointer dereference")._opad.__copyTo__(_key);
        //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L163"
        for (_i => _ in (@:checkr _hm ?? throw "null pointer dereference")._ipad) {
            (@:checkr _hm ?? throw "null pointer dereference")._ipad[(_i : stdgo.GoInt)] = ((@:checkr _hm ?? throw "null pointer dereference")._ipad[(_i : stdgo.GoInt)] ^ ((54 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L166"
        for (_i => _ in (@:checkr _hm ?? throw "null pointer dereference")._opad) {
            (@:checkr _hm ?? throw "null pointer dereference")._opad[(_i : stdgo.GoInt)] = ((@:checkr _hm ?? throw "null pointer dereference")._opad[(_i : stdgo.GoInt)] ^ ((92 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L169"
        (@:checkr _hm ?? throw "null pointer dereference")._inner.write((@:checkr _hm ?? throw "null pointer dereference")._ipad);
        //"file:///home/runner/.go/go1.21.3/src/crypto/hmac/hmac.go#L171"
        return stdgo.Go.asInterface(_hm);
    }
