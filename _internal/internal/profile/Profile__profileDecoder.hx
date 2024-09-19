package _internal.internal.profile;
var _profileDecoder : stdgo.Slice<_internal.internal.profile.Profile_T_decoder.T_decoder> = (new stdgo.Slice<_internal.internal.profile.Profile_T_decoder.T_decoder>(15, 15, ...[
null,
function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        var _x = (stdgo.Go.setRef(({} : _internal.internal.profile.Profile_ValueType_.ValueType_)) : stdgo.Ref<_internal.internal.profile.Profile_ValueType_.ValueType_>);
        var _pp = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>)) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>);
        _pp.sampleType = (_pp.sampleType.__append__(_x));
        return _internal.internal.profile.Profile__decodeMessage._decodeMessage(_b, stdgo.Go.asInterface(_x));
    },
function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        var _x = (stdgo.Go.setRef(({} : _internal.internal.profile.Profile_Sample.Sample)) : stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample>);
        var _pp = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>)) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>);
        _pp.sample = (_pp.sample.__append__(_x));
        return _internal.internal.profile.Profile__decodeMessage._decodeMessage(_b, stdgo.Go.asInterface(_x));
    },
function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        var _x = (stdgo.Go.setRef(({} : _internal.internal.profile.Profile_Mapping.Mapping)) : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>);
        var _pp = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>)) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>);
        _pp.mapping = (_pp.mapping.__append__(_x));
        return _internal.internal.profile.Profile__decodeMessage._decodeMessage(_b, stdgo.Go.asInterface(_x));
    },
function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        var _x = (stdgo.Go.setRef(({} : _internal.internal.profile.Profile_Location.Location)) : stdgo.Ref<_internal.internal.profile.Profile_Location.Location>);
        var _pp = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>)) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>);
        _pp.location = (_pp.location.__append__(_x));
        return _internal.internal.profile.Profile__decodeMessage._decodeMessage(_b, stdgo.Go.asInterface(_x));
    },
function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        var _x = (stdgo.Go.setRef(({} : _internal.internal.profile.Profile_Function.Function)) : stdgo.Ref<_internal.internal.profile.Profile_Function.Function>);
        var _pp = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>)) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>);
        _pp.function_ = (_pp.function_.__append__(_x));
        return _internal.internal.profile.Profile__decodeMessage._decodeMessage(_b, stdgo.Go.asInterface(_x));
    },
function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        var _err = (_internal.internal.profile.Profile__decodeStrings._decodeStrings(_b, (stdgo.Go.setRef((stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>)) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>)._stringTable) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>)) : stdgo.Error);
        if (_err != null) {
            return _err;
        };
        if ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>)) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>)._stringTable[(0 : stdgo.GoInt)] != (stdgo.Go.str())) {
            return stdgo._internal.errors.Errors_new_.new_(("string_table[0] must be \'\'" : stdgo.GoString));
        };
        return (null : stdgo.Error);
    },
function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return _internal.internal.profile.Profile__decodeInt64._decodeInt64(_b, stdgo.Go.pointer((stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>)) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>)._dropFramesX));
    },
function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return _internal.internal.profile.Profile__decodeInt64._decodeInt64(_b, stdgo.Go.pointer((stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>)) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>)._keepFramesX));
    },
function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return _internal.internal.profile.Profile__decodeInt64._decodeInt64(_b, stdgo.Go.pointer((stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>)) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>).timeNanos));
    },
function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return _internal.internal.profile.Profile__decodeInt64._decodeInt64(_b, stdgo.Go.pointer((stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>)) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>).durationNanos));
    },
function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        var _x = (stdgo.Go.setRef(({} : _internal.internal.profile.Profile_ValueType_.ValueType_)) : stdgo.Ref<_internal.internal.profile.Profile_ValueType_.ValueType_>);
        var _pp = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>)) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>);
        _pp.periodType = _x;
        return _internal.internal.profile.Profile__decodeMessage._decodeMessage(_b, stdgo.Go.asInterface(_x));
    },
function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return _internal.internal.profile.Profile__decodeInt64._decodeInt64(_b, stdgo.Go.pointer((stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>)) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>).period));
    },
function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return _internal.internal.profile.Profile__decodeInt64s._decodeInt64s(_b, (stdgo.Go.setRef((stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>)) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>)._commentX) : stdgo.Ref<stdgo.Slice<stdgo.GoInt64>>));
    },
function(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return _internal.internal.profile.Profile__decodeInt64._decodeInt64(_b, stdgo.Go.pointer((stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>)) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>)._defaultSampleTypeX));
    }]) : stdgo.Slice<_internal.internal.profile.Profile_T_decoder.T_decoder>);
