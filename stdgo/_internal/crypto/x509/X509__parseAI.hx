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
function _parseAI(_der:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_):{ var _0 : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier; var _1 : stdgo.Error; } {
        var _ai = (new stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier() : stdgo._internal.crypto.x509.pkix.Pkix_AlgorithmIdentifier.AlgorithmIdentifier);
        if (!@:check2 _der.readASN1ObjectIdentifier((stdgo.Go.setRef(_ai.algorithm) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>))) {
            return { _0 : _ai?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed OID" : stdgo.GoString)) };
        };
        if (_der.empty()) {
            return { _0 : _ai?.__copy__(), _1 : (null : stdgo.Error) };
        };
        var _params:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        var _tag:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag = ((0 : stdgo.GoUInt8) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag);
        var _tag__pointer__ = stdgo.Go.pointer(_tag);
        if (!@:check2 _der.readAnyASN1Element((stdgo.Go.setRef(_params) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), _tag__pointer__)) {
            return { _0 : _ai?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed parameters" : stdgo.GoString)) };
        };
        _ai.parameters.tag = (_tag : stdgo.GoInt);
        _ai.parameters.fullBytes = _params;
        return { _0 : _ai?.__copy__(), _1 : (null : stdgo.Error) };
    }
