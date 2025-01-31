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
function _matchEmailConstraint(_mailbox:stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox, _constraint:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        if (stdgo._internal.strings.Strings_contains.contains(_constraint?.__copy__(), ("@" : stdgo.GoString))) {
            var __tmp__ = stdgo._internal.crypto.x509.X509__parseRFC2821Mailbox._parseRFC2821Mailbox(_constraint?.__copy__()), _constraintMailbox:stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                return { _0 : false, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: internal error: cannot parse constraint %q" : stdgo.GoString), stdgo.Go.toInterface(_constraint)) };
            };
            return { _0 : ((_mailbox._local == _constraintMailbox._local) && stdgo._internal.strings.Strings_equalFold.equalFold(_mailbox._domain?.__copy__(), _constraintMailbox._domain?.__copy__()) : Bool), _1 : (null : stdgo.Error) };
        };
        return stdgo._internal.crypto.x509.X509__matchDomainConstraint._matchDomainConstraint(_mailbox._domain?.__copy__(), _constraint?.__copy__());
    }
