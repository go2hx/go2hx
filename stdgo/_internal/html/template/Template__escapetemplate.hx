package stdgo._internal.html.template;
function _escapeTemplate(_tmpl:stdgo.Ref<stdgo._internal.html.template.Template_template.Template>, _node:stdgo._internal.text.template.parse.Parse_node.Node, _name:stdgo.GoString):stdgo.Error {
        var __tmp__ = (@:checkr _tmpl ?? throw "null pointer dereference")._nameSpace._esc._escapeTree((new stdgo._internal.html.template.Template_t_context.T_context() : stdgo._internal.html.template.Template_t_context.T_context), _node, _name?.__copy__(), (0 : stdgo.GoInt)), _c:stdgo._internal.html.template.Template_t_context.T_context = __tmp__._0, __14:stdgo.GoString = __tmp__._1;
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L26"
        if (({
            final value = _c._err;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            {
                final __tmp__0 = stdgo.Go.asInterface(_c._err);
                final __tmp__1 = _name?.__copy__();
                _err = @:binopAssign __tmp__0;
                (@:checkr _c._err ?? throw "null pointer dereference").name = @:binopAssign __tmp__1;
            };
        } else if (_c._state != ((0 : stdgo._internal.html.template.Template_t_state.T_state))) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.html.template.Template_error.Error((4 : stdgo._internal.html.template.Template_errorcode.ErrorCode), (null : stdgo._internal.text.template.parse.Parse_node.Node), _name?.__copy__(), (0 : stdgo.GoInt), stdgo._internal.fmt.Fmt_sprintf.sprintf(("ends in a non-text context: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_c)))?.__copy__()) : stdgo._internal.html.template.Template_error.Error)) : stdgo.Ref<stdgo._internal.html.template.Template_error.Error>));
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L31"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L33"
            {
                var _t = ((@:checkr _tmpl ?? throw "null pointer dereference")._nameSpace._set[_name] ?? (null : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>));
                if (({
                    final value = _t;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    (@:checkr _t ?? throw "null pointer dereference")._escapeErr = _err;
                    (@:checkr (@:checkr _t ?? throw "null pointer dereference")._text ?? throw "null pointer dereference").tree = null;
                    (@:checkr _t ?? throw "null pointer dereference").tree = null;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L38"
            return _err;
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L40"
        (@:checkr _tmpl ?? throw "null pointer dereference")._nameSpace._esc._commit();
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L41"
        {
            var _t = ((@:checkr _tmpl ?? throw "null pointer dereference")._nameSpace._set[_name] ?? (null : stdgo.Ref<stdgo._internal.html.template.Template_template.Template>));
            if (({
                final value = _t;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                (@:checkr _t ?? throw "null pointer dereference")._escapeErr = stdgo._internal.html.template.Template__escapeok._escapeOK;
                (@:checkr _t ?? throw "null pointer dereference").tree = (@:checkr (@:checkr _t ?? throw "null pointer dereference")._text ?? throw "null pointer dereference").tree;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L45"
        return (null : stdgo.Error);
    }
