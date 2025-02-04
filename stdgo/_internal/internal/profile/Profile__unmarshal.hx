package stdgo._internal.internal.profile;
function _unmarshal(_data:stdgo.Slice<stdgo.GoUInt8>, _m:stdgo._internal.internal.profile.Profile_t_message.T_message):stdgo.Error {
        var _err = (null : stdgo.Error);
        var _b = ({ _data : _data, _typ : (2 : stdgo.GoInt) } : stdgo._internal.internal.profile.Profile_t_buffer.T_buffer);
        return _err = stdgo._internal.internal.profile.Profile__decodemessage._decodeMessage((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>), _m);
    }
