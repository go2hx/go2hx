package stdgo._internal.internal.profile;
var _functionDecoder : stdgo.Slice<stdgo._internal.internal.profile.Profile_t_decoder.T_decoder> = (new stdgo.Slice<stdgo._internal.internal.profile.Profile_t_decoder.T_decoder>(6, 6, ...[null, function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_t_message.T_message):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L452"
        return stdgo._internal.internal.profile.Profile__decodeuint64._decodeUint64(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>) ?? throw "null pointer dereference").iD));
    }, function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_t_message.T_message):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L454"
        return stdgo._internal.internal.profile.Profile__decodeint64._decodeInt64(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>) ?? throw "null pointer dereference")._nameX));
    }, function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_t_message.T_message):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L456"
        return stdgo._internal.internal.profile.Profile__decodeint64._decodeInt64(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>) ?? throw "null pointer dereference")._systemNameX));
    }, function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_t_message.T_message):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L458"
        return stdgo._internal.internal.profile.Profile__decodeint64._decodeInt64(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>) ?? throw "null pointer dereference")._filenameX));
    }, function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_t_message.T_message):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L460"
        return stdgo._internal.internal.profile.Profile__decodeint64._decodeInt64(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>) ?? throw "null pointer dereference").startLine));
    }]) : stdgo.Slice<stdgo._internal.internal.profile.Profile_t_decoder.T_decoder>);
