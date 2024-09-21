package _internal.internal.profile;
var _locationDecoder : stdgo.Slice<_internal.internal.profile.Profile_T_decoder.T_decoder> = (new stdgo.Slice<_internal.internal.profile.Profile_T_decoder.T_decoder>(5, 5, ...[null, function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return _internal.internal.profile.Profile__decodeUint64._decodeUint64(_b, stdgo.Go.pointer((stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Location.Location>)) : stdgo.Ref<_internal.internal.profile.Profile_Location.Location>).id));
    }, function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return _internal.internal.profile.Profile__decodeUint64._decodeUint64(_b, stdgo.Go.pointer((stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Location.Location>)) : stdgo.Ref<_internal.internal.profile.Profile_Location.Location>)._mappingIDX));
    }, function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return _internal.internal.profile.Profile__decodeUint64._decodeUint64(_b, stdgo.Go.pointer((stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Location.Location>)) : stdgo.Ref<_internal.internal.profile.Profile_Location.Location>).address));
    }, function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        var _pp = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Location.Location>)) : stdgo.Ref<_internal.internal.profile.Profile_Location.Location>);
        var _n = (_pp.line.length : stdgo.GoInt);
        _pp.line = (_pp.line.__append__((new _internal.internal.profile.Profile_Line.Line() : _internal.internal.profile.Profile_Line.Line)));
        return _internal.internal.profile.Profile__decodeMessage._decodeMessage(_b, stdgo.Go.asInterface((stdgo.Go.setRef(_pp.line[(_n : stdgo.GoInt)]) : stdgo.Ref<_internal.internal.profile.Profile_Line.Line>)));
    }]) : stdgo.Slice<_internal.internal.profile.Profile_T_decoder.T_decoder>);
