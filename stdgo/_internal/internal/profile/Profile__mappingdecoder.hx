package stdgo._internal.internal.profile;
var _mappingDecoder : stdgo.Slice<stdgo._internal.internal.profile.Profile_t_decoder.T_decoder> = (new stdgo.Slice<stdgo._internal.internal.profile.Profile_t_decoder.T_decoder>(11, 11, ...[
null,
function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_t_message.T_message):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L382"
        return stdgo._internal.internal.profile.Profile__decodeuint64._decodeUint64(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>) ?? throw "null pointer dereference").iD));
    },
function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_t_message.T_message):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L383"
        return stdgo._internal.internal.profile.Profile__decodeuint64._decodeUint64(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>) ?? throw "null pointer dereference").start));
    },
function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_t_message.T_message):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L384"
        return stdgo._internal.internal.profile.Profile__decodeuint64._decodeUint64(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>) ?? throw "null pointer dereference").limit));
    },
function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_t_message.T_message):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L385"
        return stdgo._internal.internal.profile.Profile__decodeuint64._decodeUint64(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>) ?? throw "null pointer dereference").offset));
    },
function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_t_message.T_message):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L386"
        return stdgo._internal.internal.profile.Profile__decodeint64._decodeInt64(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>) ?? throw "null pointer dereference")._fileX));
    },
function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_t_message.T_message):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L387"
        return stdgo._internal.internal.profile.Profile__decodeint64._decodeInt64(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>) ?? throw "null pointer dereference")._buildIDX));
    },
function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_t_message.T_message):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L388"
        return stdgo._internal.internal.profile.Profile__decodebool._decodeBool(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>) ?? throw "null pointer dereference").hasFunctions));
    },
function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_t_message.T_message):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L389"
        return stdgo._internal.internal.profile.Profile__decodebool._decodeBool(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>) ?? throw "null pointer dereference").hasFilenames));
    },
function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_t_message.T_message):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L390"
        return stdgo._internal.internal.profile.Profile__decodebool._decodeBool(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>) ?? throw "null pointer dereference").hasLineNumbers));
    },
function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_t_message.T_message):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L391"
        return stdgo._internal.internal.profile.Profile__decodebool._decodeBool(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>) ?? throw "null pointer dereference").hasInlineFrames));
    }]) : stdgo.Slice<stdgo._internal.internal.profile.Profile_t_decoder.T_decoder>);
