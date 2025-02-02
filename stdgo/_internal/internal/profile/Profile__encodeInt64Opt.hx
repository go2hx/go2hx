package stdgo._internal.internal.profile;
function _encodeInt64Opt(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _tag:stdgo.GoInt, _x:stdgo.GoInt64):Void {
        if (_x == ((0i64 : stdgo.GoInt64))) {
            return;
        };
        stdgo._internal.internal.profile.Profile__encodeInt64._encodeInt64(_b, _tag, _x);
    }
