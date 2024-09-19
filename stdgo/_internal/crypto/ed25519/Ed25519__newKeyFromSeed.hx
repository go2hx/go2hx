package stdgo._internal.crypto.ed25519;
function _newKeyFromSeed(_privateKey:stdgo.Slice<stdgo.GoUInt8>, _seed:stdgo.Slice<stdgo.GoUInt8>):Void {
        {
            var _l = (_seed.length : stdgo.GoInt);
            if (_l != ((32 : stdgo.GoInt))) {
                throw stdgo.Go.toInterface((("ed25519: bad seed length: " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_l)?.__copy__() : stdgo.GoString));
            };
        };
        var _h = stdgo._internal.crypto.sha512.Sha512_sum512.sum512(_seed)?.__copy__();
        var __tmp__ = _internal.crypto.internal.edwards25519.Edwards25519_newScalar.newScalar().setBytesWithClamping((_h.__slice__(0, (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(("ed25519: internal error: setting scalar failed" : stdgo.GoString));
        };
        var a = (stdgo.Go.setRef((new _internal.crypto.internal.edwards25519.Edwards25519_Point.Point() : _internal.crypto.internal.edwards25519.Edwards25519_Point.Point)) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>).scalarBaseMult(_s);
        var _publicKey = a.bytes();
        stdgo.Go.copySlice(_privateKey, _seed);
        stdgo.Go.copySlice((_privateKey.__slice__((32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _publicKey);
    }