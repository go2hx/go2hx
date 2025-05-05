package stdgo._internal.internal.profile;
function _encodeUint64Opt(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _tag:stdgo.GoInt, _x:stdgo.GoUInt64):Void {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L90"
        if (_x == ((0i64 : stdgo.GoUInt64))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L91"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L93"
        stdgo._internal.internal.profile.Profile__encodeuint64._encodeUint64(_b, _tag, _x);
    }
