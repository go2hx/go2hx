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
function _cipherByName(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.crypto.x509.X509_T_rfc1423Algo.T_rfc1423Algo> {
        for (_i => _ in stdgo._internal.crypto.x509.X509__rfc1423Algos._rfc1423Algos) {
            var _alg = (stdgo.Go.setRef(stdgo._internal.crypto.x509.X509__rfc1423Algos._rfc1423Algos[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.crypto.x509.X509_T_rfc1423Algo.T_rfc1423Algo>);
            if ((@:checkr _alg ?? throw "null pointer dereference")._name == (_name)) {
                return _alg;
            };
        };
        return null;
    }
