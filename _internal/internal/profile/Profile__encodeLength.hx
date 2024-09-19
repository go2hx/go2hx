package _internal.internal.profile;
function _encodeLength(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _tag:stdgo.GoInt, _len:stdgo.GoInt):Void {
        _internal.internal.profile.Profile__encodeVarint._encodeVarint(_b, (((_tag : stdgo.GoUInt64) << (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
        _internal.internal.profile.Profile__encodeVarint._encodeVarint(_b, (_len : stdgo.GoUInt64));
    }
