package stdgo._internal.internal.profile;
function _encodeBool(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _tag:stdgo.GoInt, _x:Bool):Void {
        if (_x) {
            stdgo._internal.internal.profile.Profile__encodeuint64._encodeUint64(_b, _tag, (1i64 : stdgo.GoUInt64));
        } else {
            stdgo._internal.internal.profile.Profile__encodeuint64._encodeUint64(_b, _tag, (0i64 : stdgo.GoUInt64));
        };
    }
