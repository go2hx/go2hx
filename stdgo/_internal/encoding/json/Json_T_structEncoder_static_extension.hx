package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5165995:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5166000_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5165978:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5165895:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5165865:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5165831:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5165831 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5165849i32;
                } else if (__value__ == (5165849i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5166391i32;
                    } else {
                        _gotoNext = 5166395i32;
                    };
                } else if (__value__ == (5165891i32)) {
                    _f_5165895 = (stdgo.Go.setRef(_se._fields._list[(_i_5165865 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5165978 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5165895 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5166148i32;
                    } else {
                        _gotoNext = 5166154i32;
                    };
                } else if (__value__ == (5166014i32)) {
                    _i_5165995 = (@:checkr _f_5165895 ?? throw "null pointer dereference")._index[(_i_5166000_0 : stdgo.GoInt)];
                    if (_fv_5165978.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5166051i32;
                    } else {
                        _gotoNext = 5166130i32;
                    };
                } else if (__value__ == (5166051i32)) {
                    if (_fv_5165978.isNil()) {
                        _gotoNext = 5166071i32;
                    } else {
                        _gotoNext = 5166107i32;
                    };
                } else if (__value__ == (5166071i32)) {
                    _i_5165865++;
                    _gotoNext = 5166392i32;
                } else if (__value__ == (5166107i32)) {
                    _fv_5165978 = _fv_5165978.elem()?.__copy__();
                    _gotoNext = 5166130i32;
                } else if (__value__ == (5166130i32)) {
                    _fv_5165978 = _fv_5165978.field(_i_5165995)?.__copy__();
                    _i_5166000_0++;
                    _gotoNext = 5166149i32;
                } else if (__value__ == (5166148i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5165895 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5166000_0 = __tmp__0;
                        _i_5165995 = __tmp__1;
                    };
                    _gotoNext = 5166149i32;
                } else if (__value__ == (5166149i32)) {
                    if (_i_5166000_0 < ((@:checkr _f_5165895 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5166014i32;
                    } else {
                        _gotoNext = 5166154i32;
                    };
                } else if (__value__ == (5166154i32)) {
                    if (((@:checkr _f_5165895 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5165978?.__copy__()) : Bool)) {
                        _gotoNext = 5166189i32;
                    } else {
                        _gotoNext = 5166209i32;
                    };
                } else if (__value__ == (5166189i32)) {
                    _i_5165865++;
                    _gotoNext = 5166392i32;
                } else if (__value__ == (5166209i32)) {
                    @:check2r _e.writeByte(_next_5165831);
                    _next_5165831 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5166261i32;
                    } else {
                        _gotoNext = 5166304i32;
                    };
                } else if (__value__ == (5166261i32)) {
                    @:check2r _e.writeString((@:checkr _f_5165895 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5166343i32;
                } else if (__value__ == (5166304i32)) {
                    _gotoNext = 5166304i32;
                    @:check2r _e.writeString((@:checkr _f_5165895 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5166343i32;
                } else if (__value__ == (5166343i32)) {
                    _opts._quoted = (@:checkr _f_5165895 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5165895 ?? throw "null pointer dereference")._encoder(_e, _fv_5165978?.__copy__(), _opts?.__copy__());
                    _i_5165865++;
                    _gotoNext = 5166392i32;
                } else if (__value__ == (5166391i32)) {
                    _i_5165865 = 0i32;
                    _gotoNext = 5166392i32;
                } else if (__value__ == (5166392i32)) {
                    if (_i_5165865 < (_se._fields._list.length)) {
                        _gotoNext = 5165891i32;
                    } else {
                        _gotoNext = 5166395i32;
                    };
                } else if (__value__ == (5166395i32)) {
                    if (_next_5165831 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5166410i32;
                    } else {
                        _gotoNext = 5166442i32;
                    };
                } else if (__value__ == (5166410i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5166466i32;
                } else if (__value__ == (5166442i32)) {
                    _gotoNext = 5166442i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5166466i32;
                } else if (__value__ == (5166466i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
