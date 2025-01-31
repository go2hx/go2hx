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
function _matchURIConstraint(_uri:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, _constraint:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _host = ((@:checkr _uri ?? throw "null pointer dereference").host?.__copy__() : stdgo.GoString);
        if ((_host.length) == ((0 : stdgo.GoInt))) {
            return { _0 : false, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("URI with empty host (%q) cannot be matched against constraints" : stdgo.GoString), stdgo.Go.toInterface((@:check2r _uri.string() : stdgo.GoString))) };
        };
        if ((stdgo._internal.strings.Strings_contains.contains(_host?.__copy__(), (":" : stdgo.GoString)) && !stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_host?.__copy__(), ("]" : stdgo.GoString)) : Bool)) {
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = stdgo._internal.net.Net_splitHostPort.splitHostPort((@:checkr _uri ?? throw "null pointer dereference").host?.__copy__());
                _host = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._2;
            };
            if (_err != null) {
                return { _0 : false, _1 : _err };
            };
        };
        if (((stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_host?.__copy__(), ("[" : stdgo.GoString)) && stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_host?.__copy__(), ("]" : stdgo.GoString)) : Bool) || (stdgo._internal.net.Net_parseIP.parseIP(_host?.__copy__()) != null) : Bool)) {
            return { _0 : false, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("URI with IP (%q) cannot be matched against constraints" : stdgo.GoString), stdgo.Go.toInterface((@:check2r _uri.string() : stdgo.GoString))) };
        };
        return stdgo._internal.crypto.x509.X509__matchDomainConstraint._matchDomainConstraint(_host?.__copy__(), _constraint?.__copy__());
    }
