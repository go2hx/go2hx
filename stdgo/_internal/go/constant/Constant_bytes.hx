package stdgo._internal.go.constant;
function bytes(_x:stdgo._internal.go.constant.Constant_value.Value):stdgo.Slice<stdgo.GoUInt8> {
        var _t:stdgo._internal.go.constant.Constant_t_intval.T_intVal = ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal);
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L704"
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val))) {
                var _x:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__().value);
                _t = stdgo._internal.go.constant.Constant__i64toi._i64toi(_x)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_intval.T_intVal))) {
                var _x:stdgo._internal.go.constant.Constant_t_intval.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__().value);
                _t = _x?.__copy__();
            } else {
                var _x:stdgo._internal.go.constant.Constant_value.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant_value.Value) : cast __type__;
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L710"
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v not an Int" : stdgo.GoString), stdgo.Go.toInterface(_x)));
            };
        };
        var _words = _t._val.bits();
        var _bytes = (new stdgo.Slice<stdgo.GoUInt8>(((_words.length) * (4 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _i = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L717"
        for (__1 => _w in _words) {
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L718"
            {
                var _j = (0 : stdgo.GoInt);
                while ((_j < (4 : stdgo.GoInt) : Bool)) {
                    _bytes[(_i : stdgo.GoInt)] = (_w : stdgo.GoUInt8);
_w = (_w >> ((8i64 : stdgo.GoUInt64)) : stdgo._internal.math.big.Big_word.Word);
//"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L721"
                    _i++;
                    _j++;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L725"
        while (((_i > (0 : stdgo.GoInt) : Bool) && (_bytes[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L726"
            _i--;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L729"
        return (_bytes.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>);
    }
