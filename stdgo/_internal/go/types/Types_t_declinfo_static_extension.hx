package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_declInfo_asInterface) class T_declInfo_static_extension {
    @:keep
    @:tdfield
    static public function _addDep( _d:stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo>, _obj:stdgo._internal.go.types.Types_object.Object):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo> = _d;
        var _m = (@:checkr _d ?? throw "null pointer dereference")._deps;
        //"file:///home/runner/.go/go1.21.3/src/go/types/resolver.go#L43"
        if (_m == null) {
            _m = (({
                final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.go.types.Types_object.Object, Bool>();
                x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.types.Types_object.Object", [], stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.types.Types_object.Object", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }), false, { get : () -> null }));
                x.__defaultValue__ = () -> false;
                {};
                cast x;
            } : stdgo.GoMap<stdgo._internal.go.types.Types_object.Object, Bool>) : stdgo.GoMap<stdgo._internal.go.types.Types_object.Object, Bool>);
            (@:checkr _d ?? throw "null pointer dereference")._deps = _m;
        };
        _m[_obj] = true;
    }
    @:keep
    @:tdfield
    static public function _hasInitializer( _d:stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo>):Bool {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo> = _d;
        //"file:///home/runner/.go/go1.21.3/src/go/types/resolver.go#L37"
        return (((@:checkr _d ?? throw "null pointer dereference")._init != null) || (({
            final value = (@:checkr _d ?? throw "null pointer dereference")._fdecl;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && ({
            final value = (@:checkr (@:checkr _d ?? throw "null pointer dereference")._fdecl ?? throw "null pointer dereference").body;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) : Bool) : Bool);
    }
}
