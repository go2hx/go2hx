package stdgo._internal.crypto.ed25519;
function _newKeyFromSeed(_privateKey:stdgo.Slice<stdgo.GoUInt8>, _seed:stdgo.Slice<stdgo.GoUInt8>):Void {
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L167"
        {
            var _l = (_seed.length : stdgo.GoInt);
            if (_l != ((32 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L168"
                throw stdgo.Go.toInterface((("ed25519: bad seed length: " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_l)?.__copy__() : stdgo.GoString));
            };
        };
        var _h = stdgo._internal.crypto.sha512.Sha512_sum512.sum512(_seed)?.__copy__();
        var __tmp__ = stdgo._internal.crypto.internal.edwards25519.Edwards25519_newscalar.newScalar().setBytesWithClamping((_h.__slice__(0, (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L173"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L174"
            throw stdgo.Go.toInterface(("ed25519: internal error: setting scalar failed" : stdgo.GoString));
        };
        var a = (stdgo.Go.setRef((new stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>).scalarBaseMult(_s);
        var _publicKey = a.bytes();
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L180"
        _privateKey.__copyTo__(_seed);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L181"
        (_privateKey.__slice__((32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_publicKey);
    }
