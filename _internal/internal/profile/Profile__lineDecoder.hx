package _internal.internal.profile;
var _lineDecoder : stdgo.Slice<_internal.internal.profile.Profile_T_decoder.T_decoder> = (new stdgo.Slice<_internal.internal.profile.Profile_T_decoder.T_decoder>(3, 3, ...[null, function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return _internal.internal.profile.Profile__decodeUint64._decodeUint64(_b, stdgo.Go.pointer((stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Line.Line>)) : stdgo.Ref<_internal.internal.profile.Profile_Line.Line>)._functionIDX));
    }, function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return _internal.internal.profile.Profile__decodeInt64._decodeInt64(_b, stdgo.Go.pointer((stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Line.Line>)) : stdgo.Ref<_internal.internal.profile.Profile_Line.Line>).line));
    }]) : stdgo.Slice<_internal.internal.profile.Profile_T_decoder.T_decoder>);
