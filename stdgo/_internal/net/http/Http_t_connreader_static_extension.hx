package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_connReader_asInterface) class T_connReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _cr:stdgo.Ref<stdgo._internal.net.http.Http_t_connreader.T_connReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.Http_t_connreader.T_connReader> = _cr;
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
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.http.Http__io._io.eOF };
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
}
