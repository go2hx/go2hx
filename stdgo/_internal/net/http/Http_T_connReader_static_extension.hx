package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_connReader_asInterface) class T_connReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader> = _cr;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        @:check2r _cr._lock();
        if ((@:checkr _cr ?? throw "null pointer dereference")._inRead) {
            @:check2r _cr._unlock();
            if (@:check2r (@:checkr _cr ?? throw "null pointer dereference")._conn._hijacked()) {
                throw stdgo.Go.toInterface(("invalid Body.Read call. After hijacked, the original Request must not be used" : stdgo.GoString));
            };
            throw stdgo.Go.toInterface(("invalid concurrent Body.Read call" : stdgo.GoString));
        };
        if (@:check2r _cr._hitReadLimit()) {
            @:check2r _cr._unlock();
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eOF.eOF };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            @:check2r _cr._unlock();
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        if (((_p.length : stdgo.GoInt64) > (@:checkr _cr ?? throw "null pointer dereference")._remain : Bool)) {
            _p = (_p.__slice__(0, (@:checkr _cr ?? throw "null pointer dereference")._remain) : stdgo.Slice<stdgo.GoUInt8>);
        };
        if ((@:checkr _cr ?? throw "null pointer dereference")._hasByte) {
            _p[(0 : stdgo.GoInt)] = (@:checkr _cr ?? throw "null pointer dereference")._byteBuf[(0 : stdgo.GoInt)];
            (@:checkr _cr ?? throw "null pointer dereference")._hasByte = false;
            @:check2r _cr._unlock();
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (1 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        (@:checkr _cr ?? throw "null pointer dereference")._inRead = true;
        @:check2r _cr._unlock();
        {
            var __tmp__ = (@:checkr (@:checkr _cr ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._rwc.read(_p);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        @:check2r _cr._lock();
        (@:checkr _cr ?? throw "null pointer dereference")._inRead = false;
        if (_err != null) {
            @:check2r _cr._handleReadError(_err);
        };
        (@:checkr _cr ?? throw "null pointer dereference")._remain = ((@:checkr _cr ?? throw "null pointer dereference")._remain - ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        @:check2r _cr._unlock();
        @:check2r (@:checkr _cr ?? throw "null pointer dereference")._cond.broadcast();
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _closeNotify( _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader>):Void {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader> = _cr;
        var _res = @:check2 (@:checkr (@:checkr _cr ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._curReq.load();
        if (((_res != null && ((_res : Dynamic).__nil__ == null || !(_res : Dynamic).__nil__)) && !@:check2 (@:checkr _res ?? throw "null pointer dereference")._didCloseNotify.swap(true) : Bool)) {
            (@:checkr _res ?? throw "null pointer dereference")._closeNotifyCh.__send__(true);
        };
    }
    @:keep
    @:tdfield
    static public function _handleReadError( _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader>, __34297:stdgo.Error):Void {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader> = _cr;
        (@:checkr (@:checkr _cr ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._cancelCtx();
        @:check2r _cr._closeNotify();
    }
    @:keep
    @:tdfield
    static public function _hitReadLimit( _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader>):Bool {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader> = _cr;
        return ((@:checkr _cr ?? throw "null pointer dereference")._remain <= (0i64 : stdgo.GoInt64) : Bool);
    }
    @:keep
    @:tdfield
    static public function _setInfiniteReadLimit( _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader>):Void {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader> = _cr;
        (@:checkr _cr ?? throw "null pointer dereference")._remain = (9223372036854775807i64 : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function _setReadLimit( _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader>, _remain:stdgo.GoInt64):Void {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader> = _cr;
        (@:checkr _cr ?? throw "null pointer dereference")._remain = _remain;
    }
    @:keep
    @:tdfield
    static public function _abortPendingRead( _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader>):Void {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader> = _cr;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2r _cr._lock();
            {
                final __f__ = @:check2r _cr._unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if (!(@:checkr _cr ?? throw "null pointer dereference")._inRead) {
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            (@:checkr _cr ?? throw "null pointer dereference")._aborted = true;
            (@:checkr (@:checkr _cr ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._rwc.setReadDeadline(stdgo._internal.net.http.Http__aLongTimeAgo._aLongTimeAgo?.__copy__());
            while ((@:checkr _cr ?? throw "null pointer dereference")._inRead) {
                @:check2r (@:checkr _cr ?? throw "null pointer dereference")._cond.wait_();
            };
            (@:checkr (@:checkr _cr ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._rwc.setReadDeadline((new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time));
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
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
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _backgroundRead( _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader>):Void {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader> = _cr;
        var __tmp__ = (@:checkr (@:checkr _cr ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._rwc.read(((@:checkr _cr ?? throw "null pointer dereference")._byteBuf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        @:check2r _cr._lock();
        if (_n == ((1 : stdgo.GoInt))) {
            (@:checkr _cr ?? throw "null pointer dereference")._hasByte = true;
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.net.Net_Error.Error)) : stdgo._internal.net.Net_Error.Error), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.net.Net_Error.Error), _1 : false };
            }, _ne = __tmp__._0, _ok = __tmp__._1;
            if (((_ok && (@:checkr _cr ?? throw "null pointer dereference")._aborted : Bool) && _ne.timeout() : Bool)) {} else if (_err != null) {
                @:check2r _cr._handleReadError(_err);
            };
        };
        (@:checkr _cr ?? throw "null pointer dereference")._aborted = false;
        (@:checkr _cr ?? throw "null pointer dereference")._inRead = false;
        @:check2r _cr._unlock();
        @:check2r (@:checkr _cr ?? throw "null pointer dereference")._cond.broadcast();
    }
    @:keep
    @:tdfield
    static public function _startBackgroundRead( _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader>):Void {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader> = _cr;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2r _cr._lock();
            {
                final __f__ = @:check2r _cr._unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _cr ?? throw "null pointer dereference")._inRead) {
                throw stdgo.Go.toInterface(("invalid concurrent Body.Read call" : stdgo.GoString));
            };
            if ((@:checkr _cr ?? throw "null pointer dereference")._hasByte) {
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            (@:checkr _cr ?? throw "null pointer dereference")._inRead = true;
            (@:checkr (@:checkr _cr ?? throw "null pointer dereference")._conn ?? throw "null pointer dereference")._rwc.setReadDeadline((new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time));
            stdgo.Go.routine(() -> @:check2r _cr._backgroundRead());
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
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
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _unlock( _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader>):Void {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader> = _cr;
        @:check2 (@:checkr _cr ?? throw "null pointer dereference")._mu.unlock();
    }
    @:keep
    @:tdfield
    static public function _lock( _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader>):Void {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader> = _cr;
        @:check2 (@:checkr _cr ?? throw "null pointer dereference")._mu.lock();
        if (((@:checkr _cr ?? throw "null pointer dereference")._cond == null || ((@:checkr _cr ?? throw "null pointer dereference")._cond : Dynamic).__nil__)) {
            (@:checkr _cr ?? throw "null pointer dereference")._cond = stdgo._internal.sync.Sync_newCond.newCond(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _cr ?? throw "null pointer dereference")._mu) : stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>)));
        };
    }
}
