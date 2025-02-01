package stdgo._internal.crypto.elliptic;
import stdgo._internal.crypto.internal.nistec.Nistec;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function _initAll():Void {
        stdgo._internal.crypto.elliptic.Elliptic__initP224._initP224();
        stdgo._internal.crypto.elliptic.Elliptic__initP256._initP256();
        stdgo._internal.crypto.elliptic.Elliptic__initP384._initP384();
        stdgo._internal.crypto.elliptic.Elliptic__initP521._initP521();
    }
