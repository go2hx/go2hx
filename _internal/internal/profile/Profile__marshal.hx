package _internal.internal.profile;
function _marshal(_m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Slice<stdgo.GoUInt8> {
        var _b:_internal.internal.profile.Profile_T_buffer.T_buffer = ({} : _internal.internal.profile.Profile_T_buffer.T_buffer);
        _m._encode((stdgo.Go.setRef(_b) : stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>));
        return _b._data;
    }
