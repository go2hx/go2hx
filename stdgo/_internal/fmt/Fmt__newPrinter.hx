package stdgo._internal.fmt;
function _newPrinter():stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp> {
        var _p = (stdgo.Go.typeAssert((stdgo._internal.fmt.Fmt__ppFree._ppFree.get() : stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>)) : stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>);
        _p._panicking = false;
        _p._erroring = false;
        _p._wrapErrs = false;
        _p._fmt._init((stdgo.Go.setRef(_p._buf) : stdgo.Ref<stdgo._internal.fmt.Fmt_T_buffer.T_buffer>));
        return _p;
    }
