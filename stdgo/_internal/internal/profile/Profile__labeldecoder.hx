package stdgo._internal.internal.profile;
var _labelDecoder : stdgo.Slice<stdgo._internal.internal.profile.Profile_t_decoder.T_decoder> = (new stdgo.Slice<stdgo._internal.internal.profile.Profile_t_decoder.T_decoder>(4, 4, ...[null, function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_t_message.T_message):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L356"
        return stdgo._internal.internal.profile.Profile__decodeint64._decodeInt64(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_label.Label>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_label.Label>) ?? throw "null pointer dereference")._keyX));
    }, function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_t_message.T_message):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L358"
        return stdgo._internal.internal.profile.Profile__decodeint64._decodeInt64(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_label.Label>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_label.Label>) ?? throw "null pointer dereference")._strX));
    }, function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_t_message.T_message):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L360"
        return stdgo._internal.internal.profile.Profile__decodeint64._decodeInt64(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_label.Label>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_label.Label>) ?? throw "null pointer dereference")._numX));
    }]) : stdgo.Slice<stdgo._internal.internal.profile.Profile_t_decoder.T_decoder>);
