package stdgo._internal.text.template;
function _goodFunc(_typ:stdgo._internal.reflect.Reflect_type_.Type_):Bool {
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L114"
        if (_typ.numOut() == ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L116"
            return true;
        } else if (((_typ.numOut() == (2 : stdgo.GoInt)) && ((_typ.out((1 : stdgo.GoInt)).string() : String) == (stdgo._internal.text.template.Template__errortype._errorType.string() : String)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L118"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L120"
        return false;
    }
