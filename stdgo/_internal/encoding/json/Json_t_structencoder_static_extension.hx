package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _i_5244373:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5244378_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5244356:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _f_5244273:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _i_5244243:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5244209:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5244209 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5244227i32;
                } else if (__value__ == (5244227i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5244769i32;
                    } else {
                        _gotoNext = 5244773i32;
                    };
                } else if (__value__ == (5244269i32)) {
                    _f_5244273 = (stdgo.Go.setRef(_se._fields._list[(_i_5244243 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_5244356 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5244273 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5244526i32;
                    } else {
                        _gotoNext = 5244532i32;
                    };
                } else if (__value__ == (5244392i32)) {
                    _i_5244373 = (@:checkr _f_5244273 ?? throw "null pointer dereference")._index[(_i_5244378_0 : stdgo.GoInt)];
                    if (_fv_5244356.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 5244429i32;
                    } else {
                        _gotoNext = 5244508i32;
                    };
                } else if (__value__ == (5244429i32)) {
                    if (_fv_5244356.isNil()) {
                        _gotoNext = 5244449i32;
                    } else {
                        _gotoNext = 5244485i32;
                    };
                } else if (__value__ == (5244449i32)) {
                    _i_5244243++;
                    _gotoNext = 5244770i32;
                } else if (__value__ == (5244485i32)) {
                    _fv_5244356 = _fv_5244356.elem()?.__copy__();
                    _gotoNext = 5244508i32;
                } else if (__value__ == (5244508i32)) {
                    _fv_5244356 = _fv_5244356.field(_i_5244373)?.__copy__();
                    _i_5244378_0++;
                    _gotoNext = 5244527i32;
                } else if (__value__ == (5244526i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5244273 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5244378_0 = __tmp__0;
                        _i_5244373 = __tmp__1;
                    };
                    _gotoNext = 5244527i32;
                } else if (__value__ == (5244527i32)) {
                    if (_i_5244378_0 < ((@:checkr _f_5244273 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5244392i32;
                    } else {
                        _gotoNext = 5244532i32;
                    };
                } else if (__value__ == (5244532i32)) {
                    if (((@:checkr _f_5244273 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_5244356?.__copy__()) : Bool)) {
                        _gotoNext = 5244567i32;
                    } else {
                        _gotoNext = 5244587i32;
                    };
                } else if (__value__ == (5244567i32)) {
                    _i_5244243++;
                    _gotoNext = 5244770i32;
                } else if (__value__ == (5244587i32)) {
                    @:check2r _e.writeByte(_next_5244209);
                    _next_5244209 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5244639i32;
                    } else {
                        _gotoNext = 5244682i32;
                    };
                } else if (__value__ == (5244639i32)) {
                    @:check2r _e.writeString((@:checkr _f_5244273 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5244721i32;
                } else if (__value__ == (5244682i32)) {
                    _gotoNext = 5244682i32;
                    @:check2r _e.writeString((@:checkr _f_5244273 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5244721i32;
                } else if (__value__ == (5244721i32)) {
                    _opts._quoted = (@:checkr _f_5244273 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5244273 ?? throw "null pointer dereference")._encoder(_e, _fv_5244356?.__copy__(), _opts?.__copy__());
                    _i_5244243++;
                    _gotoNext = 5244770i32;
                } else if (__value__ == (5244769i32)) {
                    _i_5244243 = 0i32;
                    _gotoNext = 5244770i32;
                } else if (__value__ == (5244770i32)) {
                    if (_i_5244243 < (_se._fields._list.length)) {
                        _gotoNext = 5244269i32;
                    } else {
                        _gotoNext = 5244773i32;
                    };
                } else if (__value__ == (5244773i32)) {
                    if (_next_5244209 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5244788i32;
                    } else {
                        _gotoNext = 5244820i32;
                    };
                } else if (__value__ == (5244788i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5244844i32;
                } else if (__value__ == (5244820i32)) {
                    _gotoNext = 5244820i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5244844i32;
                } else if (__value__ == (5244844i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
