package stdgo._internal.testing.quick;
function _reportError(_property:stdgo.GoString, _err:stdgo.Error, _t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        if (_err != null) {
            @:check2r _t.errorf(("%s: %s" : stdgo.GoString), stdgo.Go.toInterface(_property), stdgo.Go.toInterface(_err));
        };
    }
