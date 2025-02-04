package stdgo._internal.expvar;
function get(_name:stdgo.GoString):stdgo._internal.expvar.Expvar_var.Var {
        var __tmp__ = @:check2 stdgo._internal.expvar.Expvar__vars._vars.load(stdgo.Go.toInterface(_name)), _i:stdgo.AnyInterface = __tmp__._0, __8:Bool = __tmp__._1;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_i : stdgo._internal.expvar.Expvar_var.Var)) : stdgo._internal.expvar.Expvar_var.Var), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.expvar.Expvar_var.Var), _1 : false };
        }, _v = __tmp__._0, __9 = __tmp__._1;
        return _v;
    }
