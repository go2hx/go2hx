package stdgo._internal.text.template;
function _ne(_arg1:stdgo._internal.reflect.Reflect_value.Value, _arg2:stdgo._internal.reflect.Reflect_value.Value):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.text.template.Template__eq._eq(_arg1?.__copy__(), _arg2?.__copy__()), _equal:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : !_equal, _1 : _err };
    }
