package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _fv_5349036:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5348953:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5348923:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5348889:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5349053:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5349058_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5348889 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5348907i32;
                } else if (__value__ == (5348907i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5349449i32;
                    } else {
                        _gotoNext = 5349453i32;
                    };
                } else if (__value__ == (5348949i32)) {
                    _f_5348953 = (stdgo.Go.setRef(_se._fields._list[(_i_5348923 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5349036 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5348953 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5349206i32;
                    } else {
                        _gotoNext = 5349212i32;
                    };
                } else if (__value__ == (5349072i32)) {
                    _i_5349053 = (@:checkr _f_5348953 ?? throw "null pointer dereference")._index[(_i_5349058_0 : stdgo.GoInt)];
                    if (_fv_5349036.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5349109i32;
                    } else {
                        _gotoNext = 5349188i32;
                    };
                } else if (__value__ == (5349109i32)) {
                    if (_fv_5349036.isNil()) {
                        _gotoNext = 5349129i32;
                    } else {
                        _gotoNext = 5349165i32;
                    };
                } else if (__value__ == (5349129i32)) {
                    _i_5348923++;
                    _gotoNext = 5349450i32;
                } else if (__value__ == (5349165i32)) {
                    _fv_5349036 = _fv_5349036.elem()?.__copy__();
                    _gotoNext = 5349188i32;
                } else if (__value__ == (5349188i32)) {
                    _fv_5349036 = _fv_5349036.field(_i_5349053)?.__copy__();
                    _i_5349058_0++;
                    _gotoNext = 5349207i32;
                } else if (__value__ == (5349206i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5348953 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5349058_0 = __tmp__0;
                        _i_5349053 = __tmp__1;
                    };
                    _gotoNext = 5349207i32;
                } else if (__value__ == (5349207i32)) {
                    if (_i_5349058_0 < ((@:checkr _f_5348953 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5349072i32;
                    } else {
                        _gotoNext = 5349212i32;
                    };
                } else if (__value__ == (5349212i32)) {
                    if (((@:checkr _f_5348953 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5349036?.__copy__()) : Bool)) {
                        _gotoNext = 5349247i32;
                    } else {
                        _gotoNext = 5349267i32;
                    };
                } else if (__value__ == (5349247i32)) {
                    _i_5348923++;
                    _gotoNext = 5349450i32;
                } else if (__value__ == (5349267i32)) {
                    @:check2r _e.writeByte(_next_5348889);
                    _next_5348889 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5349319i32;
                    } else {
                        _gotoNext = 5349362i32;
                    };
                } else if (__value__ == (5349319i32)) {
                    @:check2r _e.writeString((@:checkr _f_5348953 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5349401i32;
                } else if (__value__ == (5349362i32)) {
                    _gotoNext = 5349362i32;
                    @:check2r _e.writeString((@:checkr _f_5348953 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5349401i32;
                } else if (__value__ == (5349401i32)) {
                    _opts._quoted = (@:checkr _f_5348953 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5348953 ?? throw "null pointer dereference")._encoder(_e, _fv_5349036?.__copy__(), _opts?.__copy__());
                    _i_5348923++;
                    _gotoNext = 5349450i32;
                } else if (__value__ == (5349449i32)) {
                    _i_5348923 = 0i32;
                    _gotoNext = 5349450i32;
                } else if (__value__ == (5349450i32)) {
                    if (_i_5348923 < (_se._fields._list.length)) {
                        _gotoNext = 5348949i32;
                    } else {
                        _gotoNext = 5349453i32;
                    };
                } else if (__value__ == (5349453i32)) {
                    if (_next_5348889 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5349468i32;
                    } else {
                        _gotoNext = 5349500i32;
                    };
                } else if (__value__ == (5349468i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5349524i32;
                } else if (__value__ == (5349500i32)) {
                    _gotoNext = 5349500i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5349524i32;
                } else if (__value__ == (5349524i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
