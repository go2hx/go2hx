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
@:interface typedef ClientSessionCache = stdgo.StructType & {
    /**
        Get searches for a ClientSessionState associated with the given key.
        On return, ok is true if one was found.
        
        
    **/
    @:interfacetypeffun
    public dynamic function get(_sessionKey:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState>; var _1 : Bool; };
    /**
        Put adds the ClientSessionState to the cache with the given key. It might
        get called multiple times in a connection if a TLS 1.3 server provides
        more than one session ticket. If called with a nil *ClientSessionState,
        it should remove the cache entry.
        
        
    **/
    @:interfacetypeffun
    public dynamic function put(_sessionKey:stdgo.GoString, _cs:stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientSessionState.ClientSessionState>):Void;
};
