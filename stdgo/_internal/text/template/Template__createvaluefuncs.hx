package stdgo._internal.text.template;
function _createValueFuncs(_funcMap:stdgo._internal.text.template.Template_funcmap.FuncMap):stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect_value.Value> {
        var _m = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo._internal.reflect.Reflect_value.Value>();
            x.__defaultValue__ = () -> ({} : stdgo._internal.reflect.Reflect_value.Value);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect_value.Value>) : stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect_value.Value>);
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L82"
        stdgo._internal.text.template.Template__addvaluefuncs._addValueFuncs(_m, _funcMap);
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L83"
        return _m;
    }
