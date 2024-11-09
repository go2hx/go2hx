package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _next_5348253:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5348417:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5348422_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5348400:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5348317:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5348287:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5348253 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5348271i32;
                } else if (__value__ == (5348271i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5348813i32;
                    } else {
                        _gotoNext = 5348817i32;
                    };
                } else if (__value__ == (5348313i32)) {
                    _f_5348317 = (stdgo.Go.setRef(_se._fields._list[(_i_5348287 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5348400 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5348317._index.length)) {
                        _gotoNext = 5348570i32;
                    } else {
                        _gotoNext = 5348576i32;
                    };
                } else if (__value__ == (5348436i32)) {
                    _i_5348417 = _f_5348317._index[(_i_5348422_0 : stdgo.GoInt)];
                    if (_fv_5348400.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5348473i32;
                    } else {
                        _gotoNext = 5348552i32;
                    };
                } else if (__value__ == (5348473i32)) {
                    if (_fv_5348400.isNil()) {
                        _gotoNext = 5348493i32;
                    } else {
                        _gotoNext = 5348529i32;
                    };
                } else if (__value__ == (5348493i32)) {
                    _i_5348287++;
                    _gotoNext = 5348814i32;
                } else if (__value__ == (5348529i32)) {
                    _fv_5348400 = _fv_5348400.elem()?.__copy__();
                    _gotoNext = 5348552i32;
                } else if (__value__ == (5348552i32)) {
                    _fv_5348400 = _fv_5348400.field(_i_5348417)?.__copy__();
                    _i_5348422_0++;
                    _gotoNext = 5348571i32;
                } else if (__value__ == (5348570i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5348317._index[(0i32 : stdgo.GoInt)];
                        _i_5348422_0 = __tmp__0;
                        _i_5348417 = __tmp__1;
                    };
                    _gotoNext = 5348571i32;
                } else if (__value__ == (5348571i32)) {
                    if (_i_5348422_0 < (_f_5348317._index.length)) {
                        _gotoNext = 5348436i32;
                    } else {
                        _gotoNext = 5348576i32;
                    };
                } else if (__value__ == (5348576i32)) {
                    if ((_f_5348317._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5348400?.__copy__()) : Bool)) {
                        _gotoNext = 5348611i32;
                    } else {
                        _gotoNext = 5348631i32;
                    };
                } else if (__value__ == (5348611i32)) {
                    _i_5348287++;
                    _gotoNext = 5348814i32;
                } else if (__value__ == (5348631i32)) {
                    _e.writeByte(_next_5348253);
                    _next_5348253 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5348683i32;
                    } else {
                        _gotoNext = 5348726i32;
                    };
                } else if (__value__ == (5348683i32)) {
                    _e.writeString(_f_5348317._nameEscHTML?.__copy__());
                    _gotoNext = 5348765i32;
                } else if (__value__ == (5348726i32)) {
                    _gotoNext = 5348726i32;
                    _e.writeString(_f_5348317._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5348765i32;
                } else if (__value__ == (5348765i32)) {
                    _opts._quoted = _f_5348317._quoted;
                    _f_5348317._encoder(_e, _fv_5348400?.__copy__(), _opts?.__copy__());
                    _i_5348287++;
                    _gotoNext = 5348814i32;
                } else if (__value__ == (5348813i32)) {
                    _i_5348287 = 0i32;
                    _gotoNext = 5348814i32;
                } else if (__value__ == (5348814i32)) {
                    if (_i_5348287 < (_se._fields._list.length)) {
                        _gotoNext = 5348313i32;
                    } else {
                        _gotoNext = 5348817i32;
                    };
                } else if (__value__ == (5348817i32)) {
                    if (_next_5348253 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5348832i32;
                    } else {
                        _gotoNext = 5348864i32;
                    };
                } else if (__value__ == (5348832i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5348888i32;
                } else if (__value__ == (5348864i32)) {
                    _gotoNext = 5348864i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5348888i32;
                } else if (__value__ == (5348888i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
