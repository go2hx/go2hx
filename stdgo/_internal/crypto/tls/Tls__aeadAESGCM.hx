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
function _aeadAESGCM(_key:stdgo.Slice<stdgo.GoUInt8>, _noncePrefix:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.tls.Tls_T_aead.T_aead {
        if ((_noncePrefix.length) != ((4 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("tls: internal error: wrong nonce length" : stdgo.GoString));
        };
        var __tmp__ = stdgo._internal.crypto.aes.Aes_newCipher.newCipher(_key), _aes:stdgo._internal.crypto.cipher.Cipher_Block.Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        var _aead:stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD = (null : stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD);
        if (false) {
            {
                var __tmp__ = stdgo._internal.crypto.internal.boring.Boring_newGCMTLS.newGCMTLS(_aes);
                _aead = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        } else {
            stdgo._internal.crypto.internal.boring.Boring_unreachable.unreachable();
            {
                var __tmp__ = stdgo._internal.crypto.cipher.Cipher_newGCM.newGCM(_aes);
                _aead = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        };
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        var _ret = (stdgo.Go.setRef(({ _aead : _aead } : stdgo._internal.crypto.tls.Tls_T_prefixNonceAEAD.T_prefixNonceAEAD)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_prefixNonceAEAD.T_prefixNonceAEAD>);
        ((@:checkr _ret ?? throw "null pointer dereference")._nonce.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_noncePrefix);
        return stdgo.Go.asInterface(_ret);
    }
