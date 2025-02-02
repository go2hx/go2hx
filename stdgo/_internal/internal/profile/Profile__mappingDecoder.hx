package stdgo._internal.internal.profile;
var _mappingDecoder : stdgo.Slice<stdgo._internal.internal.profile.Profile_T_decoder.T_decoder> = (new stdgo.Slice<stdgo._internal.internal.profile.Profile_T_decoder.T_decoder>(11, 11, ...[
null,
function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return stdgo._internal.internal.profile.Profile__decodeUint64._decodeUint64(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>) ?? throw "null pointer dereference").iD));
    },
function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return stdgo._internal.internal.profile.Profile__decodeUint64._decodeUint64(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>) ?? throw "null pointer dereference").start));
    },
function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return stdgo._internal.internal.profile.Profile__decodeUint64._decodeUint64(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>) ?? throw "null pointer dereference").limit));
    },
function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return stdgo._internal.internal.profile.Profile__decodeUint64._decodeUint64(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>) ?? throw "null pointer dereference").offset));
    },
function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return stdgo._internal.internal.profile.Profile__decodeInt64._decodeInt64(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>) ?? throw "null pointer dereference")._fileX));
    },
function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return stdgo._internal.internal.profile.Profile__decodeInt64._decodeInt64(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>) ?? throw "null pointer dereference")._buildIDX));
    },
function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return stdgo._internal.internal.profile.Profile__decodeBool._decodeBool(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>) ?? throw "null pointer dereference").hasFunctions));
    },
function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return stdgo._internal.internal.profile.Profile__decodeBool._decodeBool(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>) ?? throw "null pointer dereference").hasFilenames));
    },
function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return stdgo._internal.internal.profile.Profile__decodeBool._decodeBool(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>) ?? throw "null pointer dereference").hasLineNumbers));
    },
function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return stdgo._internal.internal.profile.Profile__decodeBool._decodeBool(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>) ?? throw "null pointer dereference").hasInlineFrames));
    }]) : stdgo.Slice<stdgo._internal.internal.profile.Profile_T_decoder.T_decoder>);
