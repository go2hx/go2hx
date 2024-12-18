package stdgo._internal.crypto.hmac;
function new_(_h:() -> stdgo._internal.hash.Hash_Hash.Hash, _key:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.hash.Hash_Hash.Hash {
        if (false) {
            var _hm = (stdgo._internal.crypto.internal.boring.Boring_newHMAC.newHMAC(_h, _key) : stdgo._internal.hash.Hash_Hash.Hash);
            if (_hm != null) {
                return _hm;
            };
        };
        var _hm = (stdgo.Go.setRef(({} : stdgo._internal.crypto.hmac.Hmac_T_hmac.T_hmac)) : stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_T_hmac.T_hmac>);
        _hm._outer = _h();
        _hm._inner = _h();
        var _unique = (true : Bool);
        ({
            var a = function():Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    {
                        __deferstack__.unshift(() -> ({
                            var a = function():Void {
                                var __blank__ = ({
                                    final r = stdgo.Go.recover_exception;
                                    stdgo.Go.recover_exception = null;
                                    r;
                                });
                            };
                            a();
                        }));
                    };
                    if (stdgo.Go.toInterface(_hm._outer) == (stdgo.Go.toInterface(_hm._inner))) {
                        _unique = false;
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
        if (!_unique) {
            throw stdgo.Go.toInterface(("crypto/hmac: hash generation function does not produce unique values" : stdgo.GoString));
        };
        var _blocksize = (_hm._inner.blockSize() : stdgo.GoInt);
        _hm._ipad = (new stdgo.Slice<stdgo.GoUInt8>((_blocksize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _hm._opad = (new stdgo.Slice<stdgo.GoUInt8>((_blocksize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        if (((_key.length) > _blocksize : Bool)) {
            _hm._outer.write(_key);
            _key = _hm._outer.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        };
        _hm._ipad.__copyTo__(_key);
        _hm._opad.__copyTo__(_key);
        for (_i => _ in _hm._ipad) {
            _hm._ipad[(_i : stdgo.GoInt)] = (_hm._ipad[(_i : stdgo.GoInt)] ^ ((54 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        for (_i => _ in _hm._opad) {
            _hm._opad[(_i : stdgo.GoInt)] = (_hm._opad[(_i : stdgo.GoInt)] ^ ((92 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        _hm._inner.write(_hm._ipad);
        return stdgo.Go.asInterface(_hm);
    }
