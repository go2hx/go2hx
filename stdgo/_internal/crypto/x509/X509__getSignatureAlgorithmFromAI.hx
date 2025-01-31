package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.des.Des;
import stdgo._internal.crypto.aes.Aes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.crypto.elliptic.Elliptic;
import stdgo._internal.crypto.ecdh.Ecdh;
import stdgo._internal.net.url.Url;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.crypto.cipher.Cipher;
import stdgo._internal.io.Io;
import stdgo._internal.crypto.ed25519.Ed25519;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.crypto.rsa.Rsa;
import stdgo._internal.crypto.ecdsa.Ecdsa;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.encoding.pem.Pem;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
function _getSignatureAlgorithmFromAI(_ai:stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier):stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm {
        if (_ai.algorithm.equal(stdgo._internal.crypto.x509.X509__oidSignatureEd25519._oidSignatureEd25519)) {
            if ((_ai.parameters.fullBytes.length) != ((0 : stdgo.GoInt))) {
                return (0 : stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm);
            };
        };
        if (!_ai.algorithm.equal(stdgo._internal.crypto.x509.X509__oidSignatureRSAPSS._oidSignatureRSAPSS)) {
            for (__1 => _details in stdgo._internal.crypto.x509.X509__signatureAlgorithmDetails._signatureAlgorithmDetails) {
                if (_ai.algorithm.equal(_details._oid)) {
                    return _details._algo;
                };
            };
            return (0 : stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm);
        };
        var _params:stdgo._internal.crypto.x509.X509_T_pssParameters.T_pssParameters = ({} : stdgo._internal.crypto.x509.X509_T_pssParameters.T_pssParameters);
        {
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_ai.parameters.fullBytes, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_params) : stdgo.Ref<stdgo._internal.crypto.x509.X509_T_pssParameters.T_pssParameters>)))), __1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return (0 : stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm);
            };
        };
        var _mgf1HashFunc:stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier = ({} : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier);
        {
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_params.mGF.parameters.fullBytes, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_mgf1HashFunc) : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier>)))), __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return (0 : stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm);
            };
        };
        if ((((((((_params.hash.parameters.fullBytes.length != (0 : stdgo.GoInt)) && !stdgo._internal.bytes.Bytes_equal.equal(_params.hash.parameters.fullBytes, stdgo._internal.encoding.asn1.Asn1_nullBytes.nullBytes) : Bool)) || !_params.mGF.algorithm.equal(stdgo._internal.crypto.x509.X509__oidMGF1._oidMGF1) : Bool) || !_mgf1HashFunc.algorithm.equal(_params.hash.algorithm) : Bool) || (((_mgf1HashFunc.parameters.fullBytes.length != (0 : stdgo.GoInt)) && !stdgo._internal.bytes.Bytes_equal.equal(_mgf1HashFunc.parameters.fullBytes, stdgo._internal.encoding.asn1.Asn1_nullBytes.nullBytes) : Bool)) : Bool) || (_params.trailerField != (1 : stdgo.GoInt)) : Bool)) {
            return (0 : stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm);
        };
        if ((_params.hash.algorithm.equal(stdgo._internal.crypto.x509.X509__oidSHA256._oidSHA256) && (_params.saltLength == (32 : stdgo.GoInt)) : Bool)) {
            return (13 : stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm);
        } else if ((_params.hash.algorithm.equal(stdgo._internal.crypto.x509.X509__oidSHA384._oidSHA384) && (_params.saltLength == (48 : stdgo.GoInt)) : Bool)) {
            return (14 : stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm);
        } else if ((_params.hash.algorithm.equal(stdgo._internal.crypto.x509.X509__oidSHA512._oidSHA512) && (_params.saltLength == (64 : stdgo.GoInt)) : Bool)) {
            return (15 : stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm);
        };
        return (0 : stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm);
    }
