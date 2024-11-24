package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _next_5432589:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5432753:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5432758_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5432736:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5432653:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5432623:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5432589 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5432607i32;
                } else if (__value__ == (5432607i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5433149i32;
                    } else {
                        _gotoNext = 5433153i32;
                    };
                } else if (__value__ == (5432649i32)) {
                    _f_5432653 = (stdgo.Go.setRef(_se._fields._list[(_i_5432623 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5432736 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5432653._index.length)) {
                        _gotoNext = 5432906i32;
                    } else {
                        _gotoNext = 5432912i32;
                    };
                } else if (__value__ == (5432772i32)) {
                    _i_5432753 = _f_5432653._index[(_i_5432758_0 : stdgo.GoInt)];
                    if (_fv_5432736.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5432809i32;
                    } else {
                        _gotoNext = 5432888i32;
                    };
                } else if (__value__ == (5432809i32)) {
                    if (_fv_5432736.isNil()) {
                        _gotoNext = 5432829i32;
                    } else {
                        _gotoNext = 5432865i32;
                    };
                } else if (__value__ == (5432829i32)) {
                    _i_5432623++;
                    _gotoNext = 5433150i32;
                } else if (__value__ == (5432865i32)) {
                    _fv_5432736 = _fv_5432736.elem()?.__copy__();
                    _gotoNext = 5432888i32;
                } else if (__value__ == (5432888i32)) {
                    _fv_5432736 = _fv_5432736.field(_i_5432753)?.__copy__();
                    _i_5432758_0++;
                    _gotoNext = 5432907i32;
                } else if (__value__ == (5432906i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5432653._index[(0i32 : stdgo.GoInt)];
                        _i_5432758_0 = __tmp__0;
                        _i_5432753 = __tmp__1;
                    };
                    _gotoNext = 5432907i32;
                } else if (__value__ == (5432907i32)) {
                    if (_i_5432758_0 < (_f_5432653._index.length)) {
                        _gotoNext = 5432772i32;
                    } else {
                        _gotoNext = 5432912i32;
                    };
                } else if (__value__ == (5432912i32)) {
                    if ((_f_5432653._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5432736?.__copy__()) : Bool)) {
                        _gotoNext = 5432947i32;
                    } else {
                        _gotoNext = 5432967i32;
                    };
                } else if (__value__ == (5432947i32)) {
                    _i_5432623++;
                    _gotoNext = 5433150i32;
                } else if (__value__ == (5432967i32)) {
                    _e.writeByte(_next_5432589);
                    _next_5432589 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5433019i32;
                    } else {
                        _gotoNext = 5433062i32;
                    };
                } else if (__value__ == (5433019i32)) {
                    _e.writeString(_f_5432653._nameEscHTML?.__copy__());
                    _gotoNext = 5433101i32;
                } else if (__value__ == (5433062i32)) {
                    _gotoNext = 5433062i32;
                    _e.writeString(_f_5432653._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5433101i32;
                } else if (__value__ == (5433101i32)) {
                    _opts._quoted = _f_5432653._quoted;
                    _f_5432653._encoder(_e, _fv_5432736?.__copy__(), _opts?.__copy__());
                    _i_5432623++;
                    _gotoNext = 5433150i32;
                } else if (__value__ == (5433149i32)) {
                    _i_5432623 = 0i32;
                    _gotoNext = 5433150i32;
                } else if (__value__ == (5433150i32)) {
                    if (_i_5432623 < (_se._fields._list.length)) {
                        _gotoNext = 5432649i32;
                    } else {
                        _gotoNext = 5433153i32;
                    };
                } else if (__value__ == (5433153i32)) {
                    if (_next_5432589 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5433168i32;
                    } else {
                        _gotoNext = 5433200i32;
                    };
                } else if (__value__ == (5433168i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5433224i32;
                } else if (__value__ == (5433200i32)) {
                    _gotoNext = 5433200i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5433224i32;
                } else if (__value__ == (5433224i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
