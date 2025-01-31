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
function _parseBasicConstraintsExtension(_der:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_):{ var _0 : Bool; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        var _isCA:Bool = false;
        var _isCA__pointer__ = stdgo.Go.pointer(_isCA);
        if (!@:check2 _der.readASN1((stdgo.Go.setRef(_der) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            return { _0 : false, _1 : (0 : stdgo.GoInt), _2 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid basic constraints" : stdgo.GoString)) };
        };
        if (_der.peekASN1Tag((1 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            if (!@:check2 _der.readASN1Boolean(_isCA__pointer__)) {
                return { _0 : false, _1 : (0 : stdgo.GoInt), _2 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid basic constraints" : stdgo.GoString)) };
            };
        };
        var _maxPathLen = (-1 : stdgo.GoInt);
        var _maxPathLen__pointer__ = stdgo.Go.pointer(_maxPathLen);
        if (_der.peekASN1Tag((2 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            if (!@:check2 _der.readASN1Integer(stdgo.Go.toInterface(_maxPathLen__pointer__))) {
                return { _0 : false, _1 : (0 : stdgo.GoInt), _2 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid basic constraints" : stdgo.GoString)) };
            };
        };
        return { _0 : _isCA, _1 : _maxPathLen, _2 : (null : stdgo.Error) };
    }
