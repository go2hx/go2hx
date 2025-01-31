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
function _marshalECPrivateKeyWithOID(_key:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>, _oid:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        if (!(@:checkr _key ?? throw "null pointer dereference").publicKey.curve.isOnCurve((@:checkr _key ?? throw "null pointer dereference").publicKey.x, (@:checkr _key ?? throw "null pointer dereference").publicKey.y)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("invalid elliptic key public key" : stdgo.GoString)) };
        };
        var _privateKey = (new stdgo.Slice<stdgo.GoUInt8>((((@:check2r (@:checkr _key ?? throw "null pointer dereference").publicKey.curve.params().n.bitLen() + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(({ version : (1 : stdgo.GoInt), privateKey : @:check2r (@:checkr _key ?? throw "null pointer dereference").d.fillBytes(_privateKey), namedCurveOID : _oid, publicKey : ({ bytes : stdgo._internal.crypto.elliptic.Elliptic_marshal.marshal((@:checkr _key ?? throw "null pointer dereference").publicKey.curve, (@:checkr _key ?? throw "null pointer dereference").publicKey.x, (@:checkr _key ?? throw "null pointer dereference").publicKey.y) } : stdgo._internal.encoding.asn1.Asn1_BitString.BitString) } : stdgo._internal.crypto.x509.X509_T_ecPrivateKey.T_ecPrivateKey))));
    }
