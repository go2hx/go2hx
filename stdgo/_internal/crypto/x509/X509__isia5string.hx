package stdgo._internal.crypto.x509;
function _isIA5String(_s:stdgo.GoString):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1085"
        for (__1 => _r in _s) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1087"
            if ((_r > (127 : stdgo.GoInt32) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1088"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("x509: %q cannot be encoded as an IA5String" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1092"
        return (null : stdgo.Error);
    }
