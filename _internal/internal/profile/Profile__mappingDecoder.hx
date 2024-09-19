package _internal.internal.profile;
var _mappingDecoder : stdgo.Slice<_internal.internal.profile.Profile_T_decoder.T_decoder> = (new stdgo.Slice<_internal.internal.profile.Profile_T_decoder.T_decoder>(11, 11, ...[
null,
function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return _internal.internal.profile.Profile__decodeUint64._decodeUint64(_b, stdgo.Go.pointer((stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>)) : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>).id));
    },
function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return _internal.internal.profile.Profile__decodeUint64._decodeUint64(_b, stdgo.Go.pointer((stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>)) : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>).start));
    },
function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return _internal.internal.profile.Profile__decodeUint64._decodeUint64(_b, stdgo.Go.pointer((stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>)) : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>).limit));
    },
function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return _internal.internal.profile.Profile__decodeUint64._decodeUint64(_b, stdgo.Go.pointer((stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>)) : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>).offset));
    },
function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return _internal.internal.profile.Profile__decodeInt64._decodeInt64(_b, stdgo.Go.pointer((stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>)) : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>)._fileX));
    },
function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return _internal.internal.profile.Profile__decodeInt64._decodeInt64(_b, stdgo.Go.pointer((stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>)) : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>)._buildIDX));
    },
function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return _internal.internal.profile.Profile__decodeBool._decodeBool(_b, stdgo.Go.pointer((stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>)) : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>).hasFunctions));
    },
function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return _internal.internal.profile.Profile__decodeBool._decodeBool(_b, stdgo.Go.pointer((stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>)) : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>).hasFilenames));
    },
function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return _internal.internal.profile.Profile__decodeBool._decodeBool(_b, stdgo.Go.pointer((stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>)) : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>).hasLineNumbers));
    },
function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return _internal.internal.profile.Profile__decodeBool._decodeBool(_b, stdgo.Go.pointer((stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>)) : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>).hasInlineFrames));
    }]) : stdgo.Slice<_internal.internal.profile.Profile_T_decoder.T_decoder>);
