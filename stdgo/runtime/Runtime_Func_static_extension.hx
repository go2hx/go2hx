package stdgo.runtime;
class Func_static_extension {
    static public function fileLine(_f:Func, _pc:stdgo.GoUIntptr):stdgo.Tuple<String, StdTypes.Int> {
        final _f = (_f : stdgo.Ref<stdgo._internal.runtime.Runtime_Func.Func>);
        final _pc = (_pc : stdgo.GoUIntptr);
        return {
            final obj = stdgo._internal.runtime.Runtime_Func_static_extension.Func_static_extension.fileLine(_f, _pc);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function entry(_f:Func):stdgo.GoUIntptr {
        final _f = (_f : stdgo.Ref<stdgo._internal.runtime.Runtime_Func.Func>);
        return stdgo._internal.runtime.Runtime_Func_static_extension.Func_static_extension.entry(_f);
    }
    static public function name(_f:Func):String {
        final _f = (_f : stdgo.Ref<stdgo._internal.runtime.Runtime_Func.Func>);
        return stdgo._internal.runtime.Runtime_Func_static_extension.Func_static_extension.name(_f);
    }
}
