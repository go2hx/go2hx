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
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_prefixNonceAEAD_asInterface) class T_prefixNonceAEAD_static_extension {
    @:keep
    @:tdfield
    static public function open( _f:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_prefixNonceAEAD.T_prefixNonceAEAD>, _out:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_prefixNonceAEAD.T_prefixNonceAEAD> = _f;
        ((@:checkr _f ?? throw "null pointer dereference")._nonce.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_nonce);
        return (@:checkr _f ?? throw "null pointer dereference")._aead.open(_out, ((@:checkr _f ?? throw "null pointer dereference")._nonce.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _ciphertext, _additionalData);
    }
    @:keep
    @:tdfield
    static public function seal( _f:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_prefixNonceAEAD.T_prefixNonceAEAD>, _out:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _plaintext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _f:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_prefixNonceAEAD.T_prefixNonceAEAD> = _f;
        ((@:checkr _f ?? throw "null pointer dereference")._nonce.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_nonce);
        return (@:checkr _f ?? throw "null pointer dereference")._aead.seal(_out, ((@:checkr _f ?? throw "null pointer dereference")._nonce.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _plaintext, _additionalData);
    }
    @:keep
    @:tdfield
    static public function _explicitNonceLen( _f:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_prefixNonceAEAD.T_prefixNonceAEAD>):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_prefixNonceAEAD.T_prefixNonceAEAD> = _f;
        return @:check2r _f.nonceSize();
    }
    @:keep
    @:tdfield
    static public function overhead( _f:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_prefixNonceAEAD.T_prefixNonceAEAD>):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_prefixNonceAEAD.T_prefixNonceAEAD> = _f;
        return (@:checkr _f ?? throw "null pointer dereference")._aead.overhead();
    }
    @:keep
    @:tdfield
    static public function nonceSize( _f:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_prefixNonceAEAD.T_prefixNonceAEAD>):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_prefixNonceAEAD.T_prefixNonceAEAD> = _f;
        return (8 : stdgo.GoInt);
    }
}
