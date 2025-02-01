package stdgo._internal.crypto.ed25519;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.crypto.sha512.Sha512;
import stdgo._internal.crypto.internal.edwards25519.Edwards25519;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.subtle.Subtle;
function _newKeyFromSeed(_privateKey:stdgo.Slice<stdgo.GoUInt8>, _seed:stdgo.Slice<stdgo.GoUInt8>):Void {
        {
            var _l = (_seed.length : stdgo.GoInt);
            if (_l != ((32 : stdgo.GoInt))) {
                throw stdgo.Go.toInterface((("ed25519: bad seed length: " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_l)?.__copy__() : stdgo.GoString));
            };
        };
        var _h = stdgo._internal.crypto.sha512.Sha512_sum512.sum512(_seed)?.__copy__();
        var __tmp__ = @:check2r stdgo._internal.crypto.internal.edwards25519.Edwards25519_newScalar.newScalar().setBytesWithClamping((_h.__slice__(0, (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(("ed25519: internal error: setting scalar failed" : stdgo.GoString));
        };
        var a = @:check2r (stdgo.Go.setRef((new stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point)) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>).scalarBaseMult(_s);
        var _publicKey = @:check2r a.bytes();
        _privateKey.__copyTo__(_seed);
        (_privateKey.__slice__((32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_publicKey);
    }
