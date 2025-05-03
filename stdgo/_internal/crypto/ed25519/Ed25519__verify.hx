package stdgo._internal.crypto.ed25519;
function _verify(_publicKey:stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey, _message:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>, _domPrefix:stdgo.GoString, _context:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L305"
        {
            var _l = (_publicKey.length : stdgo.GoInt);
            if (_l != ((32 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L306"
                throw stdgo.Go.toInterface((("ed25519: bad public key length: " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_l)?.__copy__() : stdgo.GoString));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L309"
        if (((_sig.length != (64 : stdgo.GoInt)) || ((_sig[(63 : stdgo.GoInt)] & (224 : stdgo.GoUInt8) : stdgo.GoUInt8) != (0 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L310"
            return false;
        };
        var __tmp__ = (stdgo.Go.setRef((new stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>).setBytes(_publicKey), a:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L314"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L315"
            return false;
        };
        var _kh = (stdgo._internal.crypto.sha512.Sha512_new_.new_() : stdgo._internal.hash.Hash_hash.Hash);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L319"
        if (_domPrefix != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L320"
            _kh.write((_domPrefix : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L321"
            _kh.write((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(_context.length : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L322"
            _kh.write((_context : stdgo.Slice<stdgo.GoUInt8>));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L324"
        _kh.write((_sig.__slice__(0, (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L325"
        _kh.write(_publicKey);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L326"
        _kh.write(_message);
        var _hramDigest = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (64 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _hramDigest = _kh.sum(_hramDigest);
        var __tmp__ = stdgo._internal.crypto.internal.edwards25519.Edwards25519_newscalar.newScalar().setUniformBytes(_hramDigest), _k:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L330"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L331"
            throw stdgo.Go.toInterface(("ed25519: internal error: setting scalar failed" : stdgo.GoString));
        };
        var __tmp__ = stdgo._internal.crypto.internal.edwards25519.Edwards25519_newscalar.newScalar().setCanonicalBytes((_sig.__slice__((32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L335"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L336"
            return false;
        };
        var _minusA = (stdgo.Go.setRef((new stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>).negate(a);
        var r = (stdgo.Go.setRef((new stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>).varTimeDoubleScalarBaseMult(_k, _minusA, s);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L343"
        return stdgo._internal.bytes.Bytes_equal.equal((_sig.__slice__(0, (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), r.bytes());
    }
