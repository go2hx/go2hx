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
function marshalPKIXPublicKey(_pub:stdgo.AnyInterface):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _publicKeyBytes:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _publicKeyAlgorithm:stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier = ({} : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__marshalPublicKey._marshalPublicKey(_pub);
                _publicKeyBytes = @:tmpset0 __tmp__._0;
                _publicKeyAlgorithm = @:tmpset0 __tmp__._1?.__copy__();
                _err = @:tmpset0 __tmp__._2;
            };
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
        };
        var _pkix = ({ algo : _publicKeyAlgorithm?.__copy__(), bitString : ({ bytes : _publicKeyBytes, bitLength : ((8 : stdgo.GoInt) * (_publicKeyBytes.length) : stdgo.GoInt) } : stdgo._internal.encoding.asn1.Asn1_BitString.BitString) } : stdgo._internal.crypto.x509.X509_T_pkixPublicKey.T_pkixPublicKey);
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_pkix))), _ret:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __1:stdgo.Error = __tmp__._1;
        return { _0 : _ret, _1 : (null : stdgo.Error) };
    }
