package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_newSessionTicketMsg_asInterface) class T_newSessionTicketMsg_static_extension {
    @:keep
    @:tdfield
    static public function _unmarshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsg.T_newSessionTicketMsg>, _data:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsg.T_newSessionTicketMsg> = _m;
        (@:checkr _m ?? throw "null pointer dereference")._raw = _data;
        if (((_data.length) < (10 : stdgo.GoInt) : Bool)) {
            return false;
        };
        var _length = ((((_data[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((_data[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | (_data[(3 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
        if (((_data.length : stdgo.GoUInt32) - (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != (_length)) {
            return false;
        };
        var _ticketLen = (((_data[(8 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) + (_data[(9 : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
        if (((_data.length) - (10 : stdgo.GoInt) : stdgo.GoInt) != (_ticketLen)) {
            return false;
        };
        (@:checkr _m ?? throw "null pointer dereference")._ticket = (_data.__slice__((10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        return true;
    }
    @:keep
    @:tdfield
    static public function _marshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsg.T_newSessionTicketMsg>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsg.T_newSessionTicketMsg> = _m;
        if ((@:checkr _m ?? throw "null pointer dereference")._raw != null) {
            return { _0 : (@:checkr _m ?? throw "null pointer dereference")._raw, _1 : (null : stdgo.Error) };
        };
        var _ticketLen = ((@:checkr _m ?? throw "null pointer dereference")._ticket.length : stdgo.GoInt);
        var _length = ((6 : stdgo.GoInt) + _ticketLen : stdgo.GoInt);
        var _x = (new stdgo.Slice<stdgo.GoUInt8>(((4 : stdgo.GoInt) + _length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _x[(0 : stdgo.GoInt)] = (4 : stdgo.GoUInt8);
        _x[(1 : stdgo.GoInt)] = ((_length >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        _x[(2 : stdgo.GoInt)] = ((_length >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        _x[(3 : stdgo.GoInt)] = (_length : stdgo.GoUInt8);
        _x[(8 : stdgo.GoInt)] = ((_ticketLen >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8);
        _x[(9 : stdgo.GoInt)] = (_ticketLen : stdgo.GoUInt8);
        (_x.__slice__((10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((@:checkr _m ?? throw "null pointer dereference")._ticket);
        (@:checkr _m ?? throw "null pointer dereference")._raw = _x;
        return { _0 : (@:checkr _m ?? throw "null pointer dereference")._raw, _1 : (null : stdgo.Error) };
    }
}
