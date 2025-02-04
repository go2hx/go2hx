package stdgo._internal.internal.fmtsort;
function _nilCompare(_aVal:stdgo._internal.reflect.Reflect_value.Value, _bVal:stdgo._internal.reflect.Reflect_value.Value):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        if (_aVal.isNil()) {
            if (_bVal.isNil()) {
                return { _0 : (0 : stdgo.GoInt), _1 : true };
            };
            return { _0 : (-1 : stdgo.GoInt), _1 : true };
        };
        if (_bVal.isNil()) {
            return { _0 : (1 : stdgo.GoInt), _1 : true };
        };
        return { _0 : (0 : stdgo.GoInt), _1 : false };
    }
