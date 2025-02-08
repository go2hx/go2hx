package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _f_5448127:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _i_5448097:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5448063:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5448227:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5448232_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5448210:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5448063 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5448081i32;
                } else if (__value__ == (5448081i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5448623i32;
                    } else {
                        _gotoNext = 5448627i32;
                    };
                } else if (__value__ == (5448123i32)) {
                    _f_5448127 = (stdgo.Go.setRef(_se._fields._list[(_i_5448097 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_5448210 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5448127 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5448380i32;
                    } else {
                        _gotoNext = 5448386i32;
                    };
                } else if (__value__ == (5448246i32)) {
                    _i_5448227 = (@:checkr _f_5448127 ?? throw "null pointer dereference")._index[(_i_5448232_0 : stdgo.GoInt)];
                    if (_fv_5448210.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 5448283i32;
                    } else {
                        _gotoNext = 5448362i32;
                    };
                } else if (__value__ == (5448283i32)) {
                    if (_fv_5448210.isNil()) {
                        _gotoNext = 5448303i32;
                    } else {
                        _gotoNext = 5448339i32;
                    };
                } else if (__value__ == (5448303i32)) {
                    _i_5448097++;
                    _gotoNext = 5448624i32;
                } else if (__value__ == (5448339i32)) {
                    _fv_5448210 = _fv_5448210.elem()?.__copy__();
                    _gotoNext = 5448362i32;
                } else if (__value__ == (5448362i32)) {
                    _fv_5448210 = _fv_5448210.field(_i_5448227)?.__copy__();
                    _i_5448232_0++;
                    _gotoNext = 5448381i32;
                } else if (__value__ == (5448380i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5448127 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5448232_0 = __tmp__0;
                        _i_5448227 = __tmp__1;
                    };
                    _gotoNext = 5448381i32;
                } else if (__value__ == (5448381i32)) {
                    if (_i_5448232_0 < ((@:checkr _f_5448127 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5448246i32;
                    } else {
                        _gotoNext = 5448386i32;
                    };
                } else if (__value__ == (5448386i32)) {
                    if (((@:checkr _f_5448127 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_5448210?.__copy__()) : Bool)) {
                        _gotoNext = 5448421i32;
                    } else {
                        _gotoNext = 5448441i32;
                    };
                } else if (__value__ == (5448421i32)) {
                    _i_5448097++;
                    _gotoNext = 5448624i32;
                } else if (__value__ == (5448441i32)) {
                    @:check2r _e.writeByte(_next_5448063);
                    _next_5448063 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5448493i32;
                    } else {
                        _gotoNext = 5448536i32;
                    };
                } else if (__value__ == (5448493i32)) {
                    @:check2r _e.writeString((@:checkr _f_5448127 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5448575i32;
                } else if (__value__ == (5448536i32)) {
                    _gotoNext = 5448536i32;
                    @:check2r _e.writeString((@:checkr _f_5448127 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5448575i32;
                } else if (__value__ == (5448575i32)) {
                    _opts._quoted = (@:checkr _f_5448127 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5448127 ?? throw "null pointer dereference")._encoder(_e, _fv_5448210?.__copy__(), _opts?.__copy__());
                    _i_5448097++;
                    _gotoNext = 5448624i32;
                } else if (__value__ == (5448623i32)) {
                    _i_5448097 = 0i32;
                    _gotoNext = 5448624i32;
                } else if (__value__ == (5448624i32)) {
                    if (_i_5448097 < (_se._fields._list.length)) {
                        _gotoNext = 5448123i32;
                    } else {
                        _gotoNext = 5448627i32;
                    };
                } else if (__value__ == (5448627i32)) {
                    if (_next_5448063 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5448642i32;
                    } else {
                        _gotoNext = 5448674i32;
                    };
                } else if (__value__ == (5448642i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5448698i32;
                } else if (__value__ == (5448674i32)) {
                    _gotoNext = 5448674i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5448698i32;
                } else if (__value__ == (5448698i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
