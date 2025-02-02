package stdgo._internal.crypto.x509;
function _isIA5String(_s:stdgo.GoString):stdgo.Error {
        for (__1 => _r in _s) {
            if ((_r > (127 : stdgo.GoInt32) : Bool)) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("x509: %q cannot be encoded as an IA5String" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
        };
        return (null : stdgo.Error);
    }
