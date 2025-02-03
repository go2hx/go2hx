package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _f_5410870:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5410840:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5410806:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5410970:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5410975_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5410953:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5410806 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5410824i32;
                } else if (__value__ == (5410824i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5411366i32;
                    } else {
                        _gotoNext = 5411370i32;
                    };
                } else if (__value__ == (5410866i32)) {
                    _f_5410870 = (stdgo.Go.setRef(_se._fields._list[(_i_5410840 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5410953 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5410870 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5411123i32;
                    } else {
                        _gotoNext = 5411129i32;
                    };
                } else if (__value__ == (5410989i32)) {
                    _i_5410970 = (@:checkr _f_5410870 ?? throw "null pointer dereference")._index[(_i_5410975_0 : stdgo.GoInt)];
                    if (_fv_5410953.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5411026i32;
                    } else {
                        _gotoNext = 5411105i32;
                    };
                } else if (__value__ == (5411026i32)) {
                    if (_fv_5410953.isNil()) {
                        _gotoNext = 5411046i32;
                    } else {
                        _gotoNext = 5411082i32;
                    };
                } else if (__value__ == (5411046i32)) {
                    _i_5410840++;
                    _gotoNext = 5411367i32;
                } else if (__value__ == (5411082i32)) {
                    _fv_5410953 = _fv_5410953.elem()?.__copy__();
                    _gotoNext = 5411105i32;
                } else if (__value__ == (5411105i32)) {
                    _fv_5410953 = _fv_5410953.field(_i_5410970)?.__copy__();
                    _i_5410975_0++;
                    _gotoNext = 5411124i32;
                } else if (__value__ == (5411123i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5410870 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5410975_0 = __tmp__0;
                        _i_5410970 = __tmp__1;
                    };
                    _gotoNext = 5411124i32;
                } else if (__value__ == (5411124i32)) {
                    if (_i_5410975_0 < ((@:checkr _f_5410870 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5410989i32;
                    } else {
                        _gotoNext = 5411129i32;
                    };
                } else if (__value__ == (5411129i32)) {
                    if (((@:checkr _f_5410870 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5410953?.__copy__()) : Bool)) {
                        _gotoNext = 5411164i32;
                    } else {
                        _gotoNext = 5411184i32;
                    };
                } else if (__value__ == (5411164i32)) {
                    _i_5410840++;
                    _gotoNext = 5411367i32;
                } else if (__value__ == (5411184i32)) {
                    @:check2r _e.writeByte(_next_5410806);
                    _next_5410806 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5411236i32;
                    } else {
                        _gotoNext = 5411279i32;
                    };
                } else if (__value__ == (5411236i32)) {
                    @:check2r _e.writeString((@:checkr _f_5410870 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5411318i32;
                } else if (__value__ == (5411279i32)) {
                    _gotoNext = 5411279i32;
                    @:check2r _e.writeString((@:checkr _f_5410870 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5411318i32;
                } else if (__value__ == (5411318i32)) {
                    _opts._quoted = (@:checkr _f_5410870 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5410870 ?? throw "null pointer dereference")._encoder(_e, _fv_5410953?.__copy__(), _opts?.__copy__());
                    _i_5410840++;
                    _gotoNext = 5411367i32;
                } else if (__value__ == (5411366i32)) {
                    _i_5410840 = 0i32;
                    _gotoNext = 5411367i32;
                } else if (__value__ == (5411367i32)) {
                    if (_i_5410840 < (_se._fields._list.length)) {
                        _gotoNext = 5410866i32;
                    } else {
                        _gotoNext = 5411370i32;
                    };
                } else if (__value__ == (5411370i32)) {
                    if (_next_5410806 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5411385i32;
                    } else {
                        _gotoNext = 5411417i32;
                    };
                } else if (__value__ == (5411385i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5411441i32;
                } else if (__value__ == (5411417i32)) {
                    _gotoNext = 5411417i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5411441i32;
                } else if (__value__ == (5411441i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
