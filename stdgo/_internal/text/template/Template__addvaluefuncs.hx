package stdgo._internal.text.template;
function _addValueFuncs(_out:stdgo.GoMap<stdgo.GoString, stdgo._internal.reflect.Reflect_value.Value>, _in:stdgo._internal.text.template.Template_funcmap.FuncMap):Void {
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L88"
        for (_name => _fn in _in) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L89"
            if (!stdgo._internal.text.template.Template__goodname._goodName(_name?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L90"
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_errorf.errorf(("function name %q is not a valid identifier" : stdgo.GoString), stdgo.Go.toInterface(_name)));
            };
            var _v = (stdgo._internal.reflect.Reflect_valueof.valueOf(_fn)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L93"
            if (_v.kind() != ((19u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L94"
                throw stdgo.Go.toInterface(((("value for " : stdgo.GoString) + _name?.__copy__() : stdgo.GoString) + (" not a function" : stdgo.GoString)?.__copy__() : stdgo.GoString));
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L96"
            if (!stdgo._internal.text.template.Template__goodfunc._goodFunc(_v.type())) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L97"
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_errorf.errorf(("can\'t install method/function %q with %d results" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_v.type().numOut())));
            };
            _out[_name] = _v?.__copy__();
        };
    }
