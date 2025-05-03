package stdgo._internal.internal.profile;
function _encodeUint64(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _tag:stdgo.GoInt, _x:stdgo.GoUInt64):Void {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L65"
        stdgo._internal.internal.profile.Profile__encodevarint._encodeVarint(_b, (((_tag : stdgo.GoUInt64) << (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (0i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L66"
        stdgo._internal.internal.profile.Profile__encodevarint._encodeVarint(_b, _x);
    }
