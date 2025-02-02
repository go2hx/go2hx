package stdgo._internal.internal.profile;
function _encodeUint64(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _tag:stdgo.GoInt, _x:stdgo.GoUInt64):Void {
        stdgo._internal.internal.profile.Profile__encodeVarint._encodeVarint(_b, (((_tag : stdgo.GoUInt64) << (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (0i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
        stdgo._internal.internal.profile.Profile__encodeVarint._encodeVarint(_b, _x);
    }
