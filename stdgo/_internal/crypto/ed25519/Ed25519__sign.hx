package stdgo._internal.crypto.ed25519;
function _sign(_signature:stdgo.Slice<stdgo.GoUInt8>, _privateKey:stdgo.Slice<stdgo.GoUInt8>, _message:stdgo.Slice<stdgo.GoUInt8>, _domPrefix:stdgo.GoString, _context:stdgo.GoString):Void {
        {
            var _l = (_privateKey.length : stdgo.GoInt);
            if (_l != ((64 : stdgo.GoInt))) {
                throw stdgo.Go.toInterface((("ed25519: bad private key length: " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_l)?.__copy__() : stdgo.GoString));
            };
        };
        var __0 = (_privateKey.__slice__(0, (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), __1 = (_privateKey.__slice__((32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
var _publicKey = __1, _seed = __0;
        var _h = stdgo._internal.crypto.sha512.Sha512_sum512.sum512(_seed)?.__copy__();
        var __tmp__ = _internal.crypto.internal.edwards25519.Edwards25519_newScalar.newScalar().setBytesWithClamping((_h.__slice__(0, (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(("ed25519: internal error: setting scalar failed" : stdgo.GoString));
        };
        var _prefix = (_h.__slice__((32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _mh = (stdgo._internal.crypto.sha512.Sha512_new_.new_() : stdgo._internal.hash.Hash_Hash.Hash);
        if (_domPrefix != (stdgo.Go.str())) {
            _mh.write((_domPrefix : stdgo.Slice<stdgo.GoUInt8>));
            _mh.write((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(_context.length : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
            _mh.write((_context : stdgo.Slice<stdgo.GoUInt8>));
        };
        _mh.write(_prefix);
        _mh.write(_message);
        var _messageDigest = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (64 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _messageDigest = _mh.sum(_messageDigest);
        var __tmp__ = _internal.crypto.internal.edwards25519.Edwards25519_newScalar.newScalar().setUniformBytes(_messageDigest), _r:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(("ed25519: internal error: setting scalar failed" : stdgo.GoString));
        };
        var r = (stdgo.Go.setRef((new _internal.crypto.internal.edwards25519.Edwards25519_Point.Point() : _internal.crypto.internal.edwards25519.Edwards25519_Point.Point)) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>).scalarBaseMult(_r);
        var _kh = (stdgo._internal.crypto.sha512.Sha512_new_.new_() : stdgo._internal.hash.Hash_Hash.Hash);
        if (_domPrefix != (stdgo.Go.str())) {
            _kh.write((_domPrefix : stdgo.Slice<stdgo.GoUInt8>));
            _kh.write((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(_context.length : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
            _kh.write((_context : stdgo.Slice<stdgo.GoUInt8>));
        };
        _kh.write(r.bytes());
        _kh.write(_publicKey);
        _kh.write(_message);
        var _hramDigest = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (64 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _hramDigest = _kh.sum(_hramDigest);
        var __tmp__ = _internal.crypto.internal.edwards25519.Edwards25519_newScalar.newScalar().setUniformBytes(_hramDigest), _k:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(("ed25519: internal error: setting scalar failed" : stdgo.GoString));
        };
        var s = _internal.crypto.internal.edwards25519.Edwards25519_newScalar.newScalar().multiplyAdd(_k, _s, _r);
        stdgo.Go.copySlice((_signature.__slice__(0, (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), r.bytes());
        stdgo.Go.copySlice((_signature.__slice__((32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), s.bytes());
    }
