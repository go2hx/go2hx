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
function _parseASN1String(_tag:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag, _value:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        {
            final __value__ = _tag;
            if (__value__ == ((20 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
                return { _0 : (_value : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((19 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
                for (__1 => _b in _value) {
                    if (!stdgo._internal.crypto.x509.X509__isPrintable._isPrintable(_b)) {
                        return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("invalid PrintableString" : stdgo.GoString)) };
                    };
                };
                return { _0 : (_value : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((12 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
                if (!stdgo._internal.unicode.utf8.Utf8_valid.valid(_value)) {
                    return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("invalid UTF-8 string" : stdgo.GoString)) };
                };
                return { _0 : (_value : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((30 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
                if (((_value.length) % (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("invalid BMPString" : stdgo.GoString)) };
                };
                {
                    var _l = (_value.length : stdgo.GoInt);
                    if ((((_l >= (2 : stdgo.GoInt) : Bool) && _value[(_l - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((0 : stdgo.GoUInt8)) : Bool) && (_value[(_l - (2 : stdgo.GoInt) : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) : Bool)) {
                        _value = (_value.__slice__(0, (_l - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                };
                var _s = (new stdgo.Slice<stdgo.GoUInt16>((0 : stdgo.GoInt).toBasic(), ((_value.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
                while (((_value.length) > (0 : stdgo.GoInt) : Bool)) {
                    _s = (_s.__append__((((_value[(0 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) + (_value[(1 : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16)));
                    _value = (_value.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                };
                return { _0 : (stdgo._internal.unicode.utf16.Utf16_decode.decode(_s) : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((22 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
                var _s = ((_value : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (stdgo._internal.crypto.x509.X509__isIA5String._isIA5String(_s?.__copy__()) != null) {
                    return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("invalid IA5String" : stdgo.GoString)) };
                };
                return { _0 : _s?.__copy__(), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((18 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
                for (__1 => _b in _value) {
                    if (!(((((48 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_b == (32 : stdgo.GoUInt8)) : Bool))) {
                        return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("invalid NumericString" : stdgo.GoString)) };
                    };
                };
                return { _0 : (_value : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unsupported string type: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tag))) };
    }
