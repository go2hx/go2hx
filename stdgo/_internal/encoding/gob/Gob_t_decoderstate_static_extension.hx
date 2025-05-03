package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_decoderState_asInterface) class T_decoderState_static_extension {
    @:keep
    @:tdfield
    static public function _getLength( _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState> = _state;
        var _n = (_state._decodeUint() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L186"
        if ((((_n < (0 : stdgo.GoInt) : Bool) || ((@:checkr _state ?? throw "null pointer dereference")._b.len() < _n : Bool) : Bool) || ((1073741824 : stdgo.GoInt) <= _n : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L187"
            return { _0 : (0 : stdgo.GoInt), _1 : false };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L189"
        return { _0 : _n, _1 : true };
    }
    @:keep
    @:tdfield
    static public function _decodeInt( _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>):stdgo.GoInt64 {
        @:recv var _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState> = _state;
        var _x = (_state._decodeUint() : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L175"
        if ((_x & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L176"
            return (-1 ^ ((_x >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L178"
        return ((_x >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function _decodeUint( _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>):stdgo.GoUInt64 {
        @:recv var _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState> = _state;
        var _x = (0 : stdgo.GoUInt64);
        var __tmp__ = (@:checkr _state ?? throw "null pointer dereference")._b.readByte(), _b:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L148"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L149"
            stdgo._internal.encoding.gob.Gob__error_._error_(_err);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L151"
        if ((_b <= (127 : stdgo.GoUInt8) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L152"
            return _x = (_b : stdgo.GoUInt64);
        };
        var _n = (-((_b : stdgo.GoInt8) : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L155"
        if ((_n > (8 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L156"
            stdgo._internal.encoding.gob.Gob__error_._error_(stdgo._internal.encoding.gob.Gob__errbaduint._errBadUint);
        };
        var _buf = (@:checkr _state ?? throw "null pointer dereference")._b.bytes();
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L159"
        if (((_buf.length) < _n : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L160"
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("invalid uint data length %d: exceeds input size %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_buf.length)));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L164"
        for (__8 => _b in (_buf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>)) {
            _x = ((_x << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (_b : stdgo.GoUInt64) : stdgo.GoUInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L167"
        (@:checkr _state ?? throw "null pointer dereference")._b.drop(_n);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L168"
        return _x;
    }
}
