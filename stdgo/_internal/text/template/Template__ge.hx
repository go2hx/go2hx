package stdgo._internal.text.template;
function _ge(_arg1:stdgo._internal.reflect.Reflect_value.Value, _arg2:stdgo._internal.reflect.Reflect_value.Value):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.text.template.Template__lt._lt(_arg1?.__copy__(), _arg2?.__copy__()), _lessThan:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L593"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L594"
            return { _0 : false, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L596"
        return { _0 : !_lessThan, _1 : (null : stdgo.Error) };
    }
