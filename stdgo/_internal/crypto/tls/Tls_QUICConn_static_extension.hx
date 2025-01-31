package stdgo._internal.crypto.tls;
import stdgo._internal.internal.cpu.Cpu;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.crypto.ecdsa.Ecdsa;
import stdgo._internal.crypto.ed25519.Ed25519;
import stdgo._internal.crypto.rsa.Rsa;
import stdgo._internal.io.Io;
import stdgo._internal.crypto.elliptic.Elliptic;
import stdgo._internal.crypto.rc4.Rc4;
import stdgo._internal.crypto.des.Des;
import stdgo._internal.crypto.cipher.Cipher;
import stdgo._internal.crypto.aes.Aes;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.hmac.Hmac;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.internal.boring.Boring;
import _internal.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305;
import stdgo._internal.container.list.List;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.crypto.ecdh.Ecdh;
import stdgo._internal.crypto.sha512.Sha512;
import stdgo._internal.context.Context;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.pem.Pem;
import stdgo._internal.crypto.x509.X509;
import stdgo._internal.runtime.Runtime;
import _internal.golang_dot_org.x.crypto.hkdf.Hkdf;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.time.Time;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.encoding.binary.Binary;
import _internal.golang_dot_org.x.crypto.cryptobyte.Cryptobyte;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.QUICConn_asInterface) class QUICConn_static_extension {
    @:keep
    @:tdfield
    static public function setTransportParameters( _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn>, _params:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn> = _q;
        if (_params == null) {
            _params = (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        (@:checkr (@:checkr (@:checkr _q ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._transportParams = _params;
        if ((@:checkr (@:checkr (@:checkr _q ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._started) {
            (@:checkr (@:checkr (@:checkr _q ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._signalc.__get__();
            (@:checkr (@:checkr (@:checkr _q ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._blockedc.__get__();
        };
    }
    @:keep
    @:tdfield
    static public function connectionState( _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn>):stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState {
        @:recv var _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn> = _q;
        return @:check2r (@:checkr _q ?? throw "null pointer dereference")._conn.connectionState()?.__copy__();
    }
    @:keep
    @:tdfield
    static public function sendSessionTicket( _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn>, _opts:stdgo._internal.crypto.tls.Tls_QUICSessionTicketOptions.QUICSessionTicketOptions):stdgo.Error {
        @:recv var _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn> = _q;
        var _c = (@:checkr _q ?? throw "null pointer dereference")._conn;
        if (!@:check2 (@:checkr _c ?? throw "null pointer dereference")._isHandshakeComplete.load()) {
            return stdgo._internal.crypto.tls.Tls__quicError._quicError(stdgo._internal.errors.Errors_new_.new_(("tls: SendSessionTicket called before handshake completed" : stdgo.GoString)));
        };
        if ((@:checkr _c ?? throw "null pointer dereference")._isClient) {
            return stdgo._internal.crypto.tls.Tls__quicError._quicError(stdgo._internal.errors.Errors_new_.new_(("tls: SendSessionTicket called on the client" : stdgo.GoString)));
        };
        if ((@:checkr _q ?? throw "null pointer dereference")._sessionTicketSent) {
            return stdgo._internal.crypto.tls.Tls__quicError._quicError(stdgo._internal.errors.Errors_new_.new_(("tls: SendSessionTicket called multiple times" : stdgo.GoString)));
        };
        (@:checkr _q ?? throw "null pointer dereference")._sessionTicketSent = true;
        return stdgo._internal.crypto.tls.Tls__quicError._quicError(@:check2r _c._sendSessionTicket(_opts.earlyData));
    }
    @:keep
    @:tdfield
    static public function handleData( _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn>, _level:stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn> = _q;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _c = (@:checkr _q ?? throw "null pointer dereference")._conn;
            if ((@:checkr _c ?? throw "null pointer dereference")._in._level != (_level)) {
                return stdgo._internal.crypto.tls.Tls__quicError._quicError(@:check2 (@:checkr _c ?? throw "null pointer dereference")._in._setErrorLocked(stdgo._internal.errors.Errors_new_.new_(("tls: handshake data received at wrong level" : stdgo.GoString))));
            };
            (@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._readbuf = _data;
            (@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._signalc.__get__();
            var __tmp__ = (@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._blockedc.__smartGet__(), __113 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return (null : stdgo.Error);
            };
            @:check2 (@:checkr _c ?? throw "null pointer dereference")._handshakeMutex.lock();
            {
                final __f__ = @:check2 (@:checkr _c ?? throw "null pointer dereference")._handshakeMutex.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            @:check2 (@:checkr _c ?? throw "null pointer dereference")._hand.write((@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._readbuf);
            (@:checkr (@:checkr _c ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._readbuf = (null : stdgo.Slice<stdgo.GoUInt8>);
            while (((@:check2 (@:checkr (@:checkr _q ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._hand.len() >= (4 : stdgo.GoInt) : Bool) && ((@:checkr (@:checkr _q ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._handshakeErr == null) : Bool)) {
                var _b = @:check2 (@:checkr (@:checkr _q ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._hand.bytes();
                var _n = ((((_b[(1 : stdgo.GoInt)] : stdgo.GoInt) << (16i64 : stdgo.GoUInt64) : stdgo.GoInt) | ((_b[(2 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt) | (_b[(3 : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
                if ((_n > (65536 : stdgo.GoInt) : Bool)) {
                    (@:checkr (@:checkr _q ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._handshakeErr = stdgo._internal.fmt.Fmt_errorf.errorf(("tls: handshake message of length %d bytes exceeds maximum of %d bytes" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((65536 : stdgo.GoInt)));
                    break;
                };
                if (((_b.length) < ((4 : stdgo.GoInt) + _n : stdgo.GoInt) : Bool)) {
                    {
                        final __ret__:stdgo.Error = (null : stdgo.Error);
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                {
                    var _err = (@:check2r (@:checkr _q ?? throw "null pointer dereference")._conn._handlePostHandshakeMessage() : stdgo.Error);
                    if (_err != null) {
                        (@:checkr (@:checkr _q ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._handshakeErr = _err;
                    };
                };
            };
            if ((@:checkr (@:checkr _q ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._handshakeErr != null) {
                {
                    final __ret__:stdgo.Error = stdgo._internal.crypto.tls.Tls__quicError._quicError((@:checkr (@:checkr _q ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._handshakeErr);
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
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
                return (null : stdgo.Error);
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
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function close( _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn>):stdgo.Error {
        @:recv var _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn> = _q;
        if ((@:checkr (@:checkr (@:checkr _q ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._cancel == null) {
            return (null : stdgo.Error);
        };
        (@:checkr (@:checkr (@:checkr _q ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._cancel();
        for (_ => _ in (@:checkr (@:checkr (@:checkr _q ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._blockedc) {};
        return (@:checkr (@:checkr _q ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._handshakeErr;
    }
    @:keep
    @:tdfield
    static public function nextEvent( _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn>):stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent {
        @:recv var _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn> = _q;
        var _qs = (@:checkr (@:checkr _q ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._quic;
        {
            var _last = ((@:checkr _qs ?? throw "null pointer dereference")._nextEvent - (1 : stdgo.GoInt) : stdgo.GoInt);
            if (((_last >= (0 : stdgo.GoInt) : Bool) && (((@:checkr _qs ?? throw "null pointer dereference")._events[(_last : stdgo.GoInt)].data.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                (@:checkr _qs ?? throw "null pointer dereference")._events[(_last : stdgo.GoInt)].data[(0 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            };
        };
        if (((@:checkr _qs ?? throw "null pointer dereference")._nextEvent >= ((@:checkr _qs ?? throw "null pointer dereference")._events.length) : Bool)) {
            (@:checkr _qs ?? throw "null pointer dereference")._events = ((@:checkr _qs ?? throw "null pointer dereference")._events.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent>);
            (@:checkr _qs ?? throw "null pointer dereference")._nextEvent = (0 : stdgo.GoInt);
            return ({ kind : (0 : stdgo._internal.crypto.tls.Tls_QUICEventKind.QUICEventKind) } : stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent);
        };
        var _e = ((@:checkr _qs ?? throw "null pointer dereference")._events[((@:checkr _qs ?? throw "null pointer dereference")._nextEvent : stdgo.GoInt)] : stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent);
        (@:checkr _qs ?? throw "null pointer dereference")._events[((@:checkr _qs ?? throw "null pointer dereference")._nextEvent : stdgo.GoInt)] = (new stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent() : stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent);
        (@:checkr _qs ?? throw "null pointer dereference")._nextEvent++;
        return _e?.__copy__();
    }
    @:keep
    @:tdfield
    static public function start( _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn>, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        @:recv var _q:stdgo.Ref<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn> = _q;
        if ((@:checkr (@:checkr (@:checkr _q ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._started) {
            return stdgo._internal.crypto.tls.Tls__quicError._quicError(stdgo._internal.errors.Errors_new_.new_(("tls: Start called more than once" : stdgo.GoString)));
        };
        (@:checkr (@:checkr (@:checkr _q ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._started = true;
        if (((@:checkr (@:checkr (@:checkr _q ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._config ?? throw "null pointer dereference").minVersion < (772 : stdgo.GoUInt16) : Bool)) {
            return stdgo._internal.crypto.tls.Tls__quicError._quicError(stdgo._internal.errors.Errors_new_.new_(("tls: Config MinVersion must be at least TLS 1.13" : stdgo.GoString)));
        };
        stdgo.Go.routine(() -> @:check2r (@:checkr _q ?? throw "null pointer dereference")._conn.handshakeContext(_ctx));
        {
            var __tmp__ = (@:checkr (@:checkr (@:checkr _q ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._quic ?? throw "null pointer dereference")._blockedc.__smartGet__(), __165 = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                return (@:checkr (@:checkr _q ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._handshakeErr;
            };
        };
        return (null : stdgo.Error);
    }
}
