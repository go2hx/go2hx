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
function _hostnameInSNI(_name:stdgo.GoString):stdgo.GoString {
        var _host = (_name?.__copy__() : stdgo.GoString);
        if (((((_host.length) > (0 : stdgo.GoInt) : Bool) && _host[(0 : stdgo.GoInt)] == ((91 : stdgo.GoUInt8)) : Bool) && (_host[((_host.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (93 : stdgo.GoUInt8)) : Bool)) {
            _host = (_host.__slice__((1 : stdgo.GoInt), ((_host.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        {
            var _i = (stdgo._internal.strings.Strings_lastIndex.lastIndex(_host?.__copy__(), ("%" : stdgo.GoString)) : stdgo.GoInt);
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                _host = (_host.__slice__(0, _i) : stdgo.GoString)?.__copy__();
            };
        };
        if (stdgo._internal.net.Net_parseIP.parseIP(_host?.__copy__()) != null) {
            return stdgo.Go.str()?.__copy__();
        };
        while ((((_name.length) > (0 : stdgo.GoInt) : Bool) && (_name[((_name.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
            _name = (_name.__slice__(0, ((_name.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        return _name?.__copy__();
    }
