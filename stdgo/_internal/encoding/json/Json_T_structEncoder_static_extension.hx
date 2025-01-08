package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5419542:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5419508:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5419672:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5419677_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5419655:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5419572:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5419508 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5419526i32;
                } else if (__value__ == (5419526i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5420068i32;
                    } else {
                        _gotoNext = 5420072i32;
                    };
                } else if (__value__ == (5419568i32)) {
                    _f_5419572 = (stdgo.Go.setRef(_se._fields._list[(_i_5419542 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5419655 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5419572 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5419825i32;
                    } else {
                        _gotoNext = 5419831i32;
                    };
                } else if (__value__ == (5419691i32)) {
                    _i_5419672 = (@:checkr _f_5419572 ?? throw "null pointer dereference")._index[(_i_5419677_0 : stdgo.GoInt)];
                    if (_fv_5419655.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5419728i32;
                    } else {
                        _gotoNext = 5419807i32;
                    };
                } else if (__value__ == (5419728i32)) {
                    if (_fv_5419655.isNil()) {
                        _gotoNext = 5419748i32;
                    } else {
                        _gotoNext = 5419784i32;
                    };
                } else if (__value__ == (5419748i32)) {
                    _i_5419542++;
                    _gotoNext = 5420069i32;
                } else if (__value__ == (5419784i32)) {
                    _fv_5419655 = _fv_5419655.elem()?.__copy__();
                    _gotoNext = 5419807i32;
                } else if (__value__ == (5419807i32)) {
                    _fv_5419655 = _fv_5419655.field(_i_5419672)?.__copy__();
                    _i_5419677_0++;
                    _gotoNext = 5419826i32;
                } else if (__value__ == (5419825i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5419572 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5419677_0 = __tmp__0;
                        _i_5419672 = __tmp__1;
                    };
                    _gotoNext = 5419826i32;
                } else if (__value__ == (5419826i32)) {
                    if (_i_5419677_0 < ((@:checkr _f_5419572 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5419691i32;
                    } else {
                        _gotoNext = 5419831i32;
                    };
                } else if (__value__ == (5419831i32)) {
                    if (((@:checkr _f_5419572 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5419655?.__copy__()) : Bool)) {
                        _gotoNext = 5419866i32;
                    } else {
                        _gotoNext = 5419886i32;
                    };
                } else if (__value__ == (5419866i32)) {
                    _i_5419542++;
                    _gotoNext = 5420069i32;
                } else if (__value__ == (5419886i32)) {
                    @:check2r _e.writeByte(_next_5419508);
                    _next_5419508 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5419938i32;
                    } else {
                        _gotoNext = 5419981i32;
                    };
                } else if (__value__ == (5419938i32)) {
                    @:check2r _e.writeString((@:checkr _f_5419572 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5420020i32;
                } else if (__value__ == (5419981i32)) {
                    _gotoNext = 5419981i32;
                    @:check2r _e.writeString((@:checkr _f_5419572 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5420020i32;
                } else if (__value__ == (5420020i32)) {
                    _opts._quoted = (@:checkr _f_5419572 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5419572 ?? throw "null pointer dereference")._encoder(_e, _fv_5419655?.__copy__(), _opts?.__copy__());
                    _i_5419542++;
                    _gotoNext = 5420069i32;
                } else if (__value__ == (5420068i32)) {
                    _i_5419542 = 0i32;
                    _gotoNext = 5420069i32;
                } else if (__value__ == (5420069i32)) {
                    if (_i_5419542 < (_se._fields._list.length)) {
                        _gotoNext = 5419568i32;
                    } else {
                        _gotoNext = 5420072i32;
                    };
                } else if (__value__ == (5420072i32)) {
                    if (_next_5419508 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5420087i32;
                    } else {
                        _gotoNext = 5420119i32;
                    };
                } else if (__value__ == (5420087i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5420143i32;
                } else if (__value__ == (5420119i32)) {
                    _gotoNext = 5420119i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5420143i32;
                } else if (__value__ == (5420143i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
