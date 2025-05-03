package stdgo._internal.internal.profile;
function _encodeBoolOpt(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _tag:stdgo.GoInt, _x:Bool):Void {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L148"
        if (!_x) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L149"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L151"
        stdgo._internal.internal.profile.Profile__encodebool._encodeBool(_b, _tag, _x);
    }
