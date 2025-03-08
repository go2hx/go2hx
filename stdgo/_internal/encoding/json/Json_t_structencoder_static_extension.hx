package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _fv_5:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _f_4:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _i_3:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6467275_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_2 = (123 : stdgo.GoUInt8);
                    _gotoNext = 6467124i32;
                } else if (__value__ == (6467124i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 6467666i32;
                    } else {
                        _gotoNext = 6467670i32;
                    };
                } else if (__value__ == (6467166i32)) {
                    _f_4 = (stdgo.Go.setRef(_se._fields._list[(_i_3 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_5 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_4 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 6467423i32;
                    } else {
                        _gotoNext = 6467429i32;
                    };
                } else if (__value__ == (6467289i32)) {
                    _i_7 = (@:checkr _f_4 ?? throw "null pointer dereference")._index[(_i_6467275_6 : stdgo.GoInt)];
                    if (_fv_5.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 6467326i32;
                    } else {
                        _gotoNext = 6467405i32;
                    };
                } else if (__value__ == (6467326i32)) {
                    if (_fv_5.isNil()) {
                        _gotoNext = 6467346i32;
                    } else {
                        _gotoNext = 6467382i32;
                    };
                } else if (__value__ == (6467346i32)) {
                    _i_3++;
                    _gotoNext = 6467667i32;
                } else if (__value__ == (6467382i32)) {
                    _fv_5 = _fv_5.elem()?.__copy__();
                    _gotoNext = 6467405i32;
                } else if (__value__ == (6467405i32)) {
                    _fv_5 = _fv_5.field(_i_7)?.__copy__();
                    _i_6467275_6++;
                    _gotoNext = 6467424i32;
                } else if (__value__ == (6467423i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_4 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_6467275_6 = @:binopAssign __tmp__0;
                        _i_7 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 6467424i32;
                } else if (__value__ == (6467424i32)) {
                    if (_i_6467275_6 < ((@:checkr _f_4 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 6467289i32;
                    } else {
                        _gotoNext = 6467429i32;
                    };
                } else if (__value__ == (6467429i32)) {
                    if (((@:checkr _f_4 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_5?.__copy__()) : Bool)) {
                        _gotoNext = 6467464i32;
                    } else {
                        _gotoNext = 6467484i32;
                    };
                } else if (__value__ == (6467464i32)) {
                    _i_3++;
                    _gotoNext = 6467667i32;
                } else if (__value__ == (6467484i32)) {
                    @:check2r _e.writeByte(_next_2);
                    _next_2 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 6467536i32;
                    } else {
                        _gotoNext = 6467579i32;
                    };
                } else if (__value__ == (6467536i32)) {
                    @:check2r _e.writeString((@:checkr _f_4 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 6467618i32;
                } else if (__value__ == (6467579i32)) {
                    _gotoNext = 6467579i32;
                    @:check2r _e.writeString((@:checkr _f_4 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 6467618i32;
                } else if (__value__ == (6467618i32)) {
                    _opts._quoted = (@:checkr _f_4 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_4 ?? throw "null pointer dereference")._encoder(_e, _fv_5?.__copy__(), _opts?.__copy__());
                    _i_3++;
                    _gotoNext = 6467667i32;
                } else if (__value__ == (6467666i32)) {
                    _i_3 = 0i32;
                    _gotoNext = 6467667i32;
                } else if (__value__ == (6467667i32)) {
                    if (_i_3 < (_se._fields._list.length)) {
                        _gotoNext = 6467166i32;
                    } else {
                        _gotoNext = 6467670i32;
                    };
                } else if (__value__ == (6467670i32)) {
                    if (_next_2 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 6467685i32;
                    } else {
                        _gotoNext = 6467717i32;
                    };
                } else if (__value__ == (6467685i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 6467741i32;
                } else if (__value__ == (6467717i32)) {
                    _gotoNext = 6467717i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 6467741i32;
                } else if (__value__ == (6467741i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
