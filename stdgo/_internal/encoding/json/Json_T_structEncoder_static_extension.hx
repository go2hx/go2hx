package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5280927:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5280932_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5280910:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5280827:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5280797:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5280763:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5280763 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5280781i32;
                } else if (__value__ == (5280781i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5281323i32;
                    } else {
                        _gotoNext = 5281327i32;
                    };
                } else if (__value__ == (5280823i32)) {
                    _f_5280827 = (stdgo.Go.setRef(_se._fields._list[(_i_5280797 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5280910 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5280827 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5281080i32;
                    } else {
                        _gotoNext = 5281086i32;
                    };
                } else if (__value__ == (5280946i32)) {
                    _i_5280927 = (@:checkr _f_5280827 ?? throw "null pointer dereference")._index[(_i_5280932_0 : stdgo.GoInt)];
                    if (_fv_5280910.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5280983i32;
                    } else {
                        _gotoNext = 5281062i32;
                    };
                } else if (__value__ == (5280983i32)) {
                    if (_fv_5280910.isNil()) {
                        _gotoNext = 5281003i32;
                    } else {
                        _gotoNext = 5281039i32;
                    };
                } else if (__value__ == (5281003i32)) {
                    _i_5280797++;
                    _gotoNext = 5281324i32;
                } else if (__value__ == (5281039i32)) {
                    _fv_5280910 = _fv_5280910.elem()?.__copy__();
                    _gotoNext = 5281062i32;
                } else if (__value__ == (5281062i32)) {
                    _fv_5280910 = _fv_5280910.field(_i_5280927)?.__copy__();
                    _i_5280932_0++;
                    _gotoNext = 5281081i32;
                } else if (__value__ == (5281080i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5280827 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5280932_0 = __tmp__0;
                        _i_5280927 = __tmp__1;
                    };
                    _gotoNext = 5281081i32;
                } else if (__value__ == (5281081i32)) {
                    if (_i_5280932_0 < ((@:checkr _f_5280827 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5280946i32;
                    } else {
                        _gotoNext = 5281086i32;
                    };
                } else if (__value__ == (5281086i32)) {
                    if (((@:checkr _f_5280827 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5280910?.__copy__()) : Bool)) {
                        _gotoNext = 5281121i32;
                    } else {
                        _gotoNext = 5281141i32;
                    };
                } else if (__value__ == (5281121i32)) {
                    _i_5280797++;
                    _gotoNext = 5281324i32;
                } else if (__value__ == (5281141i32)) {
                    @:check2r _e.writeByte(_next_5280763);
                    _next_5280763 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5281193i32;
                    } else {
                        _gotoNext = 5281236i32;
                    };
                } else if (__value__ == (5281193i32)) {
                    @:check2r _e.writeString((@:checkr _f_5280827 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5281275i32;
                } else if (__value__ == (5281236i32)) {
                    _gotoNext = 5281236i32;
                    @:check2r _e.writeString((@:checkr _f_5280827 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5281275i32;
                } else if (__value__ == (5281275i32)) {
                    _opts._quoted = (@:checkr _f_5280827 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5280827 ?? throw "null pointer dereference")._encoder(_e, _fv_5280910?.__copy__(), _opts?.__copy__());
                    _i_5280797++;
                    _gotoNext = 5281324i32;
                } else if (__value__ == (5281323i32)) {
                    _i_5280797 = 0i32;
                    _gotoNext = 5281324i32;
                } else if (__value__ == (5281324i32)) {
                    if (_i_5280797 < (_se._fields._list.length)) {
                        _gotoNext = 5280823i32;
                    } else {
                        _gotoNext = 5281327i32;
                    };
                } else if (__value__ == (5281327i32)) {
                    if (_next_5280763 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5281342i32;
                    } else {
                        _gotoNext = 5281374i32;
                    };
                } else if (__value__ == (5281342i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5281398i32;
                } else if (__value__ == (5281374i32)) {
                    _gotoNext = 5281374i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5281398i32;
                } else if (__value__ == (5281398i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
