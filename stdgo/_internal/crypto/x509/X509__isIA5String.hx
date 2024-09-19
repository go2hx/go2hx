package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
function _isIA5String(_s:stdgo.GoString):stdgo.Error {
        for (__1 => _r in _s) {
            if ((_r > (127 : stdgo.GoInt32) : Bool)) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("x509: %q cannot be encoded as an IA5String" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
        };
        return (null : stdgo.Error);
    }
