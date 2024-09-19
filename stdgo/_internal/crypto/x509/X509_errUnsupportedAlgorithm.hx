package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
var errUnsupportedAlgorithm : stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("x509: cannot verify signature: algorithm unimplemented" : stdgo.GoString));
