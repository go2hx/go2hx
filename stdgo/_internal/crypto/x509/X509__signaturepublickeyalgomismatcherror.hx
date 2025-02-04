package stdgo._internal.crypto.x509;
function _signaturePublicKeyAlgoMismatchError(_expectedPubKeyAlgo:stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm, _pubKey:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.fmt.Fmt_errorf.errorf(("x509: signature algorithm specifies an %s public key, but have public key of type %T" : stdgo.GoString), stdgo.Go.toInterface((_expectedPubKeyAlgo.string() : stdgo.GoString)), _pubKey);
    }
