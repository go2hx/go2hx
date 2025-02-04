package stdgo._internal.compress.flate;
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_token_asInterface) class T_token_static_extension {
    @:keep
    @:tdfield
    static public function _length( _t:stdgo._internal.compress.flate.Flate_t_token.T_token):stdgo.GoUInt32 {
        @:recv var _t:stdgo._internal.compress.flate.Flate_t_token.T_token = _t;
        return ((((_t - (1073741824u32 : stdgo._internal.compress.flate.Flate_t_token.T_token) : stdgo._internal.compress.flate.Flate_t_token.T_token)) >> (22i64 : stdgo.GoUInt64) : stdgo._internal.compress.flate.Flate_t_token.T_token) : stdgo.GoUInt32);
    }
    @:keep
    @:tdfield
    static public function _offset( _t:stdgo._internal.compress.flate.Flate_t_token.T_token):stdgo.GoUInt32 {
        @:recv var _t:stdgo._internal.compress.flate.Flate_t_token.T_token = _t;
        return ((_t : stdgo.GoUInt32) & (4194303u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
    }
    @:keep
    @:tdfield
    static public function _literal( _t:stdgo._internal.compress.flate.Flate_t_token.T_token):stdgo.GoUInt32 {
        @:recv var _t:stdgo._internal.compress.flate.Flate_t_token.T_token = _t;
        return ((_t - (0u32 : stdgo._internal.compress.flate.Flate_t_token.T_token) : stdgo._internal.compress.flate.Flate_t_token.T_token) : stdgo.GoUInt32);
    }
}
