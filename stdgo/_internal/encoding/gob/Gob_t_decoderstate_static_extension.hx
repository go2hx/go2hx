package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_decoderState_asInterface) class T_decoderState_static_extension {
    @:keep
    @:tdfield
    static public function _getLength( _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState> = _state;
        var _n = (@:check2r _state._decodeUint() : stdgo.GoInt);
        if ((((_n < (0 : stdgo.GoInt) : Bool) || (@:check2r (@:checkr _state ?? throw "null pointer dereference")._b.len() < _n : Bool) : Bool) || ((1073741824 : stdgo.GoInt) <= _n : Bool) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : false };
        };
        return { _0 : _n, _1 : true };
    }
    @:keep
    @:tdfield
    static public function _decodeInt( _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>):stdgo.GoInt64 {
        @:recv var _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState> = _state;
        var _x = (@:check2r _state._decodeUint() : stdgo.GoUInt64);
        if ((_x & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            return (-1 ^ ((_x >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64));
        };
        return ((_x >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function _decodeUint( _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>):stdgo.GoUInt64 {
        @:recv var _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState> = _state;
        var _x = (0 : stdgo.GoUInt64);
        var __tmp__ = @:check2r (@:checkr _state ?? throw "null pointer dereference")._b.readByte(), _b:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.encoding.gob.Gob__error_._error_(_err);
        };
        if ((_b <= (127 : stdgo.GoUInt8) : Bool)) {
            return _x = (_b : stdgo.GoUInt64);
        };
        var _n = (-((_b : stdgo.GoInt8) : stdgo.GoInt) : stdgo.GoInt);
        if ((_n > (8 : stdgo.GoInt) : Bool)) {
            stdgo._internal.encoding.gob.Gob__error_._error_(stdgo._internal.encoding.gob.Gob__errbaduint._errBadUint);
        };
        var _buf = @:check2r (@:checkr _state ?? throw "null pointer dereference")._b.bytes();
        if (((_buf.length) < _n : Bool)) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("invalid uint data length %d: exceeds input size %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_buf.length)));
        };
        for (__8 => _b in (_buf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>)) {
            _x = ((_x << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (_b : stdgo.GoUInt64) : stdgo.GoUInt64);
        };
        @:check2r (@:checkr _state ?? throw "null pointer dereference")._b.drop(_n);
        return _x;
    }
}
