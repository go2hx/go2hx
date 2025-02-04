package stdgo._internal.text.template;
function _gt(_arg1:stdgo._internal.reflect.Reflect_value.Value, _arg2:stdgo._internal.reflect.Reflect_value.Value):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.text.template.Template__le._le(_arg1?.__copy__(), _arg2?.__copy__()), _lessOrEqual:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : false, _1 : _err };
        };
        return { _0 : !_lessOrEqual, _1 : (null : stdgo.Error) };
    }
