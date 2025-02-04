package stdgo._internal.internal.profile;
@:structInit @:using(stdgo._internal.internal.profile.Profile_profile_static_extension.Profile_static_extension) class Profile {
    public var sampleType : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>>);
    public var defaultSampleType : stdgo.GoString = "";
    public var sample : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>>);
    public var mapping : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>>);
    public var location : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>);
    public var function_ : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>>);
    public var comments : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var dropFrames : stdgo.GoString = "";
    public var keepFrames : stdgo.GoString = "";
    public var timeNanos : stdgo.GoInt64 = 0;
    public var durationNanos : stdgo.GoInt64 = 0;
    public var periodType : stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_> = (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>);
    public var period : stdgo.GoInt64 = 0;
    public var _commentX : stdgo.Slice<stdgo.GoInt64> = (null : stdgo.Slice<stdgo.GoInt64>);
    public var _dropFramesX : stdgo.GoInt64 = 0;
    public var _keepFramesX : stdgo.GoInt64 = 0;
    public var _stringTable : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _defaultSampleTypeX : stdgo.GoInt64 = 0;
    public function new(?sampleType:stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>>, ?defaultSampleType:stdgo.GoString, ?sample:stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>>, ?mapping:stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>>, ?location:stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>, ?function_:stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>>, ?comments:stdgo.Slice<stdgo.GoString>, ?dropFrames:stdgo.GoString, ?keepFrames:stdgo.GoString, ?timeNanos:stdgo.GoInt64, ?durationNanos:stdgo.GoInt64, ?periodType:stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>, ?period:stdgo.GoInt64, ?_commentX:stdgo.Slice<stdgo.GoInt64>, ?_dropFramesX:stdgo.GoInt64, ?_keepFramesX:stdgo.GoInt64, ?_stringTable:stdgo.Slice<stdgo.GoString>, ?_defaultSampleTypeX:stdgo.GoInt64) {
        if (sampleType != null) this.sampleType = sampleType;
        if (defaultSampleType != null) this.defaultSampleType = defaultSampleType;
        if (sample != null) this.sample = sample;
        if (mapping != null) this.mapping = mapping;
        if (location != null) this.location = location;
        if (function_ != null) this.function_ = function_;
        if (comments != null) this.comments = comments;
        if (dropFrames != null) this.dropFrames = dropFrames;
        if (keepFrames != null) this.keepFrames = keepFrames;
        if (timeNanos != null) this.timeNanos = timeNanos;
        if (durationNanos != null) this.durationNanos = durationNanos;
        if (periodType != null) this.periodType = periodType;
        if (period != null) this.period = period;
        if (_commentX != null) this._commentX = _commentX;
        if (_dropFramesX != null) this._dropFramesX = _dropFramesX;
        if (_keepFramesX != null) this._keepFramesX = _keepFramesX;
        if (_stringTable != null) this._stringTable = _stringTable;
        if (_defaultSampleTypeX != null) this._defaultSampleTypeX = _defaultSampleTypeX;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Profile(
sampleType,
defaultSampleType,
sample,
mapping,
location,
function_,
comments,
dropFrames,
keepFrames,
timeNanos,
durationNanos,
periodType,
period,
_commentX,
_dropFramesX,
_keepFramesX,
_stringTable,
_defaultSampleTypeX);
    }
}
