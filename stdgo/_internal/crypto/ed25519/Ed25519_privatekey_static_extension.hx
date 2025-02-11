package stdgo._internal.crypto.ed25519;
@:keep @:allow(stdgo._internal.crypto.ed25519.Ed25519.PrivateKey_asInterface) class PrivateKey_static_extension {
    @:keep
    @:tdfield
    static public function sign( _priv:stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey, _rand:stdgo._internal.io.Io_reader.Reader, _message:stdgo.Slice<stdgo.GoUInt8>, _opts:stdgo._internal.crypto.Crypto_signeropts.SignerOpts):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _priv:stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey = _priv;
        var _signature = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        var _hash = (_opts.hashFunc() : stdgo._internal.crypto.Crypto_hash.Hash);
        var _context = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_opts) : stdgo.Ref<stdgo._internal.crypto.ed25519.Ed25519_options.Options>)) : stdgo.Ref<stdgo._internal.crypto.ed25519.Ed25519_options.Options>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.crypto.ed25519.Ed25519_options.Options>), _1 : false };
            }, _opts = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _context = (@:checkr _opts ?? throw "null pointer dereference").context?.__copy__();
            };
        };
        if (_hash == ((7u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
            {
                var _l = (_message.length : stdgo.GoInt);
                if (_l != ((64 : stdgo.GoInt))) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((("ed25519: bad Ed25519ph message hash length: " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_l)?.__copy__() : stdgo.GoString)?.__copy__()) };
                        _signature = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            {
                var _l = (_context.length : stdgo.GoInt);
                if ((_l > (255 : stdgo.GoInt) : Bool)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((("ed25519: bad Ed25519ph context length: " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_l)?.__copy__() : stdgo.GoString)?.__copy__()) };
                        _signature = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            var _signature = (new stdgo.Slice<stdgo.GoUInt8>((64 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            stdgo._internal.crypto.ed25519.Ed25519__sign._sign(_signature, _priv, _message, (stdgo.Go.str("SigEd25519 no Ed25519 collisions", 1) : stdgo.GoString)?.__copy__(), _context?.__copy__());
            return {
                final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : _signature, _1 : (null : stdgo.Error) };
                _signature = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        } else if (((_hash == (0u32 : stdgo._internal.crypto.Crypto_hash.Hash)) && (_context != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            {
                var _l = (_context.length : stdgo.GoInt);
                if ((_l > (255 : stdgo.GoInt) : Bool)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_((("ed25519: bad Ed25519ctx context length: " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_l)?.__copy__() : stdgo.GoString)?.__copy__()) };
                        _signature = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            var _signature = (new stdgo.Slice<stdgo.GoUInt8>((64 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            stdgo._internal.crypto.ed25519.Ed25519__sign._sign(_signature, _priv, _message, (stdgo.Go.str("SigEd25519 no Ed25519 collisions", 0) : stdgo.GoString)?.__copy__(), _context?.__copy__());
            return {
                final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : _signature, _1 : (null : stdgo.Error) };
                _signature = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        } else if (_hash == ((0u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
            return {
                final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.crypto.ed25519.Ed25519_sign.sign(_priv, _message), _1 : (null : stdgo.Error) };
                _signature = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        } else {
            return {
                final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("ed25519: expected opts.HashFunc() zero (unhashed message, for standard Ed25519) or SHA-512 (for Ed25519ph)" : stdgo.GoString)) };
                _signature = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
    }
    @:keep
    @:tdfield
    static public function seed( _priv:stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _priv:stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey = _priv;
        return stdgo._internal.bytes.Bytes_clone.clone((_priv.__slice__(0, (32 : stdgo.GoInt)) : stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey));
    }
    @:keep
    @:tdfield
    static public function equal( _priv:stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey, _x:stdgo._internal.crypto.Crypto_privatekey.PrivateKey):Bool {
        @:recv var _priv:stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey = _priv;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_x : stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey)) : stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey), _1 : true };
        } catch(_) {
            { _0 : (new stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey), _1 : false };
        }, _xx = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return false;
        };
        return stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare(_priv, _xx) == ((1 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function public_( _priv:stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey):stdgo._internal.crypto.Crypto_publickey.PublicKey {
        @:recv var _priv:stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey = _priv;
        var _publicKey = (new stdgo.Slice<stdgo.GoUInt8>((32 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _publicKey.__copyTo__((_priv.__slice__((32 : stdgo.GoInt)) : stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey));
        return stdgo.Go.toInterface(stdgo.Go.asInterface((_publicKey : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey)));
    }
}
