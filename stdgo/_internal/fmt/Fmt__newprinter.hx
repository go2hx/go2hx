package stdgo._internal.fmt;
function _newPrinter():stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> {
        var _p = (stdgo.Go.typeAssert((@:check2 stdgo._internal.fmt.Fmt__ppfree._ppFree.get() : stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>)) : stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>);
        (@:checkr _p ?? throw "null pointer dereference")._panicking = false;
        (@:checkr _p ?? throw "null pointer dereference")._erroring = false;
        (@:checkr _p ?? throw "null pointer dereference")._wrapErrs = false;
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._fmt._init((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._buf) : stdgo.Ref<stdgo._internal.fmt.Fmt_t_buffer.T_buffer>));
        return _p;
    }
