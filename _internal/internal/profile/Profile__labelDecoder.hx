package _internal.internal.profile;
var _labelDecoder : stdgo.Slice<_internal.internal.profile.Profile_T_decoder.T_decoder> = (new stdgo.Slice<_internal.internal.profile.Profile_T_decoder.T_decoder>(4, 4, ...[null, function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return _internal.internal.profile.Profile__decodeInt64._decodeInt64(_b, stdgo.Go.pointer((stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Label.Label>)) : stdgo.Ref<_internal.internal.profile.Profile_Label.Label>)._keyX));
    }, function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return _internal.internal.profile.Profile__decodeInt64._decodeInt64(_b, stdgo.Go.pointer((stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Label.Label>)) : stdgo.Ref<_internal.internal.profile.Profile_Label.Label>)._strX));
    }, function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return _internal.internal.profile.Profile__decodeInt64._decodeInt64(_b, stdgo.Go.pointer((stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Label.Label>)) : stdgo.Ref<_internal.internal.profile.Profile_Label.Label>)._numX));
    }]) : stdgo.Slice<_internal.internal.profile.Profile_T_decoder.T_decoder>);
