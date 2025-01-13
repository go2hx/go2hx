package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _f_5455790:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5455760:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5455726:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5455890:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5455895_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5455873:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5455726 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5455744i32;
                } else if (__value__ == (5455744i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5456286i32;
                    } else {
                        _gotoNext = 5456290i32;
                    };
                } else if (__value__ == (5455786i32)) {
                    _f_5455790 = (stdgo.Go.setRef(_se._fields._list[(_i_5455760 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5455873 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5455790 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5456043i32;
                    } else {
                        _gotoNext = 5456049i32;
                    };
                } else if (__value__ == (5455909i32)) {
                    _i_5455890 = (@:checkr _f_5455790 ?? throw "null pointer dereference")._index[(_i_5455895_0 : stdgo.GoInt)];
                    if (_fv_5455873.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5455946i32;
                    } else {
                        _gotoNext = 5456025i32;
                    };
                } else if (__value__ == (5455946i32)) {
                    if (_fv_5455873.isNil()) {
                        _gotoNext = 5455966i32;
                    } else {
                        _gotoNext = 5456002i32;
                    };
                } else if (__value__ == (5455966i32)) {
                    _i_5455760++;
                    _gotoNext = 5456287i32;
                } else if (__value__ == (5456002i32)) {
                    _fv_5455873 = _fv_5455873.elem()?.__copy__();
                    _gotoNext = 5456025i32;
                } else if (__value__ == (5456025i32)) {
                    _fv_5455873 = _fv_5455873.field(_i_5455890)?.__copy__();
                    _i_5455895_0++;
                    _gotoNext = 5456044i32;
                } else if (__value__ == (5456043i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5455790 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5455895_0 = __tmp__0;
                        _i_5455890 = __tmp__1;
                    };
                    _gotoNext = 5456044i32;
                } else if (__value__ == (5456044i32)) {
                    if (_i_5455895_0 < ((@:checkr _f_5455790 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5455909i32;
                    } else {
                        _gotoNext = 5456049i32;
                    };
                } else if (__value__ == (5456049i32)) {
                    if (((@:checkr _f_5455790 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5455873?.__copy__()) : Bool)) {
                        _gotoNext = 5456084i32;
                    } else {
                        _gotoNext = 5456104i32;
                    };
                } else if (__value__ == (5456084i32)) {
                    _i_5455760++;
                    _gotoNext = 5456287i32;
                } else if (__value__ == (5456104i32)) {
                    @:check2r _e.writeByte(_next_5455726);
                    _next_5455726 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5456156i32;
                    } else {
                        _gotoNext = 5456199i32;
                    };
                } else if (__value__ == (5456156i32)) {
                    @:check2r _e.writeString((@:checkr _f_5455790 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5456238i32;
                } else if (__value__ == (5456199i32)) {
                    _gotoNext = 5456199i32;
                    @:check2r _e.writeString((@:checkr _f_5455790 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5456238i32;
                } else if (__value__ == (5456238i32)) {
                    _opts._quoted = (@:checkr _f_5455790 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5455790 ?? throw "null pointer dereference")._encoder(_e, _fv_5455873?.__copy__(), _opts?.__copy__());
                    _i_5455760++;
                    _gotoNext = 5456287i32;
                } else if (__value__ == (5456286i32)) {
                    _i_5455760 = 0i32;
                    _gotoNext = 5456287i32;
                } else if (__value__ == (5456287i32)) {
                    if (_i_5455760 < (_se._fields._list.length)) {
                        _gotoNext = 5455786i32;
                    } else {
                        _gotoNext = 5456290i32;
                    };
                } else if (__value__ == (5456290i32)) {
                    if (_next_5455726 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5456305i32;
                    } else {
                        _gotoNext = 5456337i32;
                    };
                } else if (__value__ == (5456305i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5456361i32;
                } else if (__value__ == (5456337i32)) {
                    _gotoNext = 5456337i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5456361i32;
                } else if (__value__ == (5456361i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
