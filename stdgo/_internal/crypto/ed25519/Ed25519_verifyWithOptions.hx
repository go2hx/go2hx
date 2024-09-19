package stdgo._internal.crypto.ed25519;
function verifyWithOptions(_publicKey:stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey, _message:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>, _opts:stdgo.Ref<stdgo._internal.crypto.ed25519.Ed25519_Options.Options>):stdgo.Error {
        if (_opts.hash == ((7u32 : stdgo._internal.crypto.Crypto_Hash.Hash))) {
            {
                var _l = (_message.length : stdgo.GoInt);
                if (_l != ((64 : stdgo.GoInt))) {
                    return stdgo._internal.errors.Errors_new_.new_((("ed25519: bad Ed25519ph message hash length: " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_l)?.__copy__() : stdgo.GoString)?.__copy__());
                };
            };
            {
                var _l = (_opts.context.length : stdgo.GoInt);
                if ((_l > (255 : stdgo.GoInt) : Bool)) {
                    return stdgo._internal.errors.Errors_new_.new_((("ed25519: bad Ed25519ph context length: " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_l)?.__copy__() : stdgo.GoString)?.__copy__());
                };
            };
            if (!stdgo._internal.crypto.ed25519.Ed25519__verify._verify(_publicKey, _message, _sig, stdgo.Go.str("SigEd25519 no Ed25519 collisions", 1)?.__copy__(), _opts.context?.__copy__())) {
                return stdgo._internal.errors.Errors_new_.new_(("ed25519: invalid signature" : stdgo.GoString));
            };
            return (null : stdgo.Error);
        } else if (((_opts.hash == (0u32 : stdgo._internal.crypto.Crypto_Hash.Hash)) && (_opts.context != stdgo.Go.str()) : Bool)) {
            {
                var _l = (_opts.context.length : stdgo.GoInt);
                if ((_l > (255 : stdgo.GoInt) : Bool)) {
                    return stdgo._internal.errors.Errors_new_.new_((("ed25519: bad Ed25519ctx context length: " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_l)?.__copy__() : stdgo.GoString)?.__copy__());
                };
            };
            if (!stdgo._internal.crypto.ed25519.Ed25519__verify._verify(_publicKey, _message, _sig, stdgo.Go.str("SigEd25519 no Ed25519 collisions", 0)?.__copy__(), _opts.context?.__copy__())) {
                return stdgo._internal.errors.Errors_new_.new_(("ed25519: invalid signature" : stdgo.GoString));
            };
            return (null : stdgo.Error);
        } else if (_opts.hash == ((0u32 : stdgo._internal.crypto.Crypto_Hash.Hash))) {
            if (!stdgo._internal.crypto.ed25519.Ed25519__verify._verify(_publicKey, _message, _sig, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__())) {
                return stdgo._internal.errors.Errors_new_.new_(("ed25519: invalid signature" : stdgo.GoString));
            };
            return (null : stdgo.Error);
        } else {
            return stdgo._internal.errors.Errors_new_.new_(("ed25519: expected opts.Hash zero (unhashed message, for standard Ed25519) or SHA-512 (for Ed25519ph)" : stdgo.GoString));
        };
    }