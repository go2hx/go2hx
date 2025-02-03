package stdgo.text.template;
class T__static_extension {
    static public function getU(_t:T_):U {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_T_.T_>);
        return stdgo._internal.text.template.Template_T__static_extension.T__static_extension.getU(_t);
    }
    static public function myError(_t:T_, _error:Bool):stdgo.Tuple<Bool, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_T_.T_>);
        return {
            final obj = stdgo._internal.text.template.Template_T__static_extension.T__static_extension.myError(_t, _error);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function mAdd(_t:T_, _a:StdTypes.Int, _b:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_T_.T_>);
        final _a = (_a : stdgo.GoInt);
        final _b = ([for (i in _b) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return [for (i in stdgo._internal.text.template.Template_T__static_extension.T__static_extension.mAdd(_t, _a, _b)) i];
    }
    static public function copy(_t:T_):T_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_T_.T_>);
        return stdgo._internal.text.template.Template_T__static_extension.T__static_extension.copy(_t);
    }
    static public function method3(_t:T_, _v:stdgo.AnyInterface):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_T_.T_>);
        final _v = (_v : stdgo.AnyInterface);
        return stdgo._internal.text.template.Template_T__static_extension.T__static_extension.method3(_t, _v);
    }
    static public function method2(_t:T_, _a:std.UInt, _b:String):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_T_.T_>);
        final _a = (_a : stdgo.GoUInt16);
        final _b = (_b : stdgo.GoString);
        return stdgo._internal.text.template.Template_T__static_extension.T__static_extension.method2(_t, _a, _b);
    }
    static public function method1(_t:T_, _a:StdTypes.Int):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_T_.T_>);
        final _a = (_a : stdgo.GoInt);
        return stdgo._internal.text.template.Template_T__static_extension.T__static_extension.method1(_t, _a);
    }
    static public function method0(_t:T_):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.text.template.Template_T_.T_>);
        return stdgo._internal.text.template.Template_T__static_extension.T__static_extension.method0(_t);
    }
}
