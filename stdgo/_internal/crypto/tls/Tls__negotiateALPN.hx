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
function _negotiateALPN(_serverProtos:stdgo.Slice<stdgo.GoString>, _clientProtos:stdgo.Slice<stdgo.GoString>, _quic:Bool):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        if (((_serverProtos.length == (0 : stdgo.GoInt)) || (_clientProtos.length == (0 : stdgo.GoInt)) : Bool)) {
            if ((_quic && (_serverProtos.length != (0 : stdgo.GoInt)) : Bool)) {
                return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("tls: client did not request an application protocol" : stdgo.GoString)) };
            };
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : (null : stdgo.Error) };
        };
        var _http11fallback:Bool = false;
        for (__65 => _s in _serverProtos) {
            for (__66 => _c in _clientProtos) {
                if (_s == (_c)) {
                    return { _0 : _s?.__copy__(), _1 : (null : stdgo.Error) };
                };
                if (((_s == ("h2" : stdgo.GoString)) && (_c == ("http/1.1" : stdgo.GoString)) : Bool)) {
                    _http11fallback = true;
                };
            };
        };
        if (_http11fallback) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : (null : stdgo.Error) };
        };
        return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("tls: client requested unsupported application protocols (%s)" : stdgo.GoString), stdgo.Go.toInterface(_clientProtos)) };
    }
