package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        stdgo._internal.internal.Macro.controlFlow({
            var _next = ((123 : stdgo.GoUInt8) : stdgo.GoUInt8);
            @:label("FieldLoop") for (_i => _ in _se._fields._list) {
                var _f = (stdgo.Go.setRef(_se._fields._list[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                var _fv = (_v?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                for (__8 => _i in _f._index) {
                    if (_fv.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        if (_fv.isNil()) {
                            @:jump("FieldLoop") continue;
                        };
                        _fv = _fv.elem()?.__copy__();
                    };
                    _fv = _fv.field(_i)?.__copy__();
                };
                if ((_f._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv?.__copy__()) : Bool)) {
                    continue;
                };
                _e.writeByte(_next);
                _next = (44 : stdgo.GoUInt8);
                if (_opts._escapeHTML) {
                    _e.writeString(_f._nameEscHTML?.__copy__());
                } else {
                    _e.writeString(_f._nameNonEsc?.__copy__());
                };
                _opts._quoted = _f._quoted;
                _f._encoder(_e, _fv?.__copy__(), _opts?.__copy__());
            };
            if (_next == ((123 : stdgo.GoUInt8))) {
                _e.writeString(("{}" : stdgo.GoString));
            } else {
                _e.writeByte((125 : stdgo.GoUInt8));
            };
        });
    }
}
