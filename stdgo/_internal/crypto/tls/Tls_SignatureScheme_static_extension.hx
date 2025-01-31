package stdgo._internal.crypto.tls;
import stdgo._internal.internal.cpu.Cpu;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.crypto.ecdsa.Ecdsa;
import stdgo._internal.crypto.ed25519.Ed25519;
import stdgo._internal.crypto.rsa.Rsa;
import stdgo._internal.io.Io;
import stdgo._internal.crypto.elliptic.Elliptic;
import stdgo._internal.crypto.rc4.Rc4;
import stdgo._internal.crypto.des.Des;
import stdgo._internal.crypto.cipher.Cipher;
import stdgo._internal.crypto.aes.Aes;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.hmac.Hmac;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.internal.boring.Boring;
import _internal.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305;
import stdgo._internal.container.list.List;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.crypto.ecdh.Ecdh;
import stdgo._internal.crypto.sha512.Sha512;
import stdgo._internal.context.Context;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.pem.Pem;
import stdgo._internal.crypto.x509.X509;
import stdgo._internal.runtime.Runtime;
import _internal.golang_dot_org.x.crypto.hkdf.Hkdf;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.time.Time;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.encoding.binary.Binary;
import _internal.golang_dot_org.x.crypto.cryptobyte.Cryptobyte;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.SignatureScheme_asInterface) class SignatureScheme_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme):stdgo.GoString {
        @:recv var _i:stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme = _i;
        if (_i == ((513 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme))) {
            return ("PKCS1WithSHA1" : stdgo.GoString);
        } else if (_i == ((515 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme))) {
            return ("ECDSAWithSHA1" : stdgo.GoString);
        } else if (_i == ((1025 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme))) {
            return ("PKCS1WithSHA256" : stdgo.GoString);
        } else if (_i == ((1027 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme))) {
            return ("ECDSAWithP256AndSHA256" : stdgo.GoString);
        } else if (_i == ((1281 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme))) {
            return ("PKCS1WithSHA384" : stdgo.GoString);
        } else if (_i == ((1283 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme))) {
            return ("ECDSAWithP384AndSHA384" : stdgo.GoString);
        } else if (_i == ((1537 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme))) {
            return ("PKCS1WithSHA512" : stdgo.GoString);
        } else if (_i == ((1539 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme))) {
            return ("ECDSAWithP521AndSHA512" : stdgo.GoString);
        } else if ((((2052 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme) <= _i : Bool) && (_i <= (2055 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme) : Bool) : Bool)) {
            _i = (_i - ((2052 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme)) : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme);
            return (("PSSWithSHA256PSSWithSHA384PSSWithSHA512Ed25519" : stdgo.GoString).__slice__(stdgo._internal.crypto.tls.Tls___SignatureScheme_index_8.__SignatureScheme_index_8[(_i : stdgo.GoInt)], stdgo._internal.crypto.tls.Tls___SignatureScheme_index_8.__SignatureScheme_index_8[((_i + (1 : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme) : stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
        } else {
            return ((("SignatureScheme(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatInt.formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
    }
}
