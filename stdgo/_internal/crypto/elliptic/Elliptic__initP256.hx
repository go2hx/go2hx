package stdgo._internal.crypto.elliptic;
import _internal.crypto.internal.nistec.Nistec;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function _initP256():Void {
        (@:checkr stdgo._internal.crypto.elliptic.Elliptic__p256._p256 ?? throw "null pointer dereference")._nistCurve._params = (stdgo.Go.setRef(({ name : ("P-256" : stdgo.GoString), bitSize : (256 : stdgo.GoInt), p : stdgo._internal.crypto.elliptic.Elliptic__bigFromDecimal._bigFromDecimal(("115792089210356248762697446949407573530086143415290314195533631308867097853951" : stdgo.GoString)), n : stdgo._internal.crypto.elliptic.Elliptic__bigFromDecimal._bigFromDecimal(("115792089210356248762697446949407573529996955224135760342422259061068512044369" : stdgo.GoString)), b : stdgo._internal.crypto.elliptic.Elliptic__bigFromHex._bigFromHex(("5ac635d8aa3a93e7b3ebbd55769886bc651d06b0cc53b0f63bce3c3e27d2604b" : stdgo.GoString)), gx : stdgo._internal.crypto.elliptic.Elliptic__bigFromHex._bigFromHex(("6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296" : stdgo.GoString)), gy : stdgo._internal.crypto.elliptic.Elliptic__bigFromHex._bigFromHex(("4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5" : stdgo.GoString)) } : stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams)) : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams>);
    }
