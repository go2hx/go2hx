package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _next_5070471:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5070635:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5070640_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5070618:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _f_5070535:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _i_5070505:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5070471 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5070489i32;
                } else if (__value__ == (5070489i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5071031i32;
                    } else {
                        _gotoNext = 5071035i32;
                    };
                } else if (__value__ == (5070531i32)) {
                    _f_5070535 = (stdgo.Go.setRef(_se._fields._list[(_i_5070505 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_5070618 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5070535 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5070788i32;
                    } else {
                        _gotoNext = 5070794i32;
                    };
                } else if (__value__ == (5070654i32)) {
                    _i_5070635 = (@:checkr _f_5070535 ?? throw "null pointer dereference")._index[(_i_5070640_0 : stdgo.GoInt)];
                    if (_fv_5070618.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 5070691i32;
                    } else {
                        _gotoNext = 5070770i32;
                    };
                } else if (__value__ == (5070691i32)) {
                    if (_fv_5070618.isNil()) {
                        _gotoNext = 5070711i32;
                    } else {
                        _gotoNext = 5070747i32;
                    };
                } else if (__value__ == (5070711i32)) {
                    _i_5070505++;
                    _gotoNext = 5071032i32;
                } else if (__value__ == (5070747i32)) {
                    _fv_5070618 = _fv_5070618.elem()?.__copy__();
                    _gotoNext = 5070770i32;
                } else if (__value__ == (5070770i32)) {
                    _fv_5070618 = _fv_5070618.field(_i_5070635)?.__copy__();
                    _i_5070640_0++;
                    _gotoNext = 5070789i32;
                } else if (__value__ == (5070788i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5070535 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5070640_0 = __tmp__0;
                        _i_5070635 = __tmp__1;
                    };
                    _gotoNext = 5070789i32;
                } else if (__value__ == (5070789i32)) {
                    if (_i_5070640_0 < ((@:checkr _f_5070535 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5070654i32;
                    } else {
                        _gotoNext = 5070794i32;
                    };
                } else if (__value__ == (5070794i32)) {
                    if (((@:checkr _f_5070535 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_5070618?.__copy__()) : Bool)) {
                        _gotoNext = 5070829i32;
                    } else {
                        _gotoNext = 5070849i32;
                    };
                } else if (__value__ == (5070829i32)) {
                    _i_5070505++;
                    _gotoNext = 5071032i32;
                } else if (__value__ == (5070849i32)) {
                    @:check2r _e.writeByte(_next_5070471);
                    _next_5070471 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5070901i32;
                    } else {
                        _gotoNext = 5070944i32;
                    };
                } else if (__value__ == (5070901i32)) {
                    @:check2r _e.writeString((@:checkr _f_5070535 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5070983i32;
                } else if (__value__ == (5070944i32)) {
                    _gotoNext = 5070944i32;
                    @:check2r _e.writeString((@:checkr _f_5070535 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5070983i32;
                } else if (__value__ == (5070983i32)) {
                    _opts._quoted = (@:checkr _f_5070535 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5070535 ?? throw "null pointer dereference")._encoder(_e, _fv_5070618?.__copy__(), _opts?.__copy__());
                    _i_5070505++;
                    _gotoNext = 5071032i32;
                } else if (__value__ == (5071031i32)) {
                    _i_5070505 = 0i32;
                    _gotoNext = 5071032i32;
                } else if (__value__ == (5071032i32)) {
                    if (_i_5070505 < (_se._fields._list.length)) {
                        _gotoNext = 5070531i32;
                    } else {
                        _gotoNext = 5071035i32;
                    };
                } else if (__value__ == (5071035i32)) {
                    if (_next_5070471 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5071050i32;
                    } else {
                        _gotoNext = 5071082i32;
                    };
                } else if (__value__ == (5071050i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5071106i32;
                } else if (__value__ == (5071082i32)) {
                    _gotoNext = 5071082i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5071106i32;
                } else if (__value__ == (5071106i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
