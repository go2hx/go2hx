package stdgo._internal.text.template;
function _createValueFuncs(_funcMap:stdgo._internal.text.template.Template_FuncMap.FuncMap):stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect_Value.Value> {
        var _m = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo._internal.reflect.Reflect_Value.Value>();
            x.__defaultValue__ = () -> ({} : stdgo._internal.reflect.Reflect_Value.Value);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect_Value.Value>) : stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect_Value.Value>);
        stdgo._internal.text.template.Template__addValueFuncs._addValueFuncs(_m, _funcMap);
        return _m;
    }
