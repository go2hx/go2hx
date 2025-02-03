package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5336160_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5336138:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5336055:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5336025:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5335991:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5336155:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5335991 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5336009i32;
                } else if (__value__ == (5336009i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5336551i32;
                    } else {
                        _gotoNext = 5336555i32;
                    };
                } else if (__value__ == (5336051i32)) {
                    _f_5336055 = (stdgo.Go.setRef(_se._fields._list[(_i_5336025 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5336138 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5336055 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5336308i32;
                    } else {
                        _gotoNext = 5336314i32;
                    };
                } else if (__value__ == (5336174i32)) {
                    _i_5336155 = (@:checkr _f_5336055 ?? throw "null pointer dereference")._index[(_i_5336160_0 : stdgo.GoInt)];
                    if (_fv_5336138.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5336211i32;
                    } else {
                        _gotoNext = 5336290i32;
                    };
                } else if (__value__ == (5336211i32)) {
                    if (_fv_5336138.isNil()) {
                        _gotoNext = 5336231i32;
                    } else {
                        _gotoNext = 5336267i32;
                    };
                } else if (__value__ == (5336231i32)) {
                    _i_5336025++;
                    _gotoNext = 5336552i32;
                } else if (__value__ == (5336267i32)) {
                    _fv_5336138 = _fv_5336138.elem()?.__copy__();
                    _gotoNext = 5336290i32;
                } else if (__value__ == (5336290i32)) {
                    _fv_5336138 = _fv_5336138.field(_i_5336155)?.__copy__();
                    _i_5336160_0++;
                    _gotoNext = 5336309i32;
                } else if (__value__ == (5336308i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5336055 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5336160_0 = __tmp__0;
                        _i_5336155 = __tmp__1;
                    };
                    _gotoNext = 5336309i32;
                } else if (__value__ == (5336309i32)) {
                    if (_i_5336160_0 < ((@:checkr _f_5336055 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5336174i32;
                    } else {
                        _gotoNext = 5336314i32;
                    };
                } else if (__value__ == (5336314i32)) {
                    if (((@:checkr _f_5336055 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5336138?.__copy__()) : Bool)) {
                        _gotoNext = 5336349i32;
                    } else {
                        _gotoNext = 5336369i32;
                    };
                } else if (__value__ == (5336349i32)) {
                    _i_5336025++;
                    _gotoNext = 5336552i32;
                } else if (__value__ == (5336369i32)) {
                    @:check2r _e.writeByte(_next_5335991);
                    _next_5335991 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5336421i32;
                    } else {
                        _gotoNext = 5336464i32;
                    };
                } else if (__value__ == (5336421i32)) {
                    @:check2r _e.writeString((@:checkr _f_5336055 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5336503i32;
                } else if (__value__ == (5336464i32)) {
                    _gotoNext = 5336464i32;
                    @:check2r _e.writeString((@:checkr _f_5336055 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5336503i32;
                } else if (__value__ == (5336503i32)) {
                    _opts._quoted = (@:checkr _f_5336055 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5336055 ?? throw "null pointer dereference")._encoder(_e, _fv_5336138?.__copy__(), _opts?.__copy__());
                    _i_5336025++;
                    _gotoNext = 5336552i32;
                } else if (__value__ == (5336551i32)) {
                    _i_5336025 = 0i32;
                    _gotoNext = 5336552i32;
                } else if (__value__ == (5336552i32)) {
                    if (_i_5336025 < (_se._fields._list.length)) {
                        _gotoNext = 5336051i32;
                    } else {
                        _gotoNext = 5336555i32;
                    };
                } else if (__value__ == (5336555i32)) {
                    if (_next_5335991 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5336570i32;
                    } else {
                        _gotoNext = 5336602i32;
                    };
                } else if (__value__ == (5336570i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5336626i32;
                } else if (__value__ == (5336602i32)) {
                    _gotoNext = 5336602i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5336626i32;
                } else if (__value__ == (5336626i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
