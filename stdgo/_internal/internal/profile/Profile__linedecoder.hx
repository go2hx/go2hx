package stdgo._internal.internal.profile;
var _lineDecoder : stdgo.Slice<stdgo._internal.internal.profile.Profile_t_decoder.T_decoder> = (new stdgo.Slice<stdgo._internal.internal.profile.Profile_t_decoder.T_decoder>(3, 3, ...[null, function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_t_message.T_message):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L432"
        return stdgo._internal.internal.profile.Profile__decodeuint64._decodeUint64(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_line.Line>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_line.Line>) ?? throw "null pointer dereference")._functionIDX));
    }, function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_t_message.T_message):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L434"
        return stdgo._internal.internal.profile.Profile__decodeint64._decodeInt64(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_line.Line>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_line.Line>) ?? throw "null pointer dereference").line));
    }]) : stdgo.Slice<stdgo._internal.internal.profile.Profile_t_decoder.T_decoder>);
