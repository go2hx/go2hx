package stdgo._internal.time;
@:keep @:allow(stdgo._internal.time.Time.T_dataIO_asInterface) class T_dataIO_static_extension {
    @:keep
    @:tdfield
    static public function _rest( _d:stdgo.Ref<stdgo._internal.time.Time_t_dataio.T_dataIO>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _d:stdgo.Ref<stdgo._internal.time.Time_t_dataio.T_dataIO> = _d;
        var _r = (@:checkr _d ?? throw "null pointer dereference")._p;
        (@:checkr _d ?? throw "null pointer dereference")._p = (null : stdgo.Slice<stdgo.GoUInt8>);
        return _r;
    }
    @:keep
    @:tdfield
    static public function _byte( _d:stdgo.Ref<stdgo._internal.time.Time_t_dataio.T_dataIO>):{ var _0 : stdgo.GoUInt8; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.time.Time_t_dataio.T_dataIO> = _d;
        var _n = (0 : stdgo.GoUInt8), _ok = false;
        var _p = @:check2r _d._read((1 : stdgo.GoInt));
        if (((_p.length) < (1 : stdgo.GoInt) : Bool)) {
            (@:checkr _d ?? throw "null pointer dereference")._error = true;
            return {
                final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : Bool; } = { _0 : (0 : stdgo.GoUInt8), _1 : false };
                _n = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : Bool; } = { _0 : _p[(0 : stdgo.GoInt)], _1 : true };
            _n = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _big8( _d:stdgo.Ref<stdgo._internal.time.Time_t_dataio.T_dataIO>):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.time.Time_t_dataio.T_dataIO> = _d;
        var _n = (0 : stdgo.GoUInt64), _ok = false;
        var __tmp__ = @:check2r _d._big4(), _n1:stdgo.GoUInt32 = __tmp__._0, _ok1:Bool = __tmp__._1;
        var __tmp__ = @:check2r _d._big4(), _n2:stdgo.GoUInt32 = __tmp__._0, _ok2:Bool = __tmp__._1;
        if ((!_ok1 || !_ok2 : Bool)) {
            (@:checkr _d ?? throw "null pointer dereference")._error = true;
            return {
                final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : Bool; } = { _0 : (0i64 : stdgo.GoUInt64), _1 : false };
                _n = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : Bool; } = { _0 : ((((_n1 : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) | (_n2 : stdgo.GoUInt64) : stdgo.GoUInt64), _1 : true };
            _n = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _big4( _d:stdgo.Ref<stdgo._internal.time.Time_t_dataio.T_dataIO>):{ var _0 : stdgo.GoUInt32; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.time.Time_t_dataio.T_dataIO> = _d;
        var _n = (0 : stdgo.GoUInt32), _ok = false;
        var _p = @:check2r _d._read((4 : stdgo.GoInt));
        if (((_p.length) < (4 : stdgo.GoInt) : Bool)) {
            (@:checkr _d ?? throw "null pointer dereference")._error = true;
            return {
                final __tmp__:{ var _0 : stdgo.GoUInt32; var _1 : Bool; } = { _0 : (0u32 : stdgo.GoUInt32), _1 : false };
                _n = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoUInt32; var _1 : Bool; } = { _0 : ((((_p[(3 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_p[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_p[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_p[(0 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32), _1 : true };
            _n = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _read( _d:stdgo.Ref<stdgo._internal.time.Time_t_dataio.T_dataIO>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _d:stdgo.Ref<stdgo._internal.time.Time_t_dataio.T_dataIO> = _d;
        if ((((@:checkr _d ?? throw "null pointer dereference")._p.length) < _n : Bool)) {
            (@:checkr _d ?? throw "null pointer dereference")._p = (null : stdgo.Slice<stdgo.GoUInt8>);
            (@:checkr _d ?? throw "null pointer dereference")._error = true;
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _p = ((@:checkr _d ?? throw "null pointer dereference")._p.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _d ?? throw "null pointer dereference")._p = ((@:checkr _d ?? throw "null pointer dereference")._p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        return _p;
    }
}
