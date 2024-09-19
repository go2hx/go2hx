package _internal.internal.profile;
function _encodeInt64(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _tag:stdgo.GoInt, _x:stdgo.GoInt64):Void {
        var _u = (_x : stdgo.GoUInt64);
        _internal.internal.profile.Profile__encodeUint64._encodeUint64(_b, _tag, _u);
    }
