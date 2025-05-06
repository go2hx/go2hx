package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_action_asInterface) class T_action_static_extension {
    @:keep
    @:tdfield
    static public function _describef( _a:stdgo.Ref<stdgo._internal.go.types.Types_t_action.T_action>, _pos:stdgo._internal.go.types.Types_t_positioner.T_positioner, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _a:stdgo.Ref<stdgo._internal.go.types.Types_t_action.T_action> = _a;
        //"file:///home/runner/.go/go1.21.3/src/go/types/check.go#L79"
        if (false) {
            (@:checkr _a ?? throw "null pointer dereference")._desc = (stdgo.Go.setRef((new stdgo._internal.go.types.Types_t_actiondesc.T_actionDesc(_pos, _format?.__copy__(), _args) : stdgo._internal.go.types.Types_t_actiondesc.T_actionDesc)) : stdgo.Ref<stdgo._internal.go.types.Types_t_actiondesc.T_actionDesc>);
        };
    }
}
