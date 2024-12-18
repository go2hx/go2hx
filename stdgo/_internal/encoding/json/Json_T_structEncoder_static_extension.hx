package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _fv_5146727:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5146644:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5146614:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5146580:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5146744:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5146749_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5146580 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5146598i32;
                } else if (__value__ == (5146598i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5147140i32;
                    } else {
                        _gotoNext = 5147144i32;
                    };
                } else if (__value__ == (5146640i32)) {
                    _f_5146644 = (stdgo.Go.setRef(_se._fields._list[(_i_5146614 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5146727 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5146644._index.length)) {
                        _gotoNext = 5146897i32;
                    } else {
                        _gotoNext = 5146903i32;
                    };
                } else if (__value__ == (5146763i32)) {
                    _i_5146744 = _f_5146644._index[(_i_5146749_0 : stdgo.GoInt)];
                    if (_fv_5146727.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5146800i32;
                    } else {
                        _gotoNext = 5146879i32;
                    };
                } else if (__value__ == (5146800i32)) {
                    if (_fv_5146727.isNil()) {
                        _gotoNext = 5146820i32;
                    } else {
                        _gotoNext = 5146856i32;
                    };
                } else if (__value__ == (5146820i32)) {
                    _i_5146614++;
                    _gotoNext = 5147141i32;
                } else if (__value__ == (5146856i32)) {
                    _fv_5146727 = _fv_5146727.elem()?.__copy__();
                    _gotoNext = 5146879i32;
                } else if (__value__ == (5146879i32)) {
                    _fv_5146727 = _fv_5146727.field(_i_5146744)?.__copy__();
                    _i_5146749_0++;
                    _gotoNext = 5146898i32;
                } else if (__value__ == (5146897i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5146644._index[(0i32 : stdgo.GoInt)];
                        _i_5146749_0 = __tmp__0;
                        _i_5146744 = __tmp__1;
                    };
                    _gotoNext = 5146898i32;
                } else if (__value__ == (5146898i32)) {
                    if (_i_5146749_0 < (_f_5146644._index.length)) {
                        _gotoNext = 5146763i32;
                    } else {
                        _gotoNext = 5146903i32;
                    };
                } else if (__value__ == (5146903i32)) {
                    if ((_f_5146644._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5146727?.__copy__()) : Bool)) {
                        _gotoNext = 5146938i32;
                    } else {
                        _gotoNext = 5146958i32;
                    };
                } else if (__value__ == (5146938i32)) {
                    _i_5146614++;
                    _gotoNext = 5147141i32;
                } else if (__value__ == (5146958i32)) {
                    _e.writeByte(_next_5146580);
                    _next_5146580 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5147010i32;
                    } else {
                        _gotoNext = 5147053i32;
                    };
                } else if (__value__ == (5147010i32)) {
                    _e.writeString(_f_5146644._nameEscHTML?.__copy__());
                    _gotoNext = 5147092i32;
                } else if (__value__ == (5147053i32)) {
                    _gotoNext = 5147053i32;
                    _e.writeString(_f_5146644._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5147092i32;
                } else if (__value__ == (5147092i32)) {
                    _opts._quoted = _f_5146644._quoted;
                    _f_5146644._encoder(_e, _fv_5146727?.__copy__(), _opts?.__copy__());
                    _i_5146614++;
                    _gotoNext = 5147141i32;
                } else if (__value__ == (5147140i32)) {
                    _i_5146614 = 0i32;
                    _gotoNext = 5147141i32;
                } else if (__value__ == (5147141i32)) {
                    if (_i_5146614 < (_se._fields._list.length)) {
                        _gotoNext = 5146640i32;
                    } else {
                        _gotoNext = 5147144i32;
                    };
                } else if (__value__ == (5147144i32)) {
                    if (_next_5146580 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5147159i32;
                    } else {
                        _gotoNext = 5147191i32;
                    };
                } else if (__value__ == (5147159i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5147215i32;
                } else if (__value__ == (5147191i32)) {
                    _gotoNext = 5147191i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5147215i32;
                } else if (__value__ == (5147215i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
