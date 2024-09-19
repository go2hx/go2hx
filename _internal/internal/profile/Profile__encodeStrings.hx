package _internal.internal.profile;
function _encodeStrings(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _tag:stdgo.GoInt, _x:stdgo.Slice<stdgo.GoString>):Void {
        for (__0 => _s in _x) {
            _internal.internal.profile.Profile__encodeString._encodeString(_b, _tag, _s?.__copy__());
        };
    }
