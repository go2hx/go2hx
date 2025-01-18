package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _fv_5291950:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5291867:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5291837:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5291803:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5291967:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5291972_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5291803 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5291821i32;
                } else if (__value__ == (5291821i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5292363i32;
                    } else {
                        _gotoNext = 5292367i32;
                    };
                } else if (__value__ == (5291863i32)) {
                    _f_5291867 = (stdgo.Go.setRef(_se._fields._list[(_i_5291837 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5291950 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5291867 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5292120i32;
                    } else {
                        _gotoNext = 5292126i32;
                    };
                } else if (__value__ == (5291986i32)) {
                    _i_5291967 = (@:checkr _f_5291867 ?? throw "null pointer dereference")._index[(_i_5291972_0 : stdgo.GoInt)];
                    if (_fv_5291950.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5292023i32;
                    } else {
                        _gotoNext = 5292102i32;
                    };
                } else if (__value__ == (5292023i32)) {
                    if (_fv_5291950.isNil()) {
                        _gotoNext = 5292043i32;
                    } else {
                        _gotoNext = 5292079i32;
                    };
                } else if (__value__ == (5292043i32)) {
                    _i_5291837++;
                    _gotoNext = 5292364i32;
                } else if (__value__ == (5292079i32)) {
                    _fv_5291950 = _fv_5291950.elem()?.__copy__();
                    _gotoNext = 5292102i32;
                } else if (__value__ == (5292102i32)) {
                    _fv_5291950 = _fv_5291950.field(_i_5291967)?.__copy__();
                    _i_5291972_0++;
                    _gotoNext = 5292121i32;
                } else if (__value__ == (5292120i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5291867 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5291972_0 = __tmp__0;
                        _i_5291967 = __tmp__1;
                    };
                    _gotoNext = 5292121i32;
                } else if (__value__ == (5292121i32)) {
                    if (_i_5291972_0 < ((@:checkr _f_5291867 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5291986i32;
                    } else {
                        _gotoNext = 5292126i32;
                    };
                } else if (__value__ == (5292126i32)) {
                    if (((@:checkr _f_5291867 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5291950?.__copy__()) : Bool)) {
                        _gotoNext = 5292161i32;
                    } else {
                        _gotoNext = 5292181i32;
                    };
                } else if (__value__ == (5292161i32)) {
                    _i_5291837++;
                    _gotoNext = 5292364i32;
                } else if (__value__ == (5292181i32)) {
                    @:check2r _e.writeByte(_next_5291803);
                    _next_5291803 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5292233i32;
                    } else {
                        _gotoNext = 5292276i32;
                    };
                } else if (__value__ == (5292233i32)) {
                    @:check2r _e.writeString((@:checkr _f_5291867 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5292315i32;
                } else if (__value__ == (5292276i32)) {
                    _gotoNext = 5292276i32;
                    @:check2r _e.writeString((@:checkr _f_5291867 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5292315i32;
                } else if (__value__ == (5292315i32)) {
                    _opts._quoted = (@:checkr _f_5291867 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5291867 ?? throw "null pointer dereference")._encoder(_e, _fv_5291950?.__copy__(), _opts?.__copy__());
                    _i_5291837++;
                    _gotoNext = 5292364i32;
                } else if (__value__ == (5292363i32)) {
                    _i_5291837 = 0i32;
                    _gotoNext = 5292364i32;
                } else if (__value__ == (5292364i32)) {
                    if (_i_5291837 < (_se._fields._list.length)) {
                        _gotoNext = 5291863i32;
                    } else {
                        _gotoNext = 5292367i32;
                    };
                } else if (__value__ == (5292367i32)) {
                    if (_next_5291803 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5292382i32;
                    } else {
                        _gotoNext = 5292414i32;
                    };
                } else if (__value__ == (5292382i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5292438i32;
                } else if (__value__ == (5292414i32)) {
                    _gotoNext = 5292414i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5292438i32;
                } else if (__value__ == (5292438i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
