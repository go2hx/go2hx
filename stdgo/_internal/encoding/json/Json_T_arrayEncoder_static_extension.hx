package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_arrayEncoder_asInterface) class T_arrayEncoder_static_extension {
    @:keep
    static public function _encode( _ae:stdgo._internal.encoding.json.Json_T_arrayEncoder.T_arrayEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _ae:stdgo._internal.encoding.json.Json_T_arrayEncoder.T_arrayEncoder = _ae?.__copy__();
        _e.writeByte((91 : stdgo.GoUInt8));
        var _n = (_v.len() : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    _e.writeByte((44 : stdgo.GoUInt8));
                };
                _ae._elemEnc(_e, _v.index(_i)?.__copy__(), _opts?.__copy__());
            });
        };
        _e.writeByte((93 : stdgo.GoUInt8));
    }
}
