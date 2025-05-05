package stdgo._internal.internal.profile;
function _encodeInt64Opt(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _tag:stdgo.GoInt, _x:stdgo.GoInt64):Void {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L102"
        if (_x == ((0i64 : stdgo.GoInt64))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L103"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L105"
        stdgo._internal.internal.profile.Profile__encodeint64._encodeInt64(_b, _tag, _x);
    }
