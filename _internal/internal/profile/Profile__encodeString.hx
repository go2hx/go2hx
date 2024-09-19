package _internal.internal.profile;
function _encodeString(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _tag:stdgo.GoInt, _x:stdgo.GoString):Void {
        _internal.internal.profile.Profile__encodeLength._encodeLength(_b, _tag, (_x.length));
        _b._data = (_b._data.__append__(...(_x : Array<stdgo.GoUInt8>)));
    }
