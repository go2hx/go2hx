package stdgo._internal.crypto.ed25519;
function _verify(_publicKey:stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey, _message:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>, _domPrefix:stdgo.GoString, _context:stdgo.GoString):Bool {
        {
            var _l = (_publicKey.length : stdgo.GoInt);
            if (_l != ((32 : stdgo.GoInt))) {
                throw stdgo.Go.toInterface((("ed25519: bad public key length: " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_l)?.__copy__() : stdgo.GoString));
            };
        };
        if (((_sig.length != (64 : stdgo.GoInt)) || ((_sig[(63 : stdgo.GoInt)] & (224 : stdgo.GoUInt8) : stdgo.GoUInt8) != (0 : stdgo.GoUInt8)) : Bool)) {
            return false;
        };
        var __tmp__ = @:check2r (stdgo.Go.setRef((new stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>).setBytes(_publicKey), a:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return false;
        };
        var _kh = (stdgo._internal.crypto.sha512.Sha512_new_.new_() : stdgo._internal.hash.Hash_hash.Hash);
        if (_domPrefix != ((stdgo.Go.str() : stdgo.GoString))) {
            _kh.write((_domPrefix : stdgo.Slice<stdgo.GoUInt8>));
            _kh.write((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(_context.length : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
            _kh.write((_context : stdgo.Slice<stdgo.GoUInt8>));
        };
        _kh.write((_sig.__slice__(0, (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        _kh.write(_publicKey);
        _kh.write(_message);
        var _hramDigest = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (64 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _hramDigest = _kh.sum(_hramDigest);
        var __tmp__ = @:check2r stdgo._internal.crypto.internal.edwards25519.Edwards25519_newscalar.newScalar().setUniformBytes(_hramDigest), _k:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(("ed25519: internal error: setting scalar failed" : stdgo.GoString));
        };
        var __tmp__ = @:check2r stdgo._internal.crypto.internal.edwards25519.Edwards25519_newscalar.newScalar().setCanonicalBytes((_sig.__slice__((32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return false;
        };
        var _minusA = @:check2r (stdgo.Go.setRef((new stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>).negate(a);
        var r = @:check2r (stdgo.Go.setRef((new stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>).varTimeDoubleScalarBaseMult(_k, _minusA, s);
        return stdgo._internal.bytes.Bytes_equal.equal((_sig.__slice__(0, (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), @:check2r r.bytes());
    }
