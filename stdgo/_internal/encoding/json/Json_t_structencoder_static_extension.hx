package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _i_5328553:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5328558_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5328536:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _f_5328453:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _i_5328423:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5328389:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5328389 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5328407i32;
                } else if (__value__ == (5328407i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5328949i32;
                    } else {
                        _gotoNext = 5328953i32;
                    };
                } else if (__value__ == (5328449i32)) {
                    _f_5328453 = (stdgo.Go.setRef(_se._fields._list[(_i_5328423 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_5328536 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5328453 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5328706i32;
                    } else {
                        _gotoNext = 5328712i32;
                    };
                } else if (__value__ == (5328572i32)) {
                    _i_5328553 = (@:checkr _f_5328453 ?? throw "null pointer dereference")._index[(_i_5328558_0 : stdgo.GoInt)];
                    if (_fv_5328536.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 5328609i32;
                    } else {
                        _gotoNext = 5328688i32;
                    };
                } else if (__value__ == (5328609i32)) {
                    if (_fv_5328536.isNil()) {
                        _gotoNext = 5328629i32;
                    } else {
                        _gotoNext = 5328665i32;
                    };
                } else if (__value__ == (5328629i32)) {
                    _i_5328423++;
                    _gotoNext = 5328950i32;
                } else if (__value__ == (5328665i32)) {
                    _fv_5328536 = _fv_5328536.elem()?.__copy__();
                    _gotoNext = 5328688i32;
                } else if (__value__ == (5328688i32)) {
                    _fv_5328536 = _fv_5328536.field(_i_5328553)?.__copy__();
                    _i_5328558_0++;
                    _gotoNext = 5328707i32;
                } else if (__value__ == (5328706i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5328453 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5328558_0 = __tmp__0;
                        _i_5328553 = __tmp__1;
                    };
                    _gotoNext = 5328707i32;
                } else if (__value__ == (5328707i32)) {
                    if (_i_5328558_0 < ((@:checkr _f_5328453 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5328572i32;
                    } else {
                        _gotoNext = 5328712i32;
                    };
                } else if (__value__ == (5328712i32)) {
                    if (((@:checkr _f_5328453 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_5328536?.__copy__()) : Bool)) {
                        _gotoNext = 5328747i32;
                    } else {
                        _gotoNext = 5328767i32;
                    };
                } else if (__value__ == (5328747i32)) {
                    _i_5328423++;
                    _gotoNext = 5328950i32;
                } else if (__value__ == (5328767i32)) {
                    @:check2r _e.writeByte(_next_5328389);
                    _next_5328389 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5328819i32;
                    } else {
                        _gotoNext = 5328862i32;
                    };
                } else if (__value__ == (5328819i32)) {
                    @:check2r _e.writeString((@:checkr _f_5328453 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5328901i32;
                } else if (__value__ == (5328862i32)) {
                    _gotoNext = 5328862i32;
                    @:check2r _e.writeString((@:checkr _f_5328453 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5328901i32;
                } else if (__value__ == (5328901i32)) {
                    _opts._quoted = (@:checkr _f_5328453 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5328453 ?? throw "null pointer dereference")._encoder(_e, _fv_5328536?.__copy__(), _opts?.__copy__());
                    _i_5328423++;
                    _gotoNext = 5328950i32;
                } else if (__value__ == (5328949i32)) {
                    _i_5328423 = 0i32;
                    _gotoNext = 5328950i32;
                } else if (__value__ == (5328950i32)) {
                    if (_i_5328423 < (_se._fields._list.length)) {
                        _gotoNext = 5328449i32;
                    } else {
                        _gotoNext = 5328953i32;
                    };
                } else if (__value__ == (5328953i32)) {
                    if (_next_5328389 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5328968i32;
                    } else {
                        _gotoNext = 5329000i32;
                    };
                } else if (__value__ == (5328968i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5329024i32;
                } else if (__value__ == (5329000i32)) {
                    _gotoNext = 5329000i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5329024i32;
                } else if (__value__ == (5329024i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
