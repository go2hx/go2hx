package stdgo._internal.internal.profile;
function _encodeStrings(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _tag:stdgo.GoInt, _x:stdgo.Slice<stdgo.GoString>):Void {
        for (__0 => _s in _x) {
            stdgo._internal.internal.profile.Profile__encodestring._encodeString(_b, _tag, _s?.__copy__());
        };
    }
