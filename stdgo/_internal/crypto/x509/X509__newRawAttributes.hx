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
function _newRawAttributes(_attributes:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValueSET.AttributeTypeAndValueSET>):{ var _0 : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>; var _1 : stdgo.Error; } {
        var _rawAttributes:stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue> = (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>);
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(_attributes)), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>), _1 : _err };
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_b, stdgo.Go.toInterface((stdgo.Go.setRef(_rawAttributes) : stdgo.Ref<stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>>))), _rest:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>), _1 : _err };
        };
        if ((_rest.length) != ((0 : stdgo.GoInt))) {
            return { _0 : (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: failed to unmarshal raw CSR Attributes" : stdgo.GoString)) };
        };
        return { _0 : _rawAttributes, _1 : (null : stdgo.Error) };
    }
