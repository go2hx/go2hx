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
function x509KeyPair(_certPEMBlock:stdgo.Slice<stdgo.GoUInt8>, _keyPEMBlock:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.crypto.tls.Tls_Certificate.Certificate; var _1 : stdgo.Error; } {
        var _fail = (function(_err:stdgo.Error):{ var _0 : stdgo._internal.crypto.tls.Tls_Certificate.Certificate; var _1 : stdgo.Error; } {
            return { _0 : (new stdgo._internal.crypto.tls.Tls_Certificate.Certificate() : stdgo._internal.crypto.tls.Tls_Certificate.Certificate), _1 : _err };
        } : stdgo.Error -> { var _0 : stdgo._internal.crypto.tls.Tls_Certificate.Certificate; var _1 : stdgo.Error; });
        var _cert:stdgo._internal.crypto.tls.Tls_Certificate.Certificate = ({} : stdgo._internal.crypto.tls.Tls_Certificate.Certificate);
        var _skippedBlockTypes:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        while (true) {
            var _certDERBlock:stdgo.Ref<stdgo._internal.encoding.pem.Pem_Block.Block> = (null : stdgo.Ref<stdgo._internal.encoding.pem.Pem_Block.Block>);
            {
                var __tmp__ = stdgo._internal.encoding.pem.Pem_decode.decode(_certPEMBlock);
                _certDERBlock = @:tmpset0 __tmp__._0;
                _certPEMBlock = @:tmpset0 __tmp__._1;
            };
            if ((_certDERBlock == null || (_certDERBlock : Dynamic).__nil__)) {
                break;
            };
            if ((@:checkr _certDERBlock ?? throw "null pointer dereference").type == (("CERTIFICATE" : stdgo.GoString))) {
                _cert.certificate = (_cert.certificate.__append__((@:checkr _certDERBlock ?? throw "null pointer dereference").bytes));
            } else {
                _skippedBlockTypes = (_skippedBlockTypes.__append__((@:checkr _certDERBlock ?? throw "null pointer dereference").type?.__copy__()));
            };
        };
        if ((_cert.certificate.length) == ((0 : stdgo.GoInt))) {
            if ((_skippedBlockTypes.length) == ((0 : stdgo.GoInt))) {
                return _fail(stdgo._internal.errors.Errors_new_.new_(("tls: failed to find any PEM data in certificate input" : stdgo.GoString)));
            };
            if (((_skippedBlockTypes.length == (1 : stdgo.GoInt)) && stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_skippedBlockTypes[(0 : stdgo.GoInt)]?.__copy__(), ("PRIVATE KEY" : stdgo.GoString)) : Bool)) {
                return _fail(stdgo._internal.errors.Errors_new_.new_(("tls: failed to find certificate PEM data in certificate input, but did find a private key; PEM inputs may have been switched" : stdgo.GoString)));
            };
            return _fail(stdgo._internal.fmt.Fmt_errorf.errorf(("tls: failed to find \"CERTIFICATE\" PEM block in certificate input after skipping PEM blocks of the following types: %v" : stdgo.GoString), stdgo.Go.toInterface(_skippedBlockTypes)));
        };
        _skippedBlockTypes = (_skippedBlockTypes.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
        var _keyDERBlock:stdgo.Ref<stdgo._internal.encoding.pem.Pem_Block.Block> = (null : stdgo.Ref<stdgo._internal.encoding.pem.Pem_Block.Block>);
        while (true) {
            {
                var __tmp__ = stdgo._internal.encoding.pem.Pem_decode.decode(_keyPEMBlock);
                _keyDERBlock = @:tmpset0 __tmp__._0;
                _keyPEMBlock = @:tmpset0 __tmp__._1;
            };
            if ((_keyDERBlock == null || (_keyDERBlock : Dynamic).__nil__)) {
                if ((_skippedBlockTypes.length) == ((0 : stdgo.GoInt))) {
                    return _fail(stdgo._internal.errors.Errors_new_.new_(("tls: failed to find any PEM data in key input" : stdgo.GoString)));
                };
                if (((_skippedBlockTypes.length == (1 : stdgo.GoInt)) && (_skippedBlockTypes[(0 : stdgo.GoInt)] == ("CERTIFICATE" : stdgo.GoString)) : Bool)) {
                    return _fail(stdgo._internal.errors.Errors_new_.new_(("tls: found a certificate rather than a key in the PEM for the private key" : stdgo.GoString)));
                };
                return _fail(stdgo._internal.fmt.Fmt_errorf.errorf(("tls: failed to find PEM block with type ending in \"PRIVATE KEY\" in key input after skipping PEM blocks of the following types: %v" : stdgo.GoString), stdgo.Go.toInterface(_skippedBlockTypes)));
            };
            if ((((@:checkr _keyDERBlock ?? throw "null pointer dereference").type == ("PRIVATE KEY" : stdgo.GoString)) || stdgo._internal.strings.Strings_hasSuffix.hasSuffix((@:checkr _keyDERBlock ?? throw "null pointer dereference").type?.__copy__(), (" PRIVATE KEY" : stdgo.GoString)) : Bool)) {
                break;
            };
            _skippedBlockTypes = (_skippedBlockTypes.__append__((@:checkr _keyDERBlock ?? throw "null pointer dereference").type?.__copy__()));
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509_parseCertificate.parseCertificate(_cert.certificate[(0 : stdgo.GoInt)]), _x509Cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _fail(_err);
        };
        {
            var __tmp__ = stdgo._internal.crypto.tls.Tls__parsePrivateKey._parsePrivateKey((@:checkr _keyDERBlock ?? throw "null pointer dereference").bytes);
            _cert.privateKey = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            return _fail(_err);
        };
        {
            final __type__ = (@:checkr _x509Cert ?? throw "null pointer dereference").publicKey;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>))) {
                var _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>) : __type__.__underlying__().value;
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_cert.privateKey : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>), _1 : false };
                }, _priv = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    return _fail(stdgo._internal.errors.Errors_new_.new_(("tls: private key type does not match public key type" : stdgo.GoString)));
                };
                if (@:check2r (@:checkr _pub ?? throw "null pointer dereference").n.cmp((@:checkr _priv ?? throw "null pointer dereference").publicKey.n) != ((0 : stdgo.GoInt))) {
                    return _fail(stdgo._internal.errors.Errors_new_.new_(("tls: private key does not match public key" : stdgo.GoString)));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>))) {
                var _pub:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey>) : __type__.__underlying__().value;
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_cert.privateKey : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>)) : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>), _1 : false };
                }, _priv = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    return _fail(stdgo._internal.errors.Errors_new_.new_(("tls: private key type does not match public key type" : stdgo.GoString)));
                };
                if (((@:check2r (@:checkr _pub ?? throw "null pointer dereference").x.cmp((@:checkr _priv ?? throw "null pointer dereference").publicKey.x) != (0 : stdgo.GoInt)) || (@:check2r (@:checkr _pub ?? throw "null pointer dereference").y.cmp((@:checkr _priv ?? throw "null pointer dereference").publicKey.y) != (0 : stdgo.GoInt)) : Bool)) {
                    return _fail(stdgo._internal.errors.Errors_new_.new_(("tls: private key does not match public key" : stdgo.GoString)));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey))) {
                var _pub:stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey = __type__ == null ? new stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey(0, 0) : __type__ == null ? new stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey(0, 0) : __type__.__underlying__().value;
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_cert.privateKey : stdgo._internal.crypto.ed25519.Ed25519_PrivateKey.PrivateKey)) : stdgo._internal.crypto.ed25519.Ed25519_PrivateKey.PrivateKey), _1 : true };
                } catch(_) {
                    { _0 : new stdgo._internal.crypto.ed25519.Ed25519_PrivateKey.PrivateKey(0, 0), _1 : false };
                }, _priv = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    return _fail(stdgo._internal.errors.Errors_new_.new_(("tls: private key type does not match public key type" : stdgo.GoString)));
                };
                if (!stdgo._internal.bytes.Bytes_equal.equal((stdgo.Go.typeAssert((_priv.public_() : stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey)) : stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey), _pub)) {
                    return _fail(stdgo._internal.errors.Errors_new_.new_(("tls: private key does not match public key" : stdgo.GoString)));
                };
            } else {
                var _pub:stdgo.AnyInterface = __type__?.__underlying__();
                return _fail(stdgo._internal.errors.Errors_new_.new_(("tls: unknown public key algorithm" : stdgo.GoString)));
            };
        };
        return { _0 : _cert?.__copy__(), _1 : (null : stdgo.Error) };
    }
