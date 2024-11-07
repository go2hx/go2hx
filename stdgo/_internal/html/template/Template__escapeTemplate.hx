package stdgo._internal.html.template;
function _escapeTemplate(_tmpl:stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>, _node:stdgo._internal.text.template.parse.Parse_Node.Node, _name:stdgo.GoString):stdgo.Error {
        var __tmp__ = _tmpl._nameSpace._esc._escapeTree((new stdgo._internal.html.template.Template_T_context.T_context() : stdgo._internal.html.template.Template_T_context.T_context), _node, _name?.__copy__(), (0 : stdgo.GoInt)), _c:stdgo._internal.html.template.Template_T_context.T_context = __tmp__._0, __14:stdgo.GoString = __tmp__._1;
        var _err:stdgo.Error = (null : stdgo.Error);
        if ((_c._err != null && ((_c._err : Dynamic).__nil__ == null || !(_c._err : Dynamic).__nil__))) {
            {
                final __tmp__0 = stdgo.Go.asInterface(_c._err);
                final __tmp__1 = _name?.__copy__();
                _err = __tmp__0;
                _c._err.name = __tmp__1;
            };
        } else if (_c._state != ((0 : stdgo._internal.html.template.Template_T_state.T_state))) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.html.template.Template_Error.Error((4 : stdgo._internal.html.template.Template_ErrorCode.ErrorCode), (null : stdgo._internal.text.template.parse.Parse_Node.Node), _name?.__copy__(), (0 : stdgo.GoInt), stdgo._internal.fmt.Fmt_sprintf.sprintf(("ends in a non-text context: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_c)))?.__copy__()) : stdgo._internal.html.template.Template_Error.Error)) : stdgo.Ref<stdgo._internal.html.template.Template_Error.Error>));
        };
        if (_err != null) {
            {
                var _t = (_tmpl._nameSpace._set[_name] ?? (null : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>));
                if ((_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__))) {
                    _t._escapeErr = _err;
                    _t._text.tree = null;
                    _t.tree = null;
                };
            };
            return _err;
        };
        _tmpl._nameSpace._esc._commit();
        {
            var _t = (_tmpl._nameSpace._set[_name] ?? (null : stdgo.Ref<stdgo._internal.html.template.Template_Template.Template>));
            if ((_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__))) {
                _t._escapeErr = stdgo._internal.html.template.Template__escapeOK._escapeOK;
                _t.tree = _t._text.tree;
            };
        };
        return (null : stdgo.Error);
    }
