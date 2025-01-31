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
function _matchDomainConstraint(_domain:stdgo.GoString, _constraint:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        if ((_constraint.length) == ((0 : stdgo.GoInt))) {
            return { _0 : true, _1 : (null : stdgo.Error) };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_domain?.__copy__()), _domainLabels:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return { _0 : false, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: internal error: cannot parse domain %q" : stdgo.GoString), stdgo.Go.toInterface(_domain)) };
        };
        var _mustHaveSubdomains = (false : Bool);
        if (_constraint[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8))) {
            _mustHaveSubdomains = true;
            _constraint = (_constraint.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_constraint?.__copy__()), _constraintLabels:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return { _0 : false, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: internal error: cannot parse domain %q" : stdgo.GoString), stdgo.Go.toInterface(_constraint)) };
        };
        if ((((_domainLabels.length) < (_constraintLabels.length) : Bool) || ((_mustHaveSubdomains && (_domainLabels.length == (_constraintLabels.length)) : Bool)) : Bool)) {
            return { _0 : false, _1 : (null : stdgo.Error) };
        };
        for (_i => _constraintLabel in _constraintLabels) {
            if (!stdgo._internal.strings.Strings_equalFold.equalFold(_constraintLabel?.__copy__(), _domainLabels[(_i : stdgo.GoInt)]?.__copy__())) {
                return { _0 : false, _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : true, _1 : (null : stdgo.Error) };
    }
