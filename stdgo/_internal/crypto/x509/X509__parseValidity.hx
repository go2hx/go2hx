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
function _parseValidity(_der:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_):{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : stdgo._internal.time.Time_Time.Time; var _2 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.crypto.x509.X509__parseTime._parseTime((stdgo.Go.setRef(_der) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>)), _notBefore:stdgo._internal.time.Time_Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time), _1 : (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time), _2 : _err };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__parseTime._parseTime((stdgo.Go.setRef(_der) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>)), _notAfter:stdgo._internal.time.Time_Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time), _1 : (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time), _2 : _err };
        };
        return { _0 : _notBefore?.__copy__(), _1 : _notAfter?.__copy__(), _2 : (null : stdgo.Error) };
    }
