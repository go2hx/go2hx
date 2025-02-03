package stdgo.internal.singleflight;
class Group_static_extension {
    static public function forgetUnshared(_g:Group, _key:String):Bool {
        final _g = (_g : stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_Group.Group>);
        final _key = (_key : stdgo.GoString);
        return stdgo._internal.internal.singleflight.Singleflight_Group_static_extension.Group_static_extension.forgetUnshared(_g, _key);
    }
    static public function _doCall(_g:Group, _c:T_call, _key:String, _fn:() -> { var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; }):Void {
        final _g = (_g : stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_Group.Group>);
        final _c = (_c : stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_T_call.T_call>);
        final _key = (_key : stdgo.GoString);
        final _fn = _fn;
        stdgo._internal.internal.singleflight.Singleflight_Group_static_extension.Group_static_extension._doCall(_g, _c, _key, _fn);
    }
    static public function doChan(_g:Group, _key:String, _fn:() -> { var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; }):stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_Result.Result> {
        final _g = (_g : stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_Group.Group>);
        final _key = (_key : stdgo.GoString);
        final _fn = _fn;
        return stdgo._internal.internal.singleflight.Singleflight_Group_static_extension.Group_static_extension.doChan(_g, _key, _fn);
    }
    static public function do_(_g:Group, _key:String, _fn:() -> { var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; }):stdgo.Tuple.Tuple3<stdgo.AnyInterface, stdgo.Error, Bool> {
        final _g = (_g : stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_Group.Group>);
        final _key = (_key : stdgo.GoString);
        final _fn = _fn;
        return {
            final obj = stdgo._internal.internal.singleflight.Singleflight_Group_static_extension.Group_static_extension.do_(_g, _key, _fn);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
}
