package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _next_6825669:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_6825833:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6825838_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_6825816:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_6825733:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_6825703:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_6825669 = (123 : stdgo.GoUInt8);
                    _gotoNext = 6825687i32;
                } else if (__value__ == (6825687i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 6826229i32;
                    } else {
                        _gotoNext = 6826233i32;
                    };
                } else if (__value__ == (6825729i32)) {
                    _f_6825733 = (stdgo.Go.setRef(_se._fields._list[(_i_6825703 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_6825816 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_6825733 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 6825986i32;
                    } else {
                        _gotoNext = 6825992i32;
                    };
                } else if (__value__ == (6825852i32)) {
                    _i_6825833 = (@:checkr _f_6825733 ?? throw "null pointer dereference")._index[(_i_6825838_0 : stdgo.GoInt)];
                    if (_fv_6825816.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 6825889i32;
                    } else {
                        _gotoNext = 6825968i32;
                    };
                } else if (__value__ == (6825889i32)) {
                    if (_fv_6825816.isNil()) {
                        _gotoNext = 6825909i32;
                    } else {
                        _gotoNext = 6825945i32;
                    };
                } else if (__value__ == (6825909i32)) {
                    _i_6825703++;
                    _gotoNext = 6826230i32;
                } else if (__value__ == (6825945i32)) {
                    _fv_6825816 = _fv_6825816.elem()?.__copy__();
                    _gotoNext = 6825968i32;
                } else if (__value__ == (6825968i32)) {
                    _fv_6825816 = _fv_6825816.field(_i_6825833)?.__copy__();
                    _i_6825838_0++;
                    _gotoNext = 6825987i32;
                } else if (__value__ == (6825986i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_6825733 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_6825838_0 = __tmp__0;
                        _i_6825833 = __tmp__1;
                    };
                    _gotoNext = 6825987i32;
                } else if (__value__ == (6825987i32)) {
                    if (_i_6825838_0 < ((@:checkr _f_6825733 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 6825852i32;
                    } else {
                        _gotoNext = 6825992i32;
                    };
                } else if (__value__ == (6825992i32)) {
                    if (((@:checkr _f_6825733 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_6825816?.__copy__()) : Bool)) {
                        _gotoNext = 6826027i32;
                    } else {
                        _gotoNext = 6826047i32;
                    };
                } else if (__value__ == (6826027i32)) {
                    _i_6825703++;
                    _gotoNext = 6826230i32;
                } else if (__value__ == (6826047i32)) {
                    @:check2r _e.writeByte(_next_6825669);
                    _next_6825669 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 6826099i32;
                    } else {
                        _gotoNext = 6826142i32;
                    };
                } else if (__value__ == (6826099i32)) {
                    @:check2r _e.writeString((@:checkr _f_6825733 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 6826181i32;
                } else if (__value__ == (6826142i32)) {
                    _gotoNext = 6826142i32;
                    @:check2r _e.writeString((@:checkr _f_6825733 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 6826181i32;
                } else if (__value__ == (6826181i32)) {
                    _opts._quoted = (@:checkr _f_6825733 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_6825733 ?? throw "null pointer dereference")._encoder(_e, _fv_6825816?.__copy__(), _opts?.__copy__());
                    _i_6825703++;
                    _gotoNext = 6826230i32;
                } else if (__value__ == (6826229i32)) {
                    _i_6825703 = 0i32;
                    _gotoNext = 6826230i32;
                } else if (__value__ == (6826230i32)) {
                    if (_i_6825703 < (_se._fields._list.length)) {
                        _gotoNext = 6825729i32;
                    } else {
                        _gotoNext = 6826233i32;
                    };
                } else if (__value__ == (6826233i32)) {
                    if (_next_6825669 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 6826248i32;
                    } else {
                        _gotoNext = 6826280i32;
                    };
                } else if (__value__ == (6826248i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 6826304i32;
                } else if (__value__ == (6826280i32)) {
                    _gotoNext = 6826280i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 6826304i32;
                } else if (__value__ == (6826304i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
