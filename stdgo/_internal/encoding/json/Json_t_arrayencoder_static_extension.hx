package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_arrayEncoder_asInterface) class T_arrayEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _ae:stdgo._internal.encoding.json.Json_t_arrayencoder.T_arrayEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _ae:stdgo._internal.encoding.json.Json_t_arrayencoder.T_arrayEncoder = _ae?.__copy__();
        @:check2r _e.writeByte((91 : stdgo.GoUInt8));
        var _n = (_v.len() : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    @:check2r _e.writeByte((44 : stdgo.GoUInt8));
                };
_ae._elemEnc(_e, _v.index(_i).__copy__(), _opts.__copy__());
                _i++;
            };
        };
        @:check2r _e.writeByte((93 : stdgo.GoUInt8));
    }
}
