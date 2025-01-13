package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _f_5414971:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5414941:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5414907:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5415071:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5415076_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5415054:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5414907 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5414925i32;
                } else if (__value__ == (5414925i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5415467i32;
                    } else {
                        _gotoNext = 5415471i32;
                    };
                } else if (__value__ == (5414967i32)) {
                    _f_5414971 = (stdgo.Go.setRef(_se._fields._list[(_i_5414941 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5415054 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5414971 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5415224i32;
                    } else {
                        _gotoNext = 5415230i32;
                    };
                } else if (__value__ == (5415090i32)) {
                    _i_5415071 = (@:checkr _f_5414971 ?? throw "null pointer dereference")._index[(_i_5415076_0 : stdgo.GoInt)];
                    if (_fv_5415054.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5415127i32;
                    } else {
                        _gotoNext = 5415206i32;
                    };
                } else if (__value__ == (5415127i32)) {
                    if (_fv_5415054.isNil()) {
                        _gotoNext = 5415147i32;
                    } else {
                        _gotoNext = 5415183i32;
                    };
                } else if (__value__ == (5415147i32)) {
                    _i_5414941++;
                    _gotoNext = 5415468i32;
                } else if (__value__ == (5415183i32)) {
                    _fv_5415054 = _fv_5415054.elem()?.__copy__();
                    _gotoNext = 5415206i32;
                } else if (__value__ == (5415206i32)) {
                    _fv_5415054 = _fv_5415054.field(_i_5415071)?.__copy__();
                    _i_5415076_0++;
                    _gotoNext = 5415225i32;
                } else if (__value__ == (5415224i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5414971 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5415076_0 = __tmp__0;
                        _i_5415071 = __tmp__1;
                    };
                    _gotoNext = 5415225i32;
                } else if (__value__ == (5415225i32)) {
                    if (_i_5415076_0 < ((@:checkr _f_5414971 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5415090i32;
                    } else {
                        _gotoNext = 5415230i32;
                    };
                } else if (__value__ == (5415230i32)) {
                    if (((@:checkr _f_5414971 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5415054?.__copy__()) : Bool)) {
                        _gotoNext = 5415265i32;
                    } else {
                        _gotoNext = 5415285i32;
                    };
                } else if (__value__ == (5415265i32)) {
                    _i_5414941++;
                    _gotoNext = 5415468i32;
                } else if (__value__ == (5415285i32)) {
                    @:check2r _e.writeByte(_next_5414907);
                    _next_5414907 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5415337i32;
                    } else {
                        _gotoNext = 5415380i32;
                    };
                } else if (__value__ == (5415337i32)) {
                    @:check2r _e.writeString((@:checkr _f_5414971 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5415419i32;
                } else if (__value__ == (5415380i32)) {
                    _gotoNext = 5415380i32;
                    @:check2r _e.writeString((@:checkr _f_5414971 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5415419i32;
                } else if (__value__ == (5415419i32)) {
                    _opts._quoted = (@:checkr _f_5414971 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5414971 ?? throw "null pointer dereference")._encoder(_e, _fv_5415054?.__copy__(), _opts?.__copy__());
                    _i_5414941++;
                    _gotoNext = 5415468i32;
                } else if (__value__ == (5415467i32)) {
                    _i_5414941 = 0i32;
                    _gotoNext = 5415468i32;
                } else if (__value__ == (5415468i32)) {
                    if (_i_5414941 < (_se._fields._list.length)) {
                        _gotoNext = 5414967i32;
                    } else {
                        _gotoNext = 5415471i32;
                    };
                } else if (__value__ == (5415471i32)) {
                    if (_next_5414907 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5415486i32;
                    } else {
                        _gotoNext = 5415518i32;
                    };
                } else if (__value__ == (5415486i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5415542i32;
                } else if (__value__ == (5415518i32)) {
                    _gotoNext = 5415518i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5415542i32;
                } else if (__value__ == (5415542i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
