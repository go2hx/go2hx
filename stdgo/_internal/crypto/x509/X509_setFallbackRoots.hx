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
function setFallbackRoots(_roots:stdgo.Ref<stdgo._internal.crypto.x509.X509_CertPool.CertPool>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((_roots == null || (_roots : Dynamic).__nil__)) {
                throw stdgo.Go.toInterface(("roots must be non-nil" : stdgo.GoString));
            };
            var __blank__ = stdgo._internal.crypto.x509.X509__systemRootsPool._systemRootsPool();
            @:check2 stdgo._internal.crypto.x509.X509__systemRootsMu._systemRootsMu.lock();
            {
                final __f__ = @:check2 stdgo._internal.crypto.x509.X509__systemRootsMu._systemRootsMu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if (stdgo._internal.crypto.x509.X509__fallbacksSet._fallbacksSet) {
                throw stdgo.Go.toInterface(("SetFallbackRoots has already been called" : stdgo.GoString));
            };
            stdgo._internal.crypto.x509.X509__fallbacksSet._fallbacksSet = true;
            if (((stdgo._internal.crypto.x509.X509__systemRoots._systemRoots != null && ((stdgo._internal.crypto.x509.X509__systemRoots._systemRoots : Dynamic).__nil__ == null || !(stdgo._internal.crypto.x509.X509__systemRoots._systemRoots : Dynamic).__nil__)) && (((@:check2r stdgo._internal.crypto.x509.X509__systemRoots._systemRoots._len() > (0 : stdgo.GoInt) : Bool) || (@:checkr stdgo._internal.crypto.x509.X509__systemRoots._systemRoots ?? throw "null pointer dereference")._systemPool : Bool)) : Bool)) {
                if (@:check2r stdgo._internal.crypto.x509.X509__x509usefallbackroots._x509usefallbackroots.value() != (("1" : stdgo.GoString))) {
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
                @:check2r stdgo._internal.crypto.x509.X509__x509usefallbackroots._x509usefallbackroots.incNonDefault();
            };
            {
                final __tmp__0 = _roots;
                final __tmp__1 = (null : stdgo.Error);
                stdgo._internal.crypto.x509.X509__systemRoots._systemRoots = __tmp__0;
                stdgo._internal.crypto.x509.X509__systemRootsErr._systemRootsErr = __tmp__1;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
