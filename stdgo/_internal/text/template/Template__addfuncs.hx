package stdgo._internal.text.template;
function _addFuncs(_out:stdgo._internal.text.template.Template_funcmap.FuncMap, _in:stdgo._internal.text.template.Template_funcmap.FuncMap):Void {
        for (_name => _fn in _in) {
            _out[_name] = _fn;
        };
    }
