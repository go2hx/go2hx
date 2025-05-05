package stdgo._internal.internal.profile;
function _encodeBool(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _tag:stdgo.GoInt, _x:Bool):Void {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L140"
        if (_x) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L141"
            stdgo._internal.internal.profile.Profile__encodeuint64._encodeUint64(_b, _tag, (1i64 : stdgo.GoUInt64));
        } else {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L143"
            stdgo._internal.internal.profile.Profile__encodeuint64._encodeUint64(_b, _tag, (0i64 : stdgo.GoUInt64));
        };
    }
