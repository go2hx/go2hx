package _internal.internal.profile;
function _unmarshal(_data:stdgo.Slice<stdgo.GoUInt8>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        var _err = (null : stdgo.Error);
        var _b = ({ _data : _data, _typ : (2 : stdgo.GoInt) } : _internal.internal.profile.Profile_T_buffer.T_buffer);
        return _internal.internal.profile.Profile__decodeMessage._decodeMessage((stdgo.Go.setRef(_b) : stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>), _m);
    }
