package _internal.internal.profile;
function _encodeBool(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _tag:stdgo.GoInt, _x:Bool):Void {
        if (_x) {
            _internal.internal.profile.Profile__encodeUint64._encodeUint64(_b, _tag, (1i64 : stdgo.GoUInt64));
        } else {
            _internal.internal.profile.Profile__encodeUint64._encodeUint64(_b, _tag, (0i64 : stdgo.GoUInt64));
        };
    }
