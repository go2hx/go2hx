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
function _domainToReverseLabels(_domain:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : Bool; } {
        var _reverseLabels = (null : stdgo.Slice<stdgo.GoString>), _ok = false;
        while (((_domain.length) > (0 : stdgo.GoInt) : Bool)) {
            {
                var _i = (stdgo._internal.strings.Strings_lastIndexByte.lastIndexByte(_domain?.__copy__(), (46 : stdgo.GoUInt8)) : stdgo.GoInt);
                if (_i == ((-1 : stdgo.GoInt))) {
                    _reverseLabels = (_reverseLabels.__append__(_domain?.__copy__()));
                    _domain = stdgo.Go.str()?.__copy__();
                } else {
                    _reverseLabels = (_reverseLabels.__append__((_domain.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()));
                    _domain = (_domain.__slice__(0, _i) : stdgo.GoString)?.__copy__();
                };
            };
        };
        if ((((_reverseLabels.length) > (0 : stdgo.GoInt) : Bool) && (_reverseLabels[(0 : stdgo.GoInt)].length == (0 : stdgo.GoInt)) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : Bool; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false };
                _reverseLabels = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        for (__1 => _label in _reverseLabels) {
            if ((_label.length) == ((0 : stdgo.GoInt))) {
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : Bool; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false };
                    _reverseLabels = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
            for (__2 => _c in _label) {
                if (((_c < (33 : stdgo.GoInt32) : Bool) || (_c > (126 : stdgo.GoInt32) : Bool) : Bool)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : Bool; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false };
                        _reverseLabels = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : Bool; } = { _0 : _reverseLabels, _1 : true };
            _reverseLabels = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
