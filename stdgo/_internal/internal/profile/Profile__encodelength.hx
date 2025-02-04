package stdgo._internal.internal.profile;
function _encodeLength(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _tag:stdgo.GoInt, _len:stdgo.GoInt):Void {
        stdgo._internal.internal.profile.Profile__encodevarint._encodeVarint(_b, (((_tag : stdgo.GoUInt64) << (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
        stdgo._internal.internal.profile.Profile__encodevarint._encodeVarint(_b, (_len : stdgo.GoUInt64));
    }
