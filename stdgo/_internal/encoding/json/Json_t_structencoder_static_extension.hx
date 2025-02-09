package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _fv_5344350:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _f_5344267:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _i_5344237:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5344203:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5344367:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5344372_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5344203 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5344221i32;
                } else if (__value__ == (5344221i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5344763i32;
                    } else {
                        _gotoNext = 5344767i32;
                    };
                } else if (__value__ == (5344263i32)) {
                    _f_5344267 = (stdgo.Go.setRef(_se._fields._list[(_i_5344237 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_5344350 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5344267 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5344520i32;
                    } else {
                        _gotoNext = 5344526i32;
                    };
                } else if (__value__ == (5344386i32)) {
                    _i_5344367 = (@:checkr _f_5344267 ?? throw "null pointer dereference")._index[(_i_5344372_0 : stdgo.GoInt)];
                    if (_fv_5344350.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 5344423i32;
                    } else {
                        _gotoNext = 5344502i32;
                    };
                } else if (__value__ == (5344423i32)) {
                    if (_fv_5344350.isNil()) {
                        _gotoNext = 5344443i32;
                    } else {
                        _gotoNext = 5344479i32;
                    };
                } else if (__value__ == (5344443i32)) {
                    _i_5344237++;
                    _gotoNext = 5344764i32;
                } else if (__value__ == (5344479i32)) {
                    _fv_5344350 = _fv_5344350.elem()?.__copy__();
                    _gotoNext = 5344502i32;
                } else if (__value__ == (5344502i32)) {
                    _fv_5344350 = _fv_5344350.field(_i_5344367)?.__copy__();
                    _i_5344372_0++;
                    _gotoNext = 5344521i32;
                } else if (__value__ == (5344520i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5344267 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5344372_0 = __tmp__0;
                        _i_5344367 = __tmp__1;
                    };
                    _gotoNext = 5344521i32;
                } else if (__value__ == (5344521i32)) {
                    if (_i_5344372_0 < ((@:checkr _f_5344267 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5344386i32;
                    } else {
                        _gotoNext = 5344526i32;
                    };
                } else if (__value__ == (5344526i32)) {
                    if (((@:checkr _f_5344267 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_5344350?.__copy__()) : Bool)) {
                        _gotoNext = 5344561i32;
                    } else {
                        _gotoNext = 5344581i32;
                    };
                } else if (__value__ == (5344561i32)) {
                    _i_5344237++;
                    _gotoNext = 5344764i32;
                } else if (__value__ == (5344581i32)) {
                    @:check2r _e.writeByte(_next_5344203);
                    _next_5344203 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5344633i32;
                    } else {
                        _gotoNext = 5344676i32;
                    };
                } else if (__value__ == (5344633i32)) {
                    @:check2r _e.writeString((@:checkr _f_5344267 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5344715i32;
                } else if (__value__ == (5344676i32)) {
                    _gotoNext = 5344676i32;
                    @:check2r _e.writeString((@:checkr _f_5344267 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5344715i32;
                } else if (__value__ == (5344715i32)) {
                    _opts._quoted = (@:checkr _f_5344267 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5344267 ?? throw "null pointer dereference")._encoder(_e, _fv_5344350?.__copy__(), _opts?.__copy__());
                    _i_5344237++;
                    _gotoNext = 5344764i32;
                } else if (__value__ == (5344763i32)) {
                    _i_5344237 = 0i32;
                    _gotoNext = 5344764i32;
                } else if (__value__ == (5344764i32)) {
                    if (_i_5344237 < (_se._fields._list.length)) {
                        _gotoNext = 5344263i32;
                    } else {
                        _gotoNext = 5344767i32;
                    };
                } else if (__value__ == (5344767i32)) {
                    if (_next_5344203 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5344782i32;
                    } else {
                        _gotoNext = 5344814i32;
                    };
                } else if (__value__ == (5344782i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5344838i32;
                } else if (__value__ == (5344814i32)) {
                    _gotoNext = 5344814i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5344838i32;
                } else if (__value__ == (5344838i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
