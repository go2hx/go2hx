package stdgo._internal.crypto.elliptic;
import _internal.crypto.internal.nistec.Nistec;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function p256():stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve {
        @:check2 stdgo._internal.crypto.elliptic.Elliptic__initonce._initonce.do_(stdgo._internal.crypto.elliptic.Elliptic__initAll._initAll);
        return stdgo.Go.asInterface(stdgo._internal.crypto.elliptic.Elliptic__p256._p256);
    }
