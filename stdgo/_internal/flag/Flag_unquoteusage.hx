package stdgo._internal.flag;
function unquoteUsage(_flag:stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        var _name = ("" : stdgo.GoString), _usage = ("" : stdgo.GoString);
        _usage = (@:checkr _flag ?? throw "null pointer dereference").usage?.__copy__();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_usage.length) : Bool)) {
                if (_usage[(_i : stdgo.GoInt)] == ((96 : stdgo.GoUInt8))) {
                    {
                        var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j < (_usage.length) : Bool)) {
                            if (_usage[(_j : stdgo.GoInt)] == ((96 : stdgo.GoUInt8))) {
                                _name = (_usage.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt), _j) : stdgo.GoString).__copy__();
                                _usage = (((_usage.__slice__(0, _i) : stdgo.GoString) + _name.__copy__() : stdgo.GoString) + (_usage.__slice__((_j + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() : stdgo.GoString).__copy__();
                                return {
                                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : _name.__copy__(), _1 : _usage.__copy__() };
                                    _name = __tmp__._0;
                                    _usage = __tmp__._1;
                                    __tmp__;
                                };
                            };
                            _j++;
                        };
                    };
                    break;
                };
                _i++;
            };
        };
        _name = ("value" : stdgo.GoString);
        {
            final __type__ = (@:checkr _flag ?? throw "null pointer dereference").value;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.flag.Flag_t_boolflag.T_boolFlag))) {
                var _fv:stdgo._internal.flag.Flag_t_boolflag.T_boolFlag = __type__ == null ? (null : stdgo._internal.flag.Flag_t_boolflag.T_boolFlag) : cast __type__;
                if (_fv.isBoolFlag()) {
                    _name = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo._internal.flag.Flag_t_durationvalue.T_durationValue>))) {
                var _fv:stdgo.Pointer<stdgo._internal.flag.Flag_t_durationvalue.T_durationValue> = __type__ == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag_t_durationvalue.T_durationValue>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag_t_durationvalue.T_durationValue>) : __type__ == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag_t_durationvalue.T_durationValue>) : __type__.__underlying__().value;
                _name = ("duration" : stdgo.GoString);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo._internal.flag.Flag_t_float64value.T_float64Value>))) {
                var _fv:stdgo.Pointer<stdgo._internal.flag.Flag_t_float64value.T_float64Value> = __type__ == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag_t_float64value.T_float64Value>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag_t_float64value.T_float64Value>) : __type__ == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag_t_float64value.T_float64Value>) : __type__.__underlying__().value;
                _name = ("float" : stdgo.GoString);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo._internal.flag.Flag_t_intvalue.T_intValue>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo._internal.flag.Flag_t_int64value.T_int64Value>))) {
                var _fv:stdgo._internal.flag.Flag_value.Value = __type__ == null ? (null : stdgo._internal.flag.Flag_value.Value) : cast __type__;
                _name = ("int" : stdgo.GoString);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo._internal.flag.Flag_t_stringvalue.T_stringValue>))) {
                var _fv:stdgo.Pointer<stdgo._internal.flag.Flag_t_stringvalue.T_stringValue> = __type__ == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag_t_stringvalue.T_stringValue>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag_t_stringvalue.T_stringValue>) : __type__ == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag_t_stringvalue.T_stringValue>) : __type__.__underlying__().value;
                _name = ("string" : stdgo.GoString);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo._internal.flag.Flag_t_uintvalue.T_uintValue>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo._internal.flag.Flag_t_uint64value.T_uint64Value>))) {
                var _fv:stdgo._internal.flag.Flag_value.Value = __type__ == null ? (null : stdgo._internal.flag.Flag_value.Value) : cast __type__;
                _name = ("uint" : stdgo.GoString);
            };
        };
        return { _0 : _name, _1 : _usage };
    }
