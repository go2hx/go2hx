package stdgo._internal.internal.profile;
function _marshal(_m:stdgo._internal.internal.profile.Profile_t_message.T_message):stdgo.Slice<stdgo.GoUInt8> {
        var _b:stdgo._internal.internal.profile.Profile_t_buffer.T_buffer = ({} : stdgo._internal.internal.profile.Profile_t_buffer.T_buffer);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L46"
        _m._encode((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>));
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L47"
        return _b._data;
    }
