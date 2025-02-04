package stdgo._internal.internal.profile;
function _encodeBoolOpt(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _tag:stdgo.GoInt, _x:Bool):Void {
        if (!_x) {
            return;
        };
        stdgo._internal.internal.profile.Profile__encodebool._encodeBool(_b, _tag, _x);
    }
