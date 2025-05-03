package stdgo._internal.text.template;
function _builtinFuncs():stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect_value.Value> {
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L73"
        stdgo._internal.text.template.Template__builtinfuncsonce._builtinFuncsOnce.do_(function():Void {
            stdgo._internal.text.template.Template__builtinfuncsonce._builtinFuncsOnce._v = stdgo._internal.text.template.Template__createvaluefuncs._createValueFuncs(stdgo._internal.text.template.Template__builtins._builtins());
        });
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L76"
        return stdgo._internal.text.template.Template__builtinfuncsonce._builtinFuncsOnce._v;
    }
