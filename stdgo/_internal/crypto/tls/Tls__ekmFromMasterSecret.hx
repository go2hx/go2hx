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
function _ekmFromMasterSecret(_version:stdgo.GoUInt16, _suite:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite>, _masterSecret:stdgo.Slice<stdgo.GoUInt8>, _clientRandom:stdgo.Slice<stdgo.GoUInt8>, _serverRandom:stdgo.Slice<stdgo.GoUInt8>):(stdgo.GoString, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        return function(_label:stdgo.GoString, _context:stdgo.Slice<stdgo.GoUInt8>, _length:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
            {
                final __value__ = _label;
                if (__value__ == (("client finished" : stdgo.GoString)) || __value__ == (("server finished" : stdgo.GoString)) || __value__ == (("master secret" : stdgo.GoString)) || __value__ == (("key expansion" : stdgo.GoString))) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("crypto/tls: reserved ExportKeyingMaterial label: %s" : stdgo.GoString), stdgo.Go.toInterface(_label)) };
                };
            };
            var _seedLen = ((_serverRandom.length) + (_clientRandom.length) : stdgo.GoInt);
            if (_context != null) {
                _seedLen = (_seedLen + (((2 : stdgo.GoInt) + (_context.length) : stdgo.GoInt)) : stdgo.GoInt);
            };
            var _seed = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _seedLen).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            _seed = (_seed.__append__(...(_clientRandom : Array<stdgo.GoUInt8>)));
            _seed = (_seed.__append__(...(_serverRandom : Array<stdgo.GoUInt8>)));
            if (_context != null) {
                if (((_context.length) >= (65536 : stdgo.GoInt) : Bool)) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("crypto/tls: ExportKeyingMaterial context too long" : stdgo.GoString)) };
                };
                _seed = (_seed.__append__((((_context.length) >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8), (_context.length : stdgo.GoUInt8)));
                _seed = (_seed.__append__(...(_context : Array<stdgo.GoUInt8>)));
            };
            var _keyMaterial = (new stdgo.Slice<stdgo.GoUInt8>((_length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            stdgo._internal.crypto.tls.Tls__prfForVersion._prfForVersion(_version, _suite)(_keyMaterial, _masterSecret, (_label : stdgo.Slice<stdgo.GoUInt8>), _seed);
            return { _0 : _keyMaterial, _1 : (null : stdgo.Error) };
        };
    }
