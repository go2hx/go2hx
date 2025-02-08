package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _fv_6613535:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _f_6613452:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _i_6613422:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_6613388:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_6613552:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6613557_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_6613388 = (123 : stdgo.GoUInt8);
                    _gotoNext = 6613406i32;
                } else if (__value__ == (6613406i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 6613948i32;
                    } else {
                        _gotoNext = 6613952i32;
                    };
                } else if (__value__ == (6613448i32)) {
                    _f_6613452 = (stdgo.Go.setRef(_se._fields._list[(_i_6613422 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_6613535 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_6613452 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 6613705i32;
                    } else {
                        _gotoNext = 6613711i32;
                    };
                } else if (__value__ == (6613571i32)) {
                    _i_6613552 = (@:checkr _f_6613452 ?? throw "null pointer dereference")._index[(_i_6613557_0 : stdgo.GoInt)];
                    if (_fv_6613535.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 6613608i32;
                    } else {
                        _gotoNext = 6613687i32;
                    };
                } else if (__value__ == (6613608i32)) {
                    if (_fv_6613535.isNil()) {
                        _gotoNext = 6613628i32;
                    } else {
                        _gotoNext = 6613664i32;
                    };
                } else if (__value__ == (6613628i32)) {
                    _i_6613422++;
                    _gotoNext = 6613949i32;
                } else if (__value__ == (6613664i32)) {
                    _fv_6613535 = _fv_6613535.elem()?.__copy__();
                    _gotoNext = 6613687i32;
                } else if (__value__ == (6613687i32)) {
                    _fv_6613535 = _fv_6613535.field(_i_6613552)?.__copy__();
                    _i_6613557_0++;
                    _gotoNext = 6613706i32;
                } else if (__value__ == (6613705i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_6613452 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_6613557_0 = __tmp__0;
                        _i_6613552 = __tmp__1;
                    };
                    _gotoNext = 6613706i32;
                } else if (__value__ == (6613706i32)) {
                    if (_i_6613557_0 < ((@:checkr _f_6613452 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 6613571i32;
                    } else {
                        _gotoNext = 6613711i32;
                    };
                } else if (__value__ == (6613711i32)) {
                    if (((@:checkr _f_6613452 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_6613535?.__copy__()) : Bool)) {
                        _gotoNext = 6613746i32;
                    } else {
                        _gotoNext = 6613766i32;
                    };
                } else if (__value__ == (6613746i32)) {
                    _i_6613422++;
                    _gotoNext = 6613949i32;
                } else if (__value__ == (6613766i32)) {
                    @:check2r _e.writeByte(_next_6613388);
                    _next_6613388 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 6613818i32;
                    } else {
                        _gotoNext = 6613861i32;
                    };
                } else if (__value__ == (6613818i32)) {
                    @:check2r _e.writeString((@:checkr _f_6613452 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 6613900i32;
                } else if (__value__ == (6613861i32)) {
                    _gotoNext = 6613861i32;
                    @:check2r _e.writeString((@:checkr _f_6613452 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 6613900i32;
                } else if (__value__ == (6613900i32)) {
                    _opts._quoted = (@:checkr _f_6613452 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_6613452 ?? throw "null pointer dereference")._encoder(_e, _fv_6613535?.__copy__(), _opts?.__copy__());
                    _i_6613422++;
                    _gotoNext = 6613949i32;
                } else if (__value__ == (6613948i32)) {
                    _i_6613422 = 0i32;
                    _gotoNext = 6613949i32;
                } else if (__value__ == (6613949i32)) {
                    if (_i_6613422 < (_se._fields._list.length)) {
                        _gotoNext = 6613448i32;
                    } else {
                        _gotoNext = 6613952i32;
                    };
                } else if (__value__ == (6613952i32)) {
                    if (_next_6613388 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 6613967i32;
                    } else {
                        _gotoNext = 6613999i32;
                    };
                } else if (__value__ == (6613967i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 6614023i32;
                } else if (__value__ == (6613999i32)) {
                    _gotoNext = 6613999i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 6614023i32;
                } else if (__value__ == (6614023i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
