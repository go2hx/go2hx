package stdgo._internal.internal.profile;
var _profileDecoder : stdgo.Slice<stdgo._internal.internal.profile.Profile_T_decoder.T_decoder> = (new stdgo.Slice<stdgo._internal.internal.profile.Profile_T_decoder.T_decoder>(15, 15, ...[
null,
function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.internal.profile.Profile_ValueType_.ValueType_)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_>);
        var _pp = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        (@:checkr _pp ?? throw "null pointer dereference").sampleType = ((@:checkr _pp ?? throw "null pointer dereference").sampleType.__append__(_x));
        return stdgo._internal.internal.profile.Profile__decodeMessage._decodeMessage(_b, stdgo.Go.asInterface(_x));
    },
function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.internal.profile.Profile_Sample.Sample)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Sample.Sample>);
        var _pp = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        (@:checkr _pp ?? throw "null pointer dereference").sample = ((@:checkr _pp ?? throw "null pointer dereference").sample.__append__(_x));
        return stdgo._internal.internal.profile.Profile__decodeMessage._decodeMessage(_b, stdgo.Go.asInterface(_x));
    },
function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.internal.profile.Profile_Mapping.Mapping)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>);
        var _pp = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        (@:checkr _pp ?? throw "null pointer dereference").mapping = ((@:checkr _pp ?? throw "null pointer dereference").mapping.__append__(_x));
        return stdgo._internal.internal.profile.Profile__decodeMessage._decodeMessage(_b, stdgo.Go.asInterface(_x));
    },
function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.internal.profile.Profile_Location.Location)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>);
        var _pp = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        (@:checkr _pp ?? throw "null pointer dereference").location = ((@:checkr _pp ?? throw "null pointer dereference").location.__append__(_x));
        return stdgo._internal.internal.profile.Profile__decodeMessage._decodeMessage(_b, stdgo.Go.asInterface(_x));
    },
function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.internal.profile.Profile_Function.Function)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>);
        var _pp = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        (@:checkr _pp ?? throw "null pointer dereference").function_ = ((@:checkr _pp ?? throw "null pointer dereference").function_.__append__(_x));
        return stdgo._internal.internal.profile.Profile__decodeMessage._decodeMessage(_b, stdgo.Go.asInterface(_x));
    },
function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        var _err = (stdgo._internal.internal.profile.Profile__decodeStrings._decodeStrings(_b, (stdgo.Go.setRef((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>) ?? throw "null pointer dereference")._stringTable) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>)) : stdgo.Error);
        if (_err != null) {
            return _err;
        };
        if ((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>) ?? throw "null pointer dereference")._stringTable[(0 : stdgo.GoInt)] != (stdgo.Go.str())) {
            return stdgo._internal.errors.Errors_new_.new_(("string_table[0] must be \'\'" : stdgo.GoString));
        };
        return (null : stdgo.Error);
    },
function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return stdgo._internal.internal.profile.Profile__decodeInt64._decodeInt64(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>) ?? throw "null pointer dereference")._dropFramesX));
    },
function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return stdgo._internal.internal.profile.Profile__decodeInt64._decodeInt64(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>) ?? throw "null pointer dereference")._keepFramesX));
    },
function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return stdgo._internal.internal.profile.Profile__decodeInt64._decodeInt64(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>) ?? throw "null pointer dereference").timeNanos));
    },
function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return stdgo._internal.internal.profile.Profile__decodeInt64._decodeInt64(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>) ?? throw "null pointer dereference").durationNanos));
    },
function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.internal.profile.Profile_ValueType_.ValueType_)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_>);
        var _pp = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        (@:checkr _pp ?? throw "null pointer dereference").periodType = _x;
        return stdgo._internal.internal.profile.Profile__decodeMessage._decodeMessage(_b, stdgo.Go.asInterface(_x));
    },
function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return stdgo._internal.internal.profile.Profile__decodeInt64._decodeInt64(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>) ?? throw "null pointer dereference").period));
    },
function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return stdgo._internal.internal.profile.Profile__decodeInt64s._decodeInt64s(_b, (stdgo.Go.setRef((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>) ?? throw "null pointer dereference")._commentX) : stdgo.Ref<stdgo.Slice<stdgo.GoInt64>>));
    },
function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return stdgo._internal.internal.profile.Profile__decodeInt64._decodeInt64(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>) ?? throw "null pointer dereference")._defaultSampleTypeX));
    }]) : stdgo.Slice<stdgo._internal.internal.profile.Profile_T_decoder.T_decoder>);
