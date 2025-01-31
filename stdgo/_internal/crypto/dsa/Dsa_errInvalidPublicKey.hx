package stdgo._internal.crypto.dsa;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.math.big.Big;
import stdgo._internal.crypto.internal.randutil.Randutil;
var errInvalidPublicKey : stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("crypto/dsa: invalid public key" : stdgo.GoString));
