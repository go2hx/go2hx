package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_connReader_asInterface) class T_connReader_static_extension {
    @:keep
    static public function read( _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader> = _cr;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _cr._lock();
        if (_cr._inRead) {
            _cr._unlock();
            if (_cr._conn._hijacked()) {
                throw stdgo.Go.toInterface(("invalid Body.Read call. After hijacked, the original Request must not be used" : stdgo.GoString));
            };
            throw stdgo.Go.toInterface(("invalid concurrent Body.Read call" : stdgo.GoString));
        };
        if (_cr._hitReadLimit()) {
            _cr._unlock();
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eof };
        };
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            _cr._unlock();
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
        };
        if (((_p.length : stdgo.GoInt64) > _cr._remain : Bool)) {
            _p = (_p.__slice__(0, _cr._remain) : stdgo.Slice<stdgo.GoUInt8>);
        };
        if (_cr._hasByte) {
            _p[(0 : stdgo.GoInt)] = _cr._byteBuf[(0 : stdgo.GoInt)];
            _cr._hasByte = false;
            _cr._unlock();
            return { _0 : (1 : stdgo.GoInt), _1 : (null : stdgo.Error) };
        };
        _cr._inRead = true;
        _cr._unlock();
        {
            var __tmp__ = _cr._conn._rwc.read(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _cr._lock();
        _cr._inRead = false;
        if (_err != null) {
            _cr._handleReadError(_err);
        };
        _cr._remain = (_cr._remain - ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        _cr._unlock();
        _cr._cond.broadcast();
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function _closeNotify( _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader>):Void {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader> = _cr;
        var _res = _cr._conn._curReq.load();
        if ((((_res != null) && ((_res : Dynamic).__nil__ == null || !(_res : Dynamic).__nil__)) && !_res._didCloseNotify.swap(true) : Bool)) {
            _res._closeNotifyCh.__send__(true);
        };
    }
    @:keep
    static public function _handleReadError( _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader>, __34292:stdgo.Error):Void {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader> = _cr;
        _cr._conn._cancelCtx();
        _cr._closeNotify();
    }
    @:keep
    static public function _hitReadLimit( _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader>):Bool {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader> = _cr;
        return (_cr._remain <= (0i64 : stdgo.GoInt64) : Bool);
    }
    @:keep
    static public function _setInfiniteReadLimit( _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader>):Void {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader> = _cr;
        _cr._remain = (9223372036854775807i64 : stdgo.GoInt64);
    }
    @:keep
    static public function _setReadLimit( _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader>, _remain:stdgo.GoInt64):Void {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader> = _cr;
        _cr._remain = _remain;
    }
    @:keep
    static public function _abortPendingRead( _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader>):Void {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader> = _cr;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _cr._lock();
            __deferstack__.unshift(() -> _cr._unlock());
            if (!_cr._inRead) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            _cr._aborted = true;
            _cr._conn._rwc.setReadDeadline(stdgo._internal.net.http.Http__aLongTimeAgo._aLongTimeAgo?.__copy__());
            while (_cr._inRead) {
                _cr._cond.wait_();
            };
            _cr._conn._rwc.setReadDeadline((new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:keep
    static public function _backgroundRead( _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader>):Void {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader> = _cr;
        var __tmp__ = _cr._conn._rwc.read((_cr._byteBuf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _cr._lock();
        if (_n == ((1 : stdgo.GoInt))) {
            _cr._hasByte = true;
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.net.Net_Error.Error)) : stdgo._internal.net.Net_Error.Error), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.net.Net_Error.Error), _1 : false };
            }, _ne = __tmp__._0, _ok = __tmp__._1;
            if (((_ok && _cr._aborted : Bool) && _ne.timeout() : Bool)) {} else if (_err != null) {
                _cr._handleReadError(_err);
            };
        };
        _cr._aborted = false;
        _cr._inRead = false;
        _cr._unlock();
        _cr._cond.broadcast();
    }
    @:keep
    static public function _startBackgroundRead( _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader>):Void {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader> = _cr;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _cr._lock();
            __deferstack__.unshift(() -> _cr._unlock());
            if (_cr._inRead) {
                throw stdgo.Go.toInterface(("invalid concurrent Body.Read call" : stdgo.GoString));
            };
            if (_cr._hasByte) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            _cr._inRead = true;
            _cr._conn._rwc.setReadDeadline((new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time));
            stdgo.Go.routine(() -> _cr._backgroundRead());
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:keep
    static public function _unlock( _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader>):Void {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader> = _cr;
        _cr._mu.unlock();
    }
    @:keep
    static public function _lock( _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader>):Void {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.Http_T_connReader.T_connReader> = _cr;
        _cr._mu.lock();
        if (_cr._cond == null || (_cr._cond : Dynamic).__nil__) {
            _cr._cond = stdgo._internal.sync.Sync_newCond.newCond(stdgo.Go.asInterface((stdgo.Go.setRef(_cr._mu) : stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>)));
        };
    }
}
