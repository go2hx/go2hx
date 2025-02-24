package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _i_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5350179_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _f_4:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _i_3:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_2 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5350028i32;
                } else if (__value__ == (5350028i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5350570i32;
                    } else {
                        _gotoNext = 5350574i32;
                    };
                } else if (__value__ == (5350070i32)) {
                    _f_4 = (stdgo.Go.setRef(_se._fields._list[(_i_3 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_5 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_4 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5350327i32;
                    } else {
                        _gotoNext = 5350333i32;
                    };
                } else if (__value__ == (5350193i32)) {
                    _i_7 = (@:checkr _f_4 ?? throw "null pointer dereference")._index[(_i_5350179_6 : stdgo.GoInt)];
                    if (_fv_5.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 5350230i32;
                    } else {
                        _gotoNext = 5350309i32;
                    };
                } else if (__value__ == (5350230i32)) {
                    if (_fv_5.isNil()) {
                        _gotoNext = 5350250i32;
                    } else {
                        _gotoNext = 5350286i32;
                    };
                } else if (__value__ == (5350250i32)) {
                    _i_3++;
                    _gotoNext = 5350571i32;
                } else if (__value__ == (5350286i32)) {
                    _fv_5 = _fv_5.elem()?.__copy__();
                    _gotoNext = 5350309i32;
                } else if (__value__ == (5350309i32)) {
                    _fv_5 = _fv_5.field(_i_7)?.__copy__();
                    _i_5350179_6++;
                    _gotoNext = 5350328i32;
                } else if (__value__ == (5350327i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_4 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5350179_6 = __tmp__0;
                        _i_7 = __tmp__1;
                    };
                    _gotoNext = 5350328i32;
                } else if (__value__ == (5350328i32)) {
                    if (_i_5350179_6 < ((@:checkr _f_4 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5350193i32;
                    } else {
                        _gotoNext = 5350333i32;
                    };
                } else if (__value__ == (5350333i32)) {
                    if (((@:checkr _f_4 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_5?.__copy__()) : Bool)) {
                        _gotoNext = 5350368i32;
                    } else {
                        _gotoNext = 5350388i32;
                    };
                } else if (__value__ == (5350368i32)) {
                    _i_3++;
                    _gotoNext = 5350571i32;
                } else if (__value__ == (5350388i32)) {
                    @:check2r _e.writeByte(_next_2);
                    _next_2 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5350440i32;
                    } else {
                        _gotoNext = 5350483i32;
                    };
                } else if (__value__ == (5350440i32)) {
                    @:check2r _e.writeString((@:checkr _f_4 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5350522i32;
                } else if (__value__ == (5350483i32)) {
                    _gotoNext = 5350483i32;
                    @:check2r _e.writeString((@:checkr _f_4 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5350522i32;
                } else if (__value__ == (5350522i32)) {
                    _opts._quoted = (@:checkr _f_4 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_4 ?? throw "null pointer dereference")._encoder(_e, _fv_5?.__copy__(), _opts?.__copy__());
                    _i_3++;
                    _gotoNext = 5350571i32;
                } else if (__value__ == (5350570i32)) {
                    _i_3 = 0i32;
                    _gotoNext = 5350571i32;
                } else if (__value__ == (5350571i32)) {
                    if (_i_3 < (_se._fields._list.length)) {
                        _gotoNext = 5350070i32;
                    } else {
                        _gotoNext = 5350574i32;
                    };
                } else if (__value__ == (5350574i32)) {
                    if (_next_2 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5350589i32;
                    } else {
                        _gotoNext = 5350621i32;
                    };
                } else if (__value__ == (5350589i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5350645i32;
                } else if (__value__ == (5350621i32)) {
                    _gotoNext = 5350621i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5350645i32;
                } else if (__value__ == (5350645i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
