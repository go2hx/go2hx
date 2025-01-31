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
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_listener_asInterface) class T_listener_static_extension {
    @:keep
    @:tdfield
    static public function accept( _l:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_listener.T_listener>):{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } {
        @:recv var _l:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_listener.T_listener> = _l;
        var __tmp__ = (@:checkr _l ?? throw "null pointer dereference").listener.accept(), _c:stdgo._internal.net.Net_Conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.net.Net_Conn.Conn), _1 : _err };
        };
        return { _0 : stdgo.Go.asInterface(stdgo._internal.crypto.tls.Tls_server.server(_c, (@:checkr _l ?? throw "null pointer dereference")._config)), _1 : (null : stdgo.Error) };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function close( __self__:stdgo._internal.crypto.tls.Tls_T_listener.T_listener):stdgo.Error return @:_5 __self__.close();
    @:embedded
    @:embeddededffieldsffun
    public static function addr( __self__:stdgo._internal.crypto.tls.Tls_T_listener.T_listener):stdgo._internal.net.Net_Addr.Addr return @:_5 __self__.addr();
}
