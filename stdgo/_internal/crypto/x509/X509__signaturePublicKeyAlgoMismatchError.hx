package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
function _signaturePublicKeyAlgoMismatchError(_expectedPubKeyAlgo:stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm, _pubKey:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.fmt.Fmt_errorf.errorf(("x509: signature algorithm specifies an %s public key, but have public key of type %T" : stdgo.GoString), stdgo.Go.toInterface((_expectedPubKeyAlgo.string() : stdgo.GoString)), _pubKey);
    }
