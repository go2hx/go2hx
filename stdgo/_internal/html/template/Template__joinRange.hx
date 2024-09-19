package stdgo._internal.html.template;
function _joinRange(_c0:stdgo._internal.html.template.Template_T_context.T_context, _rc:stdgo.Ref<stdgo._internal.html.template.Template_T_rangeContext.T_rangeContext>):stdgo._internal.html.template.Template_T_context.T_context {
        for (__6 => _c in _rc._breaks) {
            _c0 = stdgo._internal.html.template.Template__join._join(_c0?.__copy__(), _c?.__copy__(), _c._n, ("range" : stdgo.GoString))?.__copy__();
            if (_c0._state == ((27 : stdgo._internal.html.template.Template_T_state.T_state))) {
                _c0._err.line = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c._n) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_BreakNode.BreakNode>).line;
                _c0._err.description = (("at range loop break: " : stdgo.GoString) + _c0._err.description?.__copy__() : stdgo.GoString)?.__copy__();
                return _c0?.__copy__();
            };
        };
        for (__7 => _c in _rc._continues) {
            _c0 = stdgo._internal.html.template.Template__join._join(_c0?.__copy__(), _c?.__copy__(), _c._n, ("range" : stdgo.GoString))?.__copy__();
            if (_c0._state == ((27 : stdgo._internal.html.template.Template_T_state.T_state))) {
                _c0._err.line = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c._n) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_ContinueNode.ContinueNode>).line;
                _c0._err.description = (("at range loop continue: " : stdgo.GoString) + _c0._err.description?.__copy__() : stdgo.GoString)?.__copy__();
                return _c0?.__copy__();
            };
        };
        return _c0?.__copy__();
    }
