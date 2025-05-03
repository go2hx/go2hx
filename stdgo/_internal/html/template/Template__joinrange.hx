package stdgo._internal.html.template;
function _joinRange(_c0:stdgo._internal.html.template.Template_t_context.T_context, _rc:stdgo.Ref<stdgo._internal.html.template.Template_t_rangecontext.T_rangeContext>):stdgo._internal.html.template.Template_t_context.T_context {
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L554"
        for (__6 => _c in (@:checkr _rc ?? throw "null pointer dereference")._breaks) {
            _c0 = stdgo._internal.html.template.Template__join._join(_c0?.__copy__(), _c?.__copy__(), _c._n, ("range" : stdgo.GoString))?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L556"
            if (_c0._state == ((27 : stdgo._internal.html.template.Template_t_state.T_state))) {
                (@:checkr _c0._err ?? throw "null pointer dereference").line = (@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c._n) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_breaknode.BreakNode>) ?? throw "null pointer dereference").line;
                (@:checkr _c0._err ?? throw "null pointer dereference").description = (("at range loop break: " : stdgo.GoString) + (@:checkr _c0._err ?? throw "null pointer dereference").description?.__copy__() : stdgo.GoString)?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L559"
                return _c0?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L562"
        for (__7 => _c in (@:checkr _rc ?? throw "null pointer dereference")._continues) {
            _c0 = stdgo._internal.html.template.Template__join._join(_c0?.__copy__(), _c?.__copy__(), _c._n, ("range" : stdgo.GoString))?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L564"
            if (_c0._state == ((27 : stdgo._internal.html.template.Template_t_state.T_state))) {
                (@:checkr _c0._err ?? throw "null pointer dereference").line = (@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c._n) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode>)) : stdgo.Ref<stdgo._internal.text.template.parse.Parse_continuenode.ContinueNode>) ?? throw "null pointer dereference").line;
                (@:checkr _c0._err ?? throw "null pointer dereference").description = (("at range loop continue: " : stdgo.GoString) + (@:checkr _c0._err ?? throw "null pointer dereference").description?.__copy__() : stdgo.GoString)?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L567"
                return _c0?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L570"
        return _c0?.__copy__();
    }
