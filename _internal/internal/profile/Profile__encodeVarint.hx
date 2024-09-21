package _internal.internal.profile;
function _encodeVarint(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _x:stdgo.GoUInt64):Void {
        while ((_x >= (128i64 : stdgo.GoUInt64) : Bool)) {
            _b._data = (_b._data.__append__(((_x : stdgo.GoUInt8) | (128 : stdgo.GoUInt8) : stdgo.GoUInt8)));
            _x = (_x >> ((7i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        _b._data = (_b._data.__append__((_x : stdgo.GoUInt8)));
    }
