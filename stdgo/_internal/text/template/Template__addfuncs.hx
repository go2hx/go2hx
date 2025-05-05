package stdgo._internal.text.template;
function _addFuncs(_out:stdgo._internal.text.template.Template_funcmap.FuncMap, _in:stdgo._internal.text.template.Template_funcmap.FuncMap):Void {
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L106"
        for (_name => _fn in _in) {
            _out[_name] = _fn;
        };
    }
