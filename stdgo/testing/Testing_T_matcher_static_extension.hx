package stdgo.testing;
class T_matcher_static_extension {
    static public function _unique(_m:T_matcher, _parent:String, _subname:String):String {
        final _m = (_m : stdgo.Ref<stdgo._internal.testing.Testing_T_matcher.T_matcher>);
        final _parent = (_parent : stdgo.GoString);
        final _subname = (_subname : stdgo.GoString);
        return stdgo._internal.testing.Testing_T_matcher_static_extension.T_matcher_static_extension._unique(_m, _parent, _subname);
    }
    static public function _clearSubNames(_m:T_matcher):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.testing.Testing_T_matcher.T_matcher>);
        stdgo._internal.testing.Testing_T_matcher_static_extension.T_matcher_static_extension._clearSubNames(_m);
    }
    static public function _fullName(_m:T_matcher, _c:T_common, _subname:String):stdgo.Tuple.Tuple3<String, Bool, Bool> {
        final _m = (_m : stdgo.Ref<stdgo._internal.testing.Testing_T_matcher.T_matcher>);
        final _c = (_c : stdgo.Ref<stdgo._internal.testing.Testing_T_common.T_common>);
        final _subname = (_subname : stdgo.GoString);
        return {
            final obj = stdgo._internal.testing.Testing_T_matcher_static_extension.T_matcher_static_extension._fullName(_m, _c, _subname);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
}
