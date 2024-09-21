package _internal.internal.profile;
var _sampleDecoder : stdgo.Slice<_internal.internal.profile.Profile_T_decoder.T_decoder> = (new stdgo.Slice<_internal.internal.profile.Profile_T_decoder.T_decoder>(4, 4, ...[null, function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return _internal.internal.profile.Profile__decodeUint64s._decodeUint64s(_b, (stdgo.Go.setRef((stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample>)) : stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample>)._locationIDX) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt64>>));
    }, function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return _internal.internal.profile.Profile__decodeInt64s._decodeInt64s(_b, (stdgo.Go.setRef((stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample>)) : stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample>).value) : stdgo.Ref<stdgo.Slice<stdgo.GoInt64>>));
    }, function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        var _s = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample>)) : stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample>);
        var _n = (_s._labelX.length : stdgo.GoInt);
        _s._labelX = (_s._labelX.__append__((new _internal.internal.profile.Profile_Label.Label() : _internal.internal.profile.Profile_Label.Label)));
        return _internal.internal.profile.Profile__decodeMessage._decodeMessage(_b, stdgo.Go.asInterface((stdgo.Go.setRef(_s._labelX[(_n : stdgo.GoInt)]) : stdgo.Ref<_internal.internal.profile.Profile_Label.Label>)));
    }]) : stdgo.Slice<_internal.internal.profile.Profile_T_decoder.T_decoder>);
