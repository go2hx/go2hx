package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_condAddrEncoder_asInterface) class T_condAddrEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _ce:stdgo._internal.encoding.json.Json_T_condAddrEncoder.T_condAddrEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _ce:stdgo._internal.encoding.json.Json_T_condAddrEncoder.T_condAddrEncoder = _ce?.__copy__();
        if (_v.canAddr()) {
            _ce._canAddrEnc(_e, _v?.__copy__(), _opts?.__copy__());
        } else {
            _ce._elseEnc(_e, _v?.__copy__(), _opts?.__copy__());
        };
    }
}
