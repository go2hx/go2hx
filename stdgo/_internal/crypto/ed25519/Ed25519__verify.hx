package stdgo._internal.crypto.ed25519;
function _verify(_publicKey:stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey, _message:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>, _domPrefix:stdgo.GoString, _context:stdgo.GoString):Bool {
        {
            var _l = (_publicKey.length : stdgo.GoInt);
            if (_l != ((32 : stdgo.GoInt))) {
                throw stdgo.Go.toInterface((("ed25519: bad public key length: " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_l)?.__copy__() : stdgo.GoString));
            };
        };
        if (((_sig.length != (64 : stdgo.GoInt)) || ((_sig[(63 : stdgo.GoInt)] & (224 : stdgo.GoUInt8) : stdgo.GoUInt8) != (0 : stdgo.GoUInt8)) : Bool)) {
            return false;
        };
        var __tmp__ = (stdgo.Go.setRef((new _internal.crypto.internal.edwards25519.Edwards25519_Point.Point() : _internal.crypto.internal.edwards25519.Edwards25519_Point.Point)) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>).setBytes(_publicKey), a:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return false;
        };
        var _kh = (stdgo._internal.crypto.sha512.Sha512_new_.new_() : stdgo._internal.hash.Hash_Hash.Hash);
        if (_domPrefix != (stdgo.Go.str())) {
            _kh.write((_domPrefix : stdgo.Slice<stdgo.GoUInt8>));
            _kh.write((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(_context.length : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
            _kh.write((_context : stdgo.Slice<stdgo.GoUInt8>));
        };
        _kh.write((_sig.__slice__(0, (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        _kh.write(_publicKey);
        _kh.write(_message);
        var _hramDigest = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (64 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _hramDigest = _kh.sum(_hramDigest);
        var __tmp__ = _internal.crypto.internal.edwards25519.Edwards25519_newScalar.newScalar().setUniformBytes(_hramDigest), _k:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(("ed25519: internal error: setting scalar failed" : stdgo.GoString));
        };
        var __tmp__ = _internal.crypto.internal.edwards25519.Edwards25519_newScalar.newScalar().setCanonicalBytes((_sig.__slice__((32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return false;
        };
        var _minusA = (stdgo.Go.setRef((new _internal.crypto.internal.edwards25519.Edwards25519_Point.Point() : _internal.crypto.internal.edwards25519.Edwards25519_Point.Point)) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>).negate(a);
        var r = (stdgo.Go.setRef((new _internal.crypto.internal.edwards25519.Edwards25519_Point.Point() : _internal.crypto.internal.edwards25519.Edwards25519_Point.Point)) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>).varTimeDoubleScalarBaseMult(_k, _minusA, s);
        return stdgo._internal.bytes.Bytes_equal.equal((_sig.__slice__(0, (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), r.bytes());
    }
