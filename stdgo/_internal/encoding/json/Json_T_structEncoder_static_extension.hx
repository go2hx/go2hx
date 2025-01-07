package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _next_5341446:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5341610:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5341615_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5341593:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5341510:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5341480:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5341446 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5341464i32;
                } else if (__value__ == (5341464i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5342006i32;
                    } else {
                        _gotoNext = 5342010i32;
                    };
                } else if (__value__ == (5341506i32)) {
                    _f_5341510 = (stdgo.Go.setRef(_se._fields._list[(_i_5341480 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5341593 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5341510 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5341763i32;
                    } else {
                        _gotoNext = 5341769i32;
                    };
                } else if (__value__ == (5341629i32)) {
                    _i_5341610 = (@:checkr _f_5341510 ?? throw "null pointer dereference")._index[(_i_5341615_0 : stdgo.GoInt)];
                    if (_fv_5341593.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5341666i32;
                    } else {
                        _gotoNext = 5341745i32;
                    };
                } else if (__value__ == (5341666i32)) {
                    if (_fv_5341593.isNil()) {
                        _gotoNext = 5341686i32;
                    } else {
                        _gotoNext = 5341722i32;
                    };
                } else if (__value__ == (5341686i32)) {
                    _i_5341480++;
                    _gotoNext = 5342007i32;
                } else if (__value__ == (5341722i32)) {
                    _fv_5341593 = _fv_5341593.elem()?.__copy__();
                    _gotoNext = 5341745i32;
                } else if (__value__ == (5341745i32)) {
                    _fv_5341593 = _fv_5341593.field(_i_5341610)?.__copy__();
                    _i_5341615_0++;
                    _gotoNext = 5341764i32;
                } else if (__value__ == (5341763i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5341510 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5341615_0 = __tmp__0;
                        _i_5341610 = __tmp__1;
                    };
                    _gotoNext = 5341764i32;
                } else if (__value__ == (5341764i32)) {
                    if (_i_5341615_0 < ((@:checkr _f_5341510 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5341629i32;
                    } else {
                        _gotoNext = 5341769i32;
                    };
                } else if (__value__ == (5341769i32)) {
                    if (((@:checkr _f_5341510 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5341593?.__copy__()) : Bool)) {
                        _gotoNext = 5341804i32;
                    } else {
                        _gotoNext = 5341824i32;
                    };
                } else if (__value__ == (5341804i32)) {
                    _i_5341480++;
                    _gotoNext = 5342007i32;
                } else if (__value__ == (5341824i32)) {
                    @:check2r _e.writeByte(_next_5341446);
                    _next_5341446 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5341876i32;
                    } else {
                        _gotoNext = 5341919i32;
                    };
                } else if (__value__ == (5341876i32)) {
                    @:check2r _e.writeString((@:checkr _f_5341510 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5341958i32;
                } else if (__value__ == (5341919i32)) {
                    _gotoNext = 5341919i32;
                    @:check2r _e.writeString((@:checkr _f_5341510 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5341958i32;
                } else if (__value__ == (5341958i32)) {
                    _opts._quoted = (@:checkr _f_5341510 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5341510 ?? throw "null pointer dereference")._encoder(_e, _fv_5341593?.__copy__(), _opts?.__copy__());
                    _i_5341480++;
                    _gotoNext = 5342007i32;
                } else if (__value__ == (5342006i32)) {
                    _i_5341480 = 0i32;
                    _gotoNext = 5342007i32;
                } else if (__value__ == (5342007i32)) {
                    if (_i_5341480 < (_se._fields._list.length)) {
                        _gotoNext = 5341506i32;
                    } else {
                        _gotoNext = 5342010i32;
                    };
                } else if (__value__ == (5342010i32)) {
                    if (_next_5341446 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5342025i32;
                    } else {
                        _gotoNext = 5342057i32;
                    };
                } else if (__value__ == (5342025i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5342081i32;
                } else if (__value__ == (5342057i32)) {
                    _gotoNext = 5342057i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5342081i32;
                } else if (__value__ == (5342081i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
