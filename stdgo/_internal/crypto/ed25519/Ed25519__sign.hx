package stdgo._internal.crypto.ed25519;
function _sign(_signature:stdgo.Slice<stdgo.GoUInt8>, _privateKey:stdgo.Slice<stdgo.GoUInt8>, _message:stdgo.Slice<stdgo.GoUInt8>, _domPrefix:stdgo.GoString, _context:stdgo.GoString):Void {
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L208"
        {
            var _l = (_privateKey.length : stdgo.GoInt);
            if (_l != ((64 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L209"
                throw stdgo.Go.toInterface((("ed25519: bad private key length: " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_l)?.__copy__() : stdgo.GoString));
            };
        };
        var __0 = (_privateKey.__slice__(0, (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), __1 = (_privateKey.__slice__((32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
var _publicKey = __1, _seed = __0;
        var _h = stdgo._internal.crypto.sha512.Sha512_sum512.sum512(_seed)?.__copy__();
        var __tmp__ = stdgo._internal.crypto.internal.edwards25519.Edwards25519_newscalar.newScalar().setBytesWithClamping((_h.__slice__(0, (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L215"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L216"
            throw stdgo.Go.toInterface(("ed25519: internal error: setting scalar failed" : stdgo.GoString));
        };
        var _prefix = (_h.__slice__((32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _mh = (stdgo._internal.crypto.sha512.Sha512_new_.new_() : stdgo._internal.hash.Hash_hash.Hash);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L221"
        if (_domPrefix != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L222"
            _mh.write((_domPrefix : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L223"
            _mh.write((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(_context.length : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L224"
            _mh.write((_context : stdgo.Slice<stdgo.GoUInt8>));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L226"
        _mh.write(_prefix);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L227"
        _mh.write(_message);
        var _messageDigest = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (64 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _messageDigest = _mh.sum(_messageDigest);
        var __tmp__ = stdgo._internal.crypto.internal.edwards25519.Edwards25519_newscalar.newScalar().setUniformBytes(_messageDigest), _r:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L231"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L232"
            throw stdgo.Go.toInterface(("ed25519: internal error: setting scalar failed" : stdgo.GoString));
        };
        var r = (stdgo.Go.setRef((new stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>).scalarBaseMult(_r);
        var _kh = (stdgo._internal.crypto.sha512.Sha512_new_.new_() : stdgo._internal.hash.Hash_hash.Hash);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L238"
        if (_domPrefix != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L239"
            _kh.write((_domPrefix : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L240"
            _kh.write((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(_context.length : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L241"
            _kh.write((_context : stdgo.Slice<stdgo.GoUInt8>));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L243"
        _kh.write(r.bytes());
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L244"
        _kh.write(_publicKey);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L245"
        _kh.write(_message);
        var _hramDigest = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (64 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _hramDigest = _kh.sum(_hramDigest);
        var __tmp__ = stdgo._internal.crypto.internal.edwards25519.Edwards25519_newscalar.newScalar().setUniformBytes(_hramDigest), _k:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L249"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L250"
            throw stdgo.Go.toInterface(("ed25519: internal error: setting scalar failed" : stdgo.GoString));
        };
        var s = stdgo._internal.crypto.internal.edwards25519.Edwards25519_newscalar.newScalar().multiplyAdd(_k, _s, _r);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L255"
        (_signature.__slice__(0, (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(r.bytes());
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L256"
        (_signature.__slice__((32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(s.bytes());
    }
