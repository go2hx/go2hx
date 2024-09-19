package stdgo._internal.time;
import stdgo._internal.unsafe.Unsafe;
@:keep @:allow(stdgo._internal.time.Time.T_dataIO_asInterface) class T_dataIO_static_extension {
    @:keep
    static public function _rest( _d:stdgo.Ref<stdgo._internal.time.Time_T_dataIO.T_dataIO>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _d:stdgo.Ref<stdgo._internal.time.Time_T_dataIO.T_dataIO> = _d;
        var _r = _d._p;
        _d._p = (null : stdgo.Slice<stdgo.GoUInt8>);
        return _r;
    }
    @:keep
    static public function _byte( _d:stdgo.Ref<stdgo._internal.time.Time_T_dataIO.T_dataIO>):{ var _0 : stdgo.GoUInt8; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.time.Time_T_dataIO.T_dataIO> = _d;
        var _n = (0 : stdgo.GoUInt8), _ok = false;
        var _p = _d._read((1 : stdgo.GoInt));
        if (((_p.length) < (1 : stdgo.GoInt) : Bool)) {
            _d._error = true;
            return { _0 : (0 : stdgo.GoUInt8), _1 : false };
        };
        return { _0 : _p[(0 : stdgo.GoInt)], _1 : true };
    }
    @:keep
    static public function _big8( _d:stdgo.Ref<stdgo._internal.time.Time_T_dataIO.T_dataIO>):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.time.Time_T_dataIO.T_dataIO> = _d;
        var _n = (0 : stdgo.GoUInt64), _ok = false;
        var __tmp__ = _d._big4(), _n1:stdgo.GoUInt32 = __tmp__._0, _ok1:Bool = __tmp__._1;
        var __tmp__ = _d._big4(), _n2:stdgo.GoUInt32 = __tmp__._0, _ok2:Bool = __tmp__._1;
        if ((!_ok1 || !_ok2 : Bool)) {
            _d._error = true;
            return { _0 : (0i64 : stdgo.GoUInt64), _1 : false };
        };
        return { _0 : ((((_n1 : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) | (_n2 : stdgo.GoUInt64) : stdgo.GoUInt64), _1 : true };
    }
    @:keep
    static public function _big4( _d:stdgo.Ref<stdgo._internal.time.Time_T_dataIO.T_dataIO>):{ var _0 : stdgo.GoUInt32; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.time.Time_T_dataIO.T_dataIO> = _d;
        var _n = (0 : stdgo.GoUInt32), _ok = false;
        var _p = _d._read((4 : stdgo.GoInt));
        if (((_p.length) < (4 : stdgo.GoInt) : Bool)) {
            _d._error = true;
            return { _0 : (0u32 : stdgo.GoUInt32), _1 : false };
        };
        return { _0 : ((((_p[(3 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_p[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_p[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_p[(0 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32), _1 : true };
    }
    @:keep
    static public function _read( _d:stdgo.Ref<stdgo._internal.time.Time_T_dataIO.T_dataIO>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _d:stdgo.Ref<stdgo._internal.time.Time_T_dataIO.T_dataIO> = _d;
        if (((_d._p.length) < _n : Bool)) {
            _d._p = (null : stdgo.Slice<stdgo.GoUInt8>);
            _d._error = true;
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _p = (_d._p.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
        _d._p = (_d._p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        return _p;
    }
}
