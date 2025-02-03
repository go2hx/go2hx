package stdgo.internal.profile;
@:structInit @:using(stdgo.internal.profile.Profile.Profile_static_extension) abstract Profile_(stdgo._internal.internal.profile.Profile_Profile.Profile) from stdgo._internal.internal.profile.Profile_Profile.Profile to stdgo._internal.internal.profile.Profile_Profile.Profile {
    public var sampleType(get, set) : Array<ValueType_>;
    function get_sampleType():Array<ValueType_> return [for (i in this.sampleType) i];
    function set_sampleType(v:Array<ValueType_>):Array<ValueType_> {
        this.sampleType = ([for (i in v) (i : stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_>>);
        return v;
    }
    public var defaultSampleType(get, set) : String;
    function get_defaultSampleType():String return this.defaultSampleType;
    function set_defaultSampleType(v:String):String {
        this.defaultSampleType = (v : stdgo.GoString);
        return v;
    }
    public var sample(get, set) : Array<Sample>;
    function get_sample():Array<Sample> return [for (i in this.sample) i];
    function set_sample(v:Array<Sample>):Array<Sample> {
        this.sample = ([for (i in v) (i : stdgo.Ref<stdgo._internal.internal.profile.Profile_Sample.Sample>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_Sample.Sample>>);
        return v;
    }
    public var mapping(get, set) : Array<Mapping>;
    function get_mapping():Array<Mapping> return [for (i in this.mapping) i];
    function set_mapping(v:Array<Mapping>):Array<Mapping> {
        this.mapping = ([for (i in v) (i : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>>);
        return v;
    }
    public var location(get, set) : Array<Location>;
    function get_location():Array<Location> return [for (i in this.location) i];
    function set_location(v:Array<Location>):Array<Location> {
        this.location = ([for (i in v) (i : stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>);
        return v;
    }
    public var function_(get, set) : Array<Function>;
    function get_function_():Array<Function> return [for (i in this.function_) i];
    function set_function_(v:Array<Function>):Array<Function> {
        this.function_ = ([for (i in v) (i : stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>>);
        return v;
    }
    public var comments(get, set) : Array<String>;
    function get_comments():Array<String> return [for (i in this.comments) i];
    function set_comments(v:Array<String>):Array<String> {
        this.comments = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var dropFrames(get, set) : String;
    function get_dropFrames():String return this.dropFrames;
    function set_dropFrames(v:String):String {
        this.dropFrames = (v : stdgo.GoString);
        return v;
    }
    public var keepFrames(get, set) : String;
    function get_keepFrames():String return this.keepFrames;
    function set_keepFrames(v:String):String {
        this.keepFrames = (v : stdgo.GoString);
        return v;
    }
    public var timeNanos(get, set) : haxe.Int64;
    function get_timeNanos():haxe.Int64 return this.timeNanos;
    function set_timeNanos(v:haxe.Int64):haxe.Int64 {
        this.timeNanos = (v : stdgo.GoInt64);
        return v;
    }
    public var durationNanos(get, set) : haxe.Int64;
    function get_durationNanos():haxe.Int64 return this.durationNanos;
    function set_durationNanos(v:haxe.Int64):haxe.Int64 {
        this.durationNanos = (v : stdgo.GoInt64);
        return v;
    }
    public var periodType(get, set) : ValueType_;
    function get_periodType():ValueType_ return this.periodType;
    function set_periodType(v:ValueType_):ValueType_ {
        this.periodType = (v : stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_>);
        return v;
    }
    public var period(get, set) : haxe.Int64;
    function get_period():haxe.Int64 return this.period;
    function set_period(v:haxe.Int64):haxe.Int64 {
        this.period = (v : stdgo.GoInt64);
        return v;
    }
    public var _commentX(get, set) : Array<haxe.Int64>;
    function get__commentX():Array<haxe.Int64> return [for (i in this._commentX) i];
    function set__commentX(v:Array<haxe.Int64>):Array<haxe.Int64> {
        this._commentX = ([for (i in v) (i : stdgo.GoInt64)] : stdgo.Slice<stdgo.GoInt64>);
        return v;
    }
    public var _dropFramesX(get, set) : haxe.Int64;
    function get__dropFramesX():haxe.Int64 return this._dropFramesX;
    function set__dropFramesX(v:haxe.Int64):haxe.Int64 {
        this._dropFramesX = (v : stdgo.GoInt64);
        return v;
    }
    public var _keepFramesX(get, set) : haxe.Int64;
    function get__keepFramesX():haxe.Int64 return this._keepFramesX;
    function set__keepFramesX(v:haxe.Int64):haxe.Int64 {
        this._keepFramesX = (v : stdgo.GoInt64);
        return v;
    }
    public var _stringTable(get, set) : Array<String>;
    function get__stringTable():Array<String> return [for (i in this._stringTable) i];
    function set__stringTable(v:Array<String>):Array<String> {
        this._stringTable = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _defaultSampleTypeX(get, set) : haxe.Int64;
    function get__defaultSampleTypeX():haxe.Int64 return this._defaultSampleTypeX;
    function set__defaultSampleTypeX(v:haxe.Int64):haxe.Int64 {
        this._defaultSampleTypeX = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?sampleType:Array<ValueType_>, ?defaultSampleType:String, ?sample:Array<Sample>, ?mapping:Array<Mapping>, ?location:Array<Location>, ?function_:Array<Function>, ?comments:Array<String>, ?dropFrames:String, ?keepFrames:String, ?timeNanos:haxe.Int64, ?durationNanos:haxe.Int64, ?periodType:ValueType_, ?period:haxe.Int64, ?_commentX:Array<haxe.Int64>, ?_dropFramesX:haxe.Int64, ?_keepFramesX:haxe.Int64, ?_stringTable:Array<String>, ?_defaultSampleTypeX:haxe.Int64) this = new stdgo._internal.internal.profile.Profile_Profile.Profile(
([for (i in sampleType) (i : stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_>>),
(defaultSampleType : stdgo.GoString),
([for (i in sample) (i : stdgo.Ref<stdgo._internal.internal.profile.Profile_Sample.Sample>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_Sample.Sample>>),
([for (i in mapping) (i : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>>),
([for (i in location) (i : stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>),
([for (i in function_) (i : stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_Function.Function>>),
([for (i in comments) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
(dropFrames : stdgo.GoString),
(keepFrames : stdgo.GoString),
(timeNanos : stdgo.GoInt64),
(durationNanos : stdgo.GoInt64),
(periodType : stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_>),
(period : stdgo.GoInt64),
([for (i in _commentX) (i : stdgo.GoInt64)] : stdgo.Slice<stdgo.GoInt64>),
(_dropFramesX : stdgo.GoInt64),
(_keepFramesX : stdgo.GoInt64),
([for (i in _stringTable) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
(_defaultSampleTypeX : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
