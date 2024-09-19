package _internal.internal.profile;
function _encodeMessage(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _tag:stdgo.GoInt, _m:_internal.internal.profile.Profile_T_message.T_message):Void {
        var _n1 = (_b._data.length : stdgo.GoInt);
        _m._encode(_b);
        var _n2 = (_b._data.length : stdgo.GoInt);
        _internal.internal.profile.Profile__encodeLength._encodeLength(_b, _tag, (_n2 - _n1 : stdgo.GoInt));
        var _n3 = (_b._data.length : stdgo.GoInt);
        stdgo.Go.copySlice((_b._tmp.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_b._data.__slice__(_n2, _n3) : stdgo.Slice<stdgo.GoUInt8>));
        stdgo.Go.copySlice((_b._data.__slice__((_n1 + ((_n3 - _n2 : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_b._data.__slice__(_n1, _n2) : stdgo.Slice<stdgo.GoUInt8>));
        stdgo.Go.copySlice((_b._data.__slice__(_n1) : stdgo.Slice<stdgo.GoUInt8>), (_b._tmp.__slice__(0, (_n3 - _n2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
    }
