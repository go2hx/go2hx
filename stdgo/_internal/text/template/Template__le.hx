package stdgo._internal.text.template;
function _le(_arg1:stdgo._internal.reflect.Reflect_value.Value, _arg2:stdgo._internal.reflect.Reflect_value.Value):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.text.template.Template__lt._lt(_arg1?.__copy__(), _arg2?.__copy__()), _lessThan:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_lessThan || (_err != null) : Bool)) {
            return { _0 : _lessThan, _1 : _err };
        };
        return stdgo._internal.text.template.Template__eq._eq(_arg1?.__copy__(), _arg2?.__copy__());
    }
