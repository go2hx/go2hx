package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5330871:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5330837:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5331001:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5331006_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5330984:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5330901:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5330837 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5330855i32;
                } else if (__value__ == (5330855i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5331397i32;
                    } else {
                        _gotoNext = 5331401i32;
                    };
                } else if (__value__ == (5330897i32)) {
                    _f_5330901 = (stdgo.Go.setRef(_se._fields._list[(_i_5330871 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5330984 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5330901 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5331154i32;
                    } else {
                        _gotoNext = 5331160i32;
                    };
                } else if (__value__ == (5331020i32)) {
                    _i_5331001 = (@:checkr _f_5330901 ?? throw "null pointer dereference")._index[(_i_5331006_0 : stdgo.GoInt)];
                    if (_fv_5330984.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5331057i32;
                    } else {
                        _gotoNext = 5331136i32;
                    };
                } else if (__value__ == (5331057i32)) {
                    if (_fv_5330984.isNil()) {
                        _gotoNext = 5331077i32;
                    } else {
                        _gotoNext = 5331113i32;
                    };
                } else if (__value__ == (5331077i32)) {
                    _i_5330871++;
                    _gotoNext = 5331398i32;
                } else if (__value__ == (5331113i32)) {
                    _fv_5330984 = _fv_5330984.elem()?.__copy__();
                    _gotoNext = 5331136i32;
                } else if (__value__ == (5331136i32)) {
                    _fv_5330984 = _fv_5330984.field(_i_5331001)?.__copy__();
                    _i_5331006_0++;
                    _gotoNext = 5331155i32;
                } else if (__value__ == (5331154i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5330901 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5331006_0 = __tmp__0;
                        _i_5331001 = __tmp__1;
                    };
                    _gotoNext = 5331155i32;
                } else if (__value__ == (5331155i32)) {
                    if (_i_5331006_0 < ((@:checkr _f_5330901 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5331020i32;
                    } else {
                        _gotoNext = 5331160i32;
                    };
                } else if (__value__ == (5331160i32)) {
                    if (((@:checkr _f_5330901 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5330984?.__copy__()) : Bool)) {
                        _gotoNext = 5331195i32;
                    } else {
                        _gotoNext = 5331215i32;
                    };
                } else if (__value__ == (5331195i32)) {
                    _i_5330871++;
                    _gotoNext = 5331398i32;
                } else if (__value__ == (5331215i32)) {
                    @:check2r _e.writeByte(_next_5330837);
                    _next_5330837 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5331267i32;
                    } else {
                        _gotoNext = 5331310i32;
                    };
                } else if (__value__ == (5331267i32)) {
                    @:check2r _e.writeString((@:checkr _f_5330901 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5331349i32;
                } else if (__value__ == (5331310i32)) {
                    _gotoNext = 5331310i32;
                    @:check2r _e.writeString((@:checkr _f_5330901 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5331349i32;
                } else if (__value__ == (5331349i32)) {
                    _opts._quoted = (@:checkr _f_5330901 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5330901 ?? throw "null pointer dereference")._encoder(_e, _fv_5330984?.__copy__(), _opts?.__copy__());
                    _i_5330871++;
                    _gotoNext = 5331398i32;
                } else if (__value__ == (5331397i32)) {
                    _i_5330871 = 0i32;
                    _gotoNext = 5331398i32;
                } else if (__value__ == (5331398i32)) {
                    if (_i_5330871 < (_se._fields._list.length)) {
                        _gotoNext = 5330897i32;
                    } else {
                        _gotoNext = 5331401i32;
                    };
                } else if (__value__ == (5331401i32)) {
                    if (_next_5330837 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5331416i32;
                    } else {
                        _gotoNext = 5331448i32;
                    };
                } else if (__value__ == (5331416i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5331472i32;
                } else if (__value__ == (5331448i32)) {
                    _gotoNext = 5331448i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5331472i32;
                } else if (__value__ == (5331472i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
