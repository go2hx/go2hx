package stdgo._internal.text.template;
function _builtinFuncs():stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect_Value.Value> {
        stdgo._internal.text.template.Template__builtinFuncsOnce._builtinFuncsOnce.do_(function():Void {
            stdgo._internal.text.template.Template__builtinFuncsOnce._builtinFuncsOnce._v = stdgo._internal.text.template.Template__createValueFuncs._createValueFuncs(stdgo._internal.text.template.Template__builtins._builtins());
        });
        return stdgo._internal.text.template.Template__builtinFuncsOnce._builtinFuncsOnce._v;
    }
