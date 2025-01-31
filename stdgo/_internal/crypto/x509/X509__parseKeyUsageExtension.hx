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
function _parseKeyUsageExtension(_der:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_):{ var _0 : stdgo._internal.crypto.x509.X509_KeyUsage.KeyUsage; var _1 : stdgo.Error; } {
        var _usageBits:stdgo._internal.encoding.asn1.Asn1_BitString.BitString = ({} : stdgo._internal.encoding.asn1.Asn1_BitString.BitString);
        if (!@:check2 _der.readASN1BitString((stdgo.Go.setRef(_usageBits) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_BitString.BitString>))) {
            return { _0 : (0 : stdgo._internal.crypto.x509.X509_KeyUsage.KeyUsage), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid key usage" : stdgo.GoString)) };
        };
        var _usage:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (9 : stdgo.GoInt) : Bool)) {
                if (_usageBits.at(_i) != ((0 : stdgo.GoInt))) {
                    _usage = (_usage | (((1 : stdgo.GoInt) << (_i : stdgo.GoUInt) : stdgo.GoInt)) : stdgo.GoInt);
                };
                _i++;
            };
        };
        return { _0 : (_usage : stdgo._internal.crypto.x509.X509_KeyUsage.KeyUsage), _1 : (null : stdgo.Error) };
    }
