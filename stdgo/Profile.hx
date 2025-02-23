package stdgo;
var legacyHeapAllocated(get, set) : Bool;
private function get_legacyHeapAllocated():Bool return stdgo._internal.internal.profile.Profile_legacyheapallocated.legacyHeapAllocated;
private function set_legacyHeapAllocated(v:Bool):Bool {
        stdgo._internal.internal.profile.Profile_legacyheapallocated.legacyHeapAllocated = v;
        return v;
    }
@:dox(hide) class T_message_static_extension {
    static public function _encode(t:stdgo._internal.internal.profile.Profile_t_message.T_message, _0:T_buffer):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>);
        stdgo._internal.internal.profile.Profile_t_message_static_extension.T_message_static_extension._encode(t, _0);
    }
    static public function _decoder(t:stdgo._internal.internal.profile.Profile_t_message.T_message):Array<T_decoder> {
        return [for (i in stdgo._internal.internal.profile.Profile_t_message_static_extension.T_message_static_extension._decoder(t)) i];
    }
}
@:dox(hide) @:forward abstract T_message(stdgo._internal.internal.profile.Profile_t_message.T_message) from stdgo._internal.internal.profile.Profile_t_message.T_message to stdgo._internal.internal.profile.Profile_t_message.T_message {
    @:from
    static function fromHaxeInterface(x:{ function _decoder():Array<T_decoder>; function _encode(_0:T_buffer):Void; }):T_message {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_message = { _decoder : () -> x._decoder(), _encode : _0 -> x._encode(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.internal.profile.Profile.T_profileMerger_static_extension) @:dox(hide) abstract T_profileMerger(stdgo._internal.internal.profile.Profile_t_profilemerger.T_profileMerger) from stdgo._internal.internal.profile.Profile_t_profilemerger.T_profileMerger to stdgo._internal.internal.profile.Profile_t_profilemerger.T_profileMerger {
    public var _p(get, set) : Profile_;
    function get__p():Profile_ return this._p;
    function set__p(v:Profile_):Profile_ {
        this._p = (v : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        return v;
    }
    public var _locationsByID(get, set) : Map<haxe.UInt64, Location>;
    function get__locationsByID():Map<haxe.UInt64, Location> return {
        final __obj__:Map<haxe.UInt64, Location> = [];
        for (key => value in this._locationsByID) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__locationsByID(v:Map<haxe.UInt64, Location>):Map<haxe.UInt64, Location> {
        this._locationsByID = {
            final __obj__ = new stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoUInt64)] = (value : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>);
            };
            __obj__;
        };
        return v;
    }
    public var _functionsByID(get, set) : Map<haxe.UInt64, Function>;
    function get__functionsByID():Map<haxe.UInt64, Function> return {
        final __obj__:Map<haxe.UInt64, Function> = [];
        for (key => value in this._functionsByID) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__functionsByID(v:Map<haxe.UInt64, Function>):Map<haxe.UInt64, Function> {
        this._functionsByID = {
            final __obj__ = new stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoUInt64)] = (value : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>);
            };
            __obj__;
        };
        return v;
    }
    public var _mappingsByID(get, set) : Map<haxe.UInt64, T_mapInfo>;
    function get__mappingsByID():Map<haxe.UInt64, T_mapInfo> return {
        final __obj__:Map<haxe.UInt64, T_mapInfo> = [];
        for (key => value in this._mappingsByID) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__mappingsByID(v:Map<haxe.UInt64, T_mapInfo>):Map<haxe.UInt64, T_mapInfo> {
        this._mappingsByID = {
            final __obj__ = new stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.internal.profile.Profile_t_mapinfo.T_mapInfo>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoUInt64)] = value;
            };
            __obj__;
        };
        return v;
    }
    public var _samples(get, set) : Map<T_sampleKey, Sample>;
    function get__samples():Map<T_sampleKey, Sample> return {
        final __obj__:Map<T_sampleKey, Sample> = [];
        for (key => value in this._samples) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__samples(v:Map<T_sampleKey, Sample>):Map<T_sampleKey, Sample> {
        this._samples = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.internal.profile.Profile_t_samplekey.T_sampleKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>>();
            for (key => value in v) {
                __obj__[key] = (value : stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>);
            };
            __obj__;
        };
        return v;
    }
    public var _locations(get, set) : Map<T_locationKey, Location>;
    function get__locations():Map<T_locationKey, Location> return {
        final __obj__:Map<T_locationKey, Location> = [];
        for (key => value in this._locations) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__locations(v:Map<T_locationKey, Location>):Map<T_locationKey, Location> {
        this._locations = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.internal.profile.Profile_t_locationkey.T_locationKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>();
            for (key => value in v) {
                __obj__[key] = (value : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>);
            };
            __obj__;
        };
        return v;
    }
    public var _functions(get, set) : Map<T_functionKey, Function>;
    function get__functions():Map<T_functionKey, Function> return {
        final __obj__:Map<T_functionKey, Function> = [];
        for (key => value in this._functions) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__functions(v:Map<T_functionKey, Function>):Map<T_functionKey, Function> {
        this._functions = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.internal.profile.Profile_t_functionkey.T_functionKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>>();
            for (key => value in v) {
                __obj__[key] = (value : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>);
            };
            __obj__;
        };
        return v;
    }
    public var _mappings(get, set) : Map<T_mappingKey, Mapping>;
    function get__mappings():Map<T_mappingKey, Mapping> return {
        final __obj__:Map<T_mappingKey, Mapping> = [];
        for (key => value in this._mappings) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__mappings(v:Map<T_mappingKey, Mapping>):Map<T_mappingKey, Mapping> {
        this._mappings = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.internal.profile.Profile_t_mappingkey.T_mappingKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>>();
            for (key => value in v) {
                __obj__[key] = (value : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>);
            };
            __obj__;
        };
        return v;
    }
    public function new(?_p:Profile_, ?_locationsByID:Map<haxe.UInt64, Location>, ?_functionsByID:Map<haxe.UInt64, Function>, ?_mappingsByID:Map<haxe.UInt64, T_mapInfo>, ?_samples:Map<T_sampleKey, Sample>, ?_locations:Map<T_locationKey, Location>, ?_functions:Map<T_functionKey, Function>, ?_mappings:Map<T_mappingKey, Mapping>) this = new stdgo._internal.internal.profile.Profile_t_profilemerger.T_profileMerger((_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>), {
        final __obj__ = new stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>();
        for (key => value in _locationsByID) {
            __obj__[(key : stdgo.GoUInt64)] = (value : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>);
        };
        __obj__;
    }, {
        final __obj__ = new stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>>();
        for (key => value in _functionsByID) {
            __obj__[(key : stdgo.GoUInt64)] = (value : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>);
        };
        __obj__;
    }, {
        final __obj__ = new stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.internal.profile.Profile_t_mapinfo.T_mapInfo>();
        for (key => value in _mappingsByID) {
            __obj__[(key : stdgo.GoUInt64)] = value;
        };
        __obj__;
    }, {
        final __obj__ = new stdgo.GoMap<stdgo._internal.internal.profile.Profile_t_samplekey.T_sampleKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>>();
        for (key => value in _samples) {
            __obj__[key] = (value : stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>);
        };
        __obj__;
    }, {
        final __obj__ = new stdgo.GoMap<stdgo._internal.internal.profile.Profile_t_locationkey.T_locationKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>();
        for (key => value in _locations) {
            __obj__[key] = (value : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>);
        };
        __obj__;
    }, {
        final __obj__ = new stdgo.GoMap<stdgo._internal.internal.profile.Profile_t_functionkey.T_functionKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>>();
        for (key => value in _functions) {
            __obj__[key] = (value : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>);
        };
        __obj__;
    }, {
        final __obj__ = new stdgo.GoMap<stdgo._internal.internal.profile.Profile_t_mappingkey.T_mappingKey, stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>>();
        for (key => value in _mappings) {
            __obj__[key] = (value : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>);
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.profile.Profile.T_mapInfo_static_extension) @:dox(hide) abstract T_mapInfo(stdgo._internal.internal.profile.Profile_t_mapinfo.T_mapInfo) from stdgo._internal.internal.profile.Profile_t_mapinfo.T_mapInfo to stdgo._internal.internal.profile.Profile_t_mapinfo.T_mapInfo {
    public var _m(get, set) : Mapping;
    function get__m():Mapping return this._m;
    function set__m(v:Mapping):Mapping {
        this._m = (v : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>);
        return v;
    }
    public var _offset(get, set) : haxe.Int64;
    function get__offset():haxe.Int64 return this._offset;
    function set__offset(v:haxe.Int64):haxe.Int64 {
        this._offset = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_m:Mapping, ?_offset:haxe.Int64) this = new stdgo._internal.internal.profile.Profile_t_mapinfo.T_mapInfo((_m : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>), (_offset : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.profile.Profile.T_sampleKey_static_extension) @:dox(hide) abstract T_sampleKey(stdgo._internal.internal.profile.Profile_t_samplekey.T_sampleKey) from stdgo._internal.internal.profile.Profile_t_samplekey.T_sampleKey to stdgo._internal.internal.profile.Profile_t_samplekey.T_sampleKey {
    public var _locations(get, set) : String;
    function get__locations():String return this._locations;
    function set__locations(v:String):String {
        this._locations = (v : stdgo.GoString);
        return v;
    }
    public var _labels(get, set) : String;
    function get__labels():String return this._labels;
    function set__labels(v:String):String {
        this._labels = (v : stdgo.GoString);
        return v;
    }
    public var _numlabels(get, set) : String;
    function get__numlabels():String return this._numlabels;
    function set__numlabels(v:String):String {
        this._numlabels = (v : stdgo.GoString);
        return v;
    }
    public function new(?_locations:String, ?_labels:String, ?_numlabels:String) this = new stdgo._internal.internal.profile.Profile_t_samplekey.T_sampleKey((_locations : stdgo.GoString), (_labels : stdgo.GoString), (_numlabels : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.profile.Profile.T_locationKey_static_extension) @:dox(hide) abstract T_locationKey(stdgo._internal.internal.profile.Profile_t_locationkey.T_locationKey) from stdgo._internal.internal.profile.Profile_t_locationkey.T_locationKey to stdgo._internal.internal.profile.Profile_t_locationkey.T_locationKey {
    public var _addr(get, set) : haxe.UInt64;
    function get__addr():haxe.UInt64 return this._addr;
    function set__addr(v:haxe.UInt64):haxe.UInt64 {
        this._addr = (v : stdgo.GoUInt64);
        return v;
    }
    public var _mappingID(get, set) : haxe.UInt64;
    function get__mappingID():haxe.UInt64 return this._mappingID;
    function set__mappingID(v:haxe.UInt64):haxe.UInt64 {
        this._mappingID = (v : stdgo.GoUInt64);
        return v;
    }
    public var _lines(get, set) : String;
    function get__lines():String return this._lines;
    function set__lines(v:String):String {
        this._lines = (v : stdgo.GoString);
        return v;
    }
    public var _isFolded(get, set) : Bool;
    function get__isFolded():Bool return this._isFolded;
    function set__isFolded(v:Bool):Bool {
        this._isFolded = v;
        return v;
    }
    public function new(?_addr:haxe.UInt64, ?_mappingID:haxe.UInt64, ?_lines:String, ?_isFolded:Bool) this = new stdgo._internal.internal.profile.Profile_t_locationkey.T_locationKey((_addr : stdgo.GoUInt64), (_mappingID : stdgo.GoUInt64), (_lines : stdgo.GoString), _isFolded);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.profile.Profile.T_mappingKey_static_extension) @:dox(hide) abstract T_mappingKey(stdgo._internal.internal.profile.Profile_t_mappingkey.T_mappingKey) from stdgo._internal.internal.profile.Profile_t_mappingkey.T_mappingKey to stdgo._internal.internal.profile.Profile_t_mappingkey.T_mappingKey {
    public var _size(get, set) : haxe.UInt64;
    function get__size():haxe.UInt64 return this._size;
    function set__size(v:haxe.UInt64):haxe.UInt64 {
        this._size = (v : stdgo.GoUInt64);
        return v;
    }
    public var _offset(get, set) : haxe.UInt64;
    function get__offset():haxe.UInt64 return this._offset;
    function set__offset(v:haxe.UInt64):haxe.UInt64 {
        this._offset = (v : stdgo.GoUInt64);
        return v;
    }
    public var _buildIDOrFile(get, set) : String;
    function get__buildIDOrFile():String return this._buildIDOrFile;
    function set__buildIDOrFile(v:String):String {
        this._buildIDOrFile = (v : stdgo.GoString);
        return v;
    }
    public function new(?_size:haxe.UInt64, ?_offset:haxe.UInt64, ?_buildIDOrFile:String) this = new stdgo._internal.internal.profile.Profile_t_mappingkey.T_mappingKey((_size : stdgo.GoUInt64), (_offset : stdgo.GoUInt64), (_buildIDOrFile : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.profile.Profile.T_functionKey_static_extension) @:dox(hide) abstract T_functionKey(stdgo._internal.internal.profile.Profile_t_functionkey.T_functionKey) from stdgo._internal.internal.profile.Profile_t_functionkey.T_functionKey to stdgo._internal.internal.profile.Profile_t_functionkey.T_functionKey {
    public var _startLine(get, set) : haxe.Int64;
    function get__startLine():haxe.Int64 return this._startLine;
    function set__startLine(v:haxe.Int64):haxe.Int64 {
        this._startLine = (v : stdgo.GoInt64);
        return v;
    }
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _systemName(get, set) : String;
    function get__systemName():String return this._systemName;
    function set__systemName(v:String):String {
        this._systemName = (v : stdgo.GoString);
        return v;
    }
    public var _fileName(get, set) : String;
    function get__fileName():String return this._fileName;
    function set__fileName(v:String):String {
        this._fileName = (v : stdgo.GoString);
        return v;
    }
    public function new(?_startLine:haxe.Int64, ?_name:String, ?_systemName:String, ?_fileName:String) this = new stdgo._internal.internal.profile.Profile_t_functionkey.T_functionKey((_startLine : stdgo.GoInt64), (_name : stdgo.GoString), (_systemName : stdgo.GoString), (_fileName : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.profile.Profile.Profile_static_extension) abstract Profile_(stdgo._internal.internal.profile.Profile_profile.Profile) from stdgo._internal.internal.profile.Profile_profile.Profile to stdgo._internal.internal.profile.Profile_profile.Profile {
    public var sampleType(get, set) : Array<ValueType_>;
    function get_sampleType():Array<ValueType_> return [for (i in this.sampleType) i];
    function set_sampleType(v:Array<ValueType_>):Array<ValueType_> {
        this.sampleType = ([for (i in v) (i : stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>>);
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
        this.sample = ([for (i in v) (i : stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>>);
        return v;
    }
    public var mapping(get, set) : Array<Mapping>;
    function get_mapping():Array<Mapping> return [for (i in this.mapping) i];
    function set_mapping(v:Array<Mapping>):Array<Mapping> {
        this.mapping = ([for (i in v) (i : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>>);
        return v;
    }
    public var location(get, set) : Array<Location>;
    function get_location():Array<Location> return [for (i in this.location) i];
    function set_location(v:Array<Location>):Array<Location> {
        this.location = ([for (i in v) (i : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>);
        return v;
    }
    public var function_(get, set) : Array<Function>;
    function get_function_():Array<Function> return [for (i in this.function_) i];
    function set_function_(v:Array<Function>):Array<Function> {
        this.function_ = ([for (i in v) (i : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>>);
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
        this.periodType = (v : stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>);
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
    public function new(?sampleType:Array<ValueType_>, ?defaultSampleType:String, ?sample:Array<Sample>, ?mapping:Array<Mapping>, ?location:Array<Location>, ?function_:Array<Function>, ?comments:Array<String>, ?dropFrames:String, ?keepFrames:String, ?timeNanos:haxe.Int64, ?durationNanos:haxe.Int64, ?periodType:ValueType_, ?period:haxe.Int64, ?_commentX:Array<haxe.Int64>, ?_dropFramesX:haxe.Int64, ?_keepFramesX:haxe.Int64, ?_stringTable:Array<String>, ?_defaultSampleTypeX:haxe.Int64) this = new stdgo._internal.internal.profile.Profile_profile.Profile(
([for (i in sampleType) (i : stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>>),
(defaultSampleType : stdgo.GoString),
([for (i in sample) (i : stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>>),
([for (i in mapping) (i : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>>),
([for (i in location) (i : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>),
([for (i in function_) (i : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>>),
([for (i in comments) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
(dropFrames : stdgo.GoString),
(keepFrames : stdgo.GoString),
(timeNanos : stdgo.GoInt64),
(durationNanos : stdgo.GoInt64),
(periodType : stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>),
(period : stdgo.GoInt64),
([for (i in _commentX) (i : stdgo.GoInt64)] : stdgo.Slice<stdgo.GoInt64>),
(_dropFramesX : stdgo.GoInt64),
(_keepFramesX : stdgo.GoInt64),
([for (i in _stringTable) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
(_defaultSampleTypeX : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.profile.Profile.ValueType__static_extension) abstract ValueType_(stdgo._internal.internal.profile.Profile_valuetype_.ValueType_) from stdgo._internal.internal.profile.Profile_valuetype_.ValueType_ to stdgo._internal.internal.profile.Profile_valuetype_.ValueType_ {
    public var type(get, set) : String;
    function get_type():String return this.type;
    function set_type(v:String):String {
        this.type = (v : stdgo.GoString);
        return v;
    }
    public var unit(get, set) : String;
    function get_unit():String return this.unit;
    function set_unit(v:String):String {
        this.unit = (v : stdgo.GoString);
        return v;
    }
    public var _typeX(get, set) : haxe.Int64;
    function get__typeX():haxe.Int64 return this._typeX;
    function set__typeX(v:haxe.Int64):haxe.Int64 {
        this._typeX = (v : stdgo.GoInt64);
        return v;
    }
    public var _unitX(get, set) : haxe.Int64;
    function get__unitX():haxe.Int64 return this._unitX;
    function set__unitX(v:haxe.Int64):haxe.Int64 {
        this._unitX = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?type:String, ?unit:String, ?_typeX:haxe.Int64, ?_unitX:haxe.Int64) this = new stdgo._internal.internal.profile.Profile_valuetype_.ValueType_((type : stdgo.GoString), (unit : stdgo.GoString), (_typeX : stdgo.GoInt64), (_unitX : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.profile.Profile.Sample_static_extension) abstract Sample(stdgo._internal.internal.profile.Profile_sample.Sample) from stdgo._internal.internal.profile.Profile_sample.Sample to stdgo._internal.internal.profile.Profile_sample.Sample {
    public var location(get, set) : Array<Location>;
    function get_location():Array<Location> return [for (i in this.location) i];
    function set_location(v:Array<Location>):Array<Location> {
        this.location = ([for (i in v) (i : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>);
        return v;
    }
    public var value(get, set) : Array<haxe.Int64>;
    function get_value():Array<haxe.Int64> return [for (i in this.value) i];
    function set_value(v:Array<haxe.Int64>):Array<haxe.Int64> {
        this.value = ([for (i in v) (i : stdgo.GoInt64)] : stdgo.Slice<stdgo.GoInt64>);
        return v;
    }
    public var label(get, set) : Map<String, Array<String>>;
    function get_label():Map<String, Array<String>> return {
        final __obj__:Map<String, Array<String>> = [];
        for (key => value in this.label) {
            __obj__[key] = [for (i in value) i];
        };
        __obj__;
    };
    function set_label(v:Map<String, Array<String>>):Map<String, Array<String>> {
        this.label = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = ([for (i in value) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
            };
            __obj__;
        };
        return v;
    }
    public var numLabel(get, set) : Map<String, Array<haxe.Int64>>;
    function get_numLabel():Map<String, Array<haxe.Int64>> return {
        final __obj__:Map<String, Array<haxe.Int64>> = [];
        for (key => value in this.numLabel) {
            __obj__[key] = [for (i in value) i];
        };
        __obj__;
    };
    function set_numLabel(v:Map<String, Array<haxe.Int64>>):Map<String, Array<haxe.Int64>> {
        this.numLabel = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt64>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = ([for (i in value) (i : stdgo.GoInt64)] : stdgo.Slice<stdgo.GoInt64>);
            };
            __obj__;
        };
        return v;
    }
    public var numUnit(get, set) : Map<String, Array<String>>;
    function get_numUnit():Map<String, Array<String>> return {
        final __obj__:Map<String, Array<String>> = [];
        for (key => value in this.numUnit) {
            __obj__[key] = [for (i in value) i];
        };
        __obj__;
    };
    function set_numUnit(v:Map<String, Array<String>>):Map<String, Array<String>> {
        this.numUnit = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = ([for (i in value) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
            };
            __obj__;
        };
        return v;
    }
    public var _locationIDX(get, set) : Array<haxe.UInt64>;
    function get__locationIDX():Array<haxe.UInt64> return [for (i in this._locationIDX) i];
    function set__locationIDX(v:Array<haxe.UInt64>):Array<haxe.UInt64> {
        this._locationIDX = ([for (i in v) (i : stdgo.GoUInt64)] : stdgo.Slice<stdgo.GoUInt64>);
        return v;
    }
    public var _labelX(get, set) : Array<Label>;
    function get__labelX():Array<Label> return [for (i in this._labelX) i];
    function set__labelX(v:Array<Label>):Array<Label> {
        this._labelX = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.profile.Profile_label.Label>);
        return v;
    }
    public function new(?location:Array<Location>, ?value:Array<haxe.Int64>, ?label:Map<String, Array<String>>, ?numLabel:Map<String, Array<haxe.Int64>>, ?numUnit:Map<String, Array<String>>, ?_locationIDX:Array<haxe.UInt64>, ?_labelX:Array<Label>) this = new stdgo._internal.internal.profile.Profile_sample.Sample(([for (i in location) (i : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>), ([for (i in value) (i : stdgo.GoInt64)] : stdgo.Slice<stdgo.GoInt64>), {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>();
        for (key => value in label) {
            __obj__[(key : stdgo.GoString)] = ([for (i in value) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        };
        __obj__;
    }, {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt64>>();
        for (key => value in numLabel) {
            __obj__[(key : stdgo.GoString)] = ([for (i in value) (i : stdgo.GoInt64)] : stdgo.Slice<stdgo.GoInt64>);
        };
        __obj__;
    }, {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>();
        for (key => value in numUnit) {
            __obj__[(key : stdgo.GoString)] = ([for (i in value) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        };
        __obj__;
    }, ([for (i in _locationIDX) (i : stdgo.GoUInt64)] : stdgo.Slice<stdgo.GoUInt64>), ([for (i in _labelX) i] : stdgo.Slice<stdgo._internal.internal.profile.Profile_label.Label>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.profile.Profile.Label_static_extension) abstract Label(stdgo._internal.internal.profile.Profile_label.Label) from stdgo._internal.internal.profile.Profile_label.Label to stdgo._internal.internal.profile.Profile_label.Label {
    public var _keyX(get, set) : haxe.Int64;
    function get__keyX():haxe.Int64 return this._keyX;
    function set__keyX(v:haxe.Int64):haxe.Int64 {
        this._keyX = (v : stdgo.GoInt64);
        return v;
    }
    public var _strX(get, set) : haxe.Int64;
    function get__strX():haxe.Int64 return this._strX;
    function set__strX(v:haxe.Int64):haxe.Int64 {
        this._strX = (v : stdgo.GoInt64);
        return v;
    }
    public var _numX(get, set) : haxe.Int64;
    function get__numX():haxe.Int64 return this._numX;
    function set__numX(v:haxe.Int64):haxe.Int64 {
        this._numX = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_keyX:haxe.Int64, ?_strX:haxe.Int64, ?_numX:haxe.Int64) this = new stdgo._internal.internal.profile.Profile_label.Label((_keyX : stdgo.GoInt64), (_strX : stdgo.GoInt64), (_numX : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.profile.Profile.Mapping_static_extension) abstract Mapping(stdgo._internal.internal.profile.Profile_mapping.Mapping) from stdgo._internal.internal.profile.Profile_mapping.Mapping to stdgo._internal.internal.profile.Profile_mapping.Mapping {
    public var iD(get, set) : haxe.UInt64;
    function get_iD():haxe.UInt64 return this.iD;
    function set_iD(v:haxe.UInt64):haxe.UInt64 {
        this.iD = (v : stdgo.GoUInt64);
        return v;
    }
    public var start(get, set) : haxe.UInt64;
    function get_start():haxe.UInt64 return this.start;
    function set_start(v:haxe.UInt64):haxe.UInt64 {
        this.start = (v : stdgo.GoUInt64);
        return v;
    }
    public var limit(get, set) : haxe.UInt64;
    function get_limit():haxe.UInt64 return this.limit;
    function set_limit(v:haxe.UInt64):haxe.UInt64 {
        this.limit = (v : stdgo.GoUInt64);
        return v;
    }
    public var offset(get, set) : haxe.UInt64;
    function get_offset():haxe.UInt64 return this.offset;
    function set_offset(v:haxe.UInt64):haxe.UInt64 {
        this.offset = (v : stdgo.GoUInt64);
        return v;
    }
    public var file(get, set) : String;
    function get_file():String return this.file;
    function set_file(v:String):String {
        this.file = (v : stdgo.GoString);
        return v;
    }
    public var buildID(get, set) : String;
    function get_buildID():String return this.buildID;
    function set_buildID(v:String):String {
        this.buildID = (v : stdgo.GoString);
        return v;
    }
    public var hasFunctions(get, set) : Bool;
    function get_hasFunctions():Bool return this.hasFunctions;
    function set_hasFunctions(v:Bool):Bool {
        this.hasFunctions = v;
        return v;
    }
    public var hasFilenames(get, set) : Bool;
    function get_hasFilenames():Bool return this.hasFilenames;
    function set_hasFilenames(v:Bool):Bool {
        this.hasFilenames = v;
        return v;
    }
    public var hasLineNumbers(get, set) : Bool;
    function get_hasLineNumbers():Bool return this.hasLineNumbers;
    function set_hasLineNumbers(v:Bool):Bool {
        this.hasLineNumbers = v;
        return v;
    }
    public var hasInlineFrames(get, set) : Bool;
    function get_hasInlineFrames():Bool return this.hasInlineFrames;
    function set_hasInlineFrames(v:Bool):Bool {
        this.hasInlineFrames = v;
        return v;
    }
    public var _fileX(get, set) : haxe.Int64;
    function get__fileX():haxe.Int64 return this._fileX;
    function set__fileX(v:haxe.Int64):haxe.Int64 {
        this._fileX = (v : stdgo.GoInt64);
        return v;
    }
    public var _buildIDX(get, set) : haxe.Int64;
    function get__buildIDX():haxe.Int64 return this._buildIDX;
    function set__buildIDX(v:haxe.Int64):haxe.Int64 {
        this._buildIDX = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?iD:haxe.UInt64, ?start:haxe.UInt64, ?limit:haxe.UInt64, ?offset:haxe.UInt64, ?file:String, ?buildID:String, ?hasFunctions:Bool, ?hasFilenames:Bool, ?hasLineNumbers:Bool, ?hasInlineFrames:Bool, ?_fileX:haxe.Int64, ?_buildIDX:haxe.Int64) this = new stdgo._internal.internal.profile.Profile_mapping.Mapping(
(iD : stdgo.GoUInt64),
(start : stdgo.GoUInt64),
(limit : stdgo.GoUInt64),
(offset : stdgo.GoUInt64),
(file : stdgo.GoString),
(buildID : stdgo.GoString),
hasFunctions,
hasFilenames,
hasLineNumbers,
hasInlineFrames,
(_fileX : stdgo.GoInt64),
(_buildIDX : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.profile.Profile.Location_static_extension) abstract Location(stdgo._internal.internal.profile.Profile_location.Location) from stdgo._internal.internal.profile.Profile_location.Location to stdgo._internal.internal.profile.Profile_location.Location {
    public var iD(get, set) : haxe.UInt64;
    function get_iD():haxe.UInt64 return this.iD;
    function set_iD(v:haxe.UInt64):haxe.UInt64 {
        this.iD = (v : stdgo.GoUInt64);
        return v;
    }
    public var mapping(get, set) : Mapping;
    function get_mapping():Mapping return this.mapping;
    function set_mapping(v:Mapping):Mapping {
        this.mapping = (v : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>);
        return v;
    }
    public var address(get, set) : haxe.UInt64;
    function get_address():haxe.UInt64 return this.address;
    function set_address(v:haxe.UInt64):haxe.UInt64 {
        this.address = (v : stdgo.GoUInt64);
        return v;
    }
    public var line(get, set) : Array<Line>;
    function get_line():Array<Line> return [for (i in this.line) i];
    function set_line(v:Array<Line>):Array<Line> {
        this.line = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.profile.Profile_line.Line>);
        return v;
    }
    public var isFolded(get, set) : Bool;
    function get_isFolded():Bool return this.isFolded;
    function set_isFolded(v:Bool):Bool {
        this.isFolded = v;
        return v;
    }
    public var _mappingIDX(get, set) : haxe.UInt64;
    function get__mappingIDX():haxe.UInt64 return this._mappingIDX;
    function set__mappingIDX(v:haxe.UInt64):haxe.UInt64 {
        this._mappingIDX = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?iD:haxe.UInt64, ?mapping:Mapping, ?address:haxe.UInt64, ?line:Array<Line>, ?isFolded:Bool, ?_mappingIDX:haxe.UInt64) this = new stdgo._internal.internal.profile.Profile_location.Location((iD : stdgo.GoUInt64), (mapping : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>), (address : stdgo.GoUInt64), ([for (i in line) i] : stdgo.Slice<stdgo._internal.internal.profile.Profile_line.Line>), isFolded, (_mappingIDX : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.profile.Profile.Line_static_extension) abstract Line(stdgo._internal.internal.profile.Profile_line.Line) from stdgo._internal.internal.profile.Profile_line.Line to stdgo._internal.internal.profile.Profile_line.Line {
    public var function_(get, set) : Function;
    function get_function_():Function return this.function_;
    function set_function_(v:Function):Function {
        this.function_ = (v : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>);
        return v;
    }
    public var line(get, set) : haxe.Int64;
    function get_line():haxe.Int64 return this.line;
    function set_line(v:haxe.Int64):haxe.Int64 {
        this.line = (v : stdgo.GoInt64);
        return v;
    }
    public var _functionIDX(get, set) : haxe.UInt64;
    function get__functionIDX():haxe.UInt64 return this._functionIDX;
    function set__functionIDX(v:haxe.UInt64):haxe.UInt64 {
        this._functionIDX = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?function_:Function, ?line:haxe.Int64, ?_functionIDX:haxe.UInt64) this = new stdgo._internal.internal.profile.Profile_line.Line((function_ : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>), (line : stdgo.GoInt64), (_functionIDX : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.profile.Profile.Function_static_extension) abstract Function(stdgo._internal.internal.profile.Profile_function.Function) from stdgo._internal.internal.profile.Profile_function.Function to stdgo._internal.internal.profile.Profile_function.Function {
    public var iD(get, set) : haxe.UInt64;
    function get_iD():haxe.UInt64 return this.iD;
    function set_iD(v:haxe.UInt64):haxe.UInt64 {
        this.iD = (v : stdgo.GoUInt64);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var systemName(get, set) : String;
    function get_systemName():String return this.systemName;
    function set_systemName(v:String):String {
        this.systemName = (v : stdgo.GoString);
        return v;
    }
    public var filename(get, set) : String;
    function get_filename():String return this.filename;
    function set_filename(v:String):String {
        this.filename = (v : stdgo.GoString);
        return v;
    }
    public var startLine(get, set) : haxe.Int64;
    function get_startLine():haxe.Int64 return this.startLine;
    function set_startLine(v:haxe.Int64):haxe.Int64 {
        this.startLine = (v : stdgo.GoInt64);
        return v;
    }
    public var _nameX(get, set) : haxe.Int64;
    function get__nameX():haxe.Int64 return this._nameX;
    function set__nameX(v:haxe.Int64):haxe.Int64 {
        this._nameX = (v : stdgo.GoInt64);
        return v;
    }
    public var _systemNameX(get, set) : haxe.Int64;
    function get__systemNameX():haxe.Int64 return this._systemNameX;
    function set__systemNameX(v:haxe.Int64):haxe.Int64 {
        this._systemNameX = (v : stdgo.GoInt64);
        return v;
    }
    public var _filenameX(get, set) : haxe.Int64;
    function get__filenameX():haxe.Int64 return this._filenameX;
    function set__filenameX(v:haxe.Int64):haxe.Int64 {
        this._filenameX = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?iD:haxe.UInt64, ?name:String, ?systemName:String, ?filename:String, ?startLine:haxe.Int64, ?_nameX:haxe.Int64, ?_systemNameX:haxe.Int64, ?_filenameX:haxe.Int64) this = new stdgo._internal.internal.profile.Profile_function.Function((iD : stdgo.GoUInt64), (name : stdgo.GoString), (systemName : stdgo.GoString), (filename : stdgo.GoString), (startLine : stdgo.GoInt64), (_nameX : stdgo.GoInt64), (_systemNameX : stdgo.GoInt64), (_filenameX : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.profile.Profile.T_buffer_static_extension) @:dox(hide) abstract T_buffer(stdgo._internal.internal.profile.Profile_t_buffer.T_buffer) from stdgo._internal.internal.profile.Profile_t_buffer.T_buffer to stdgo._internal.internal.profile.Profile_t_buffer.T_buffer {
    public var _field(get, set) : StdTypes.Int;
    function get__field():StdTypes.Int return this._field;
    function set__field(v:StdTypes.Int):StdTypes.Int {
        this._field = (v : stdgo.GoInt);
        return v;
    }
    public var _typ(get, set) : StdTypes.Int;
    function get__typ():StdTypes.Int return this._typ;
    function set__typ(v:StdTypes.Int):StdTypes.Int {
        this._typ = (v : stdgo.GoInt);
        return v;
    }
    public var _u64(get, set) : haxe.UInt64;
    function get__u64():haxe.UInt64 return this._u64;
    function set__u64(v:haxe.UInt64):haxe.UInt64 {
        this._u64 = (v : stdgo.GoUInt64);
        return v;
    }
    public var _data(get, set) : Array<std.UInt>;
    function get__data():Array<std.UInt> return [for (i in this._data) i];
    function set__data(v:Array<std.UInt>):Array<std.UInt> {
        this._data = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _tmp(get, set) : haxe.ds.Vector<std.UInt>;
    function get__tmp():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._tmp) i]);
    function set__tmp(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._tmp = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_field:StdTypes.Int, ?_typ:StdTypes.Int, ?_u64:haxe.UInt64, ?_data:Array<std.UInt>, ?_tmp:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.internal.profile.Profile_t_buffer.T_buffer((_field : stdgo.GoInt), (_typ : stdgo.GoInt), (_u64 : stdgo.GoUInt64), ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _tmp) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef TagMatch = stdgo._internal.internal.profile.Profile_tagmatch.TagMatch;
@:dox(hide) typedef T_sectionType = stdgo._internal.internal.profile.Profile_t_sectiontype.T_sectionType;
typedef Demangler = stdgo._internal.internal.profile.Profile_demangler.Demangler;
@:dox(hide) typedef T_decoder = stdgo._internal.internal.profile.Profile_t_decoder.T_decoder;
@:dox(hide) typedef T_profileMergerPointer = stdgo._internal.internal.profile.Profile_t_profilemergerpointer.T_profileMergerPointer;
@:dox(hide) class T_profileMerger_static_extension {
    static public function _mapFunction(_pm:T_profileMerger, _src:Function):Function {
        final _pm = (_pm : stdgo.Ref<stdgo._internal.internal.profile.Profile_t_profilemerger.T_profileMerger>);
        final _src = (_src : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>);
        return stdgo._internal.internal.profile.Profile_t_profilemerger_static_extension.T_profileMerger_static_extension._mapFunction(_pm, _src);
    }
    static public function _mapLine(_pm:T_profileMerger, _src:Line):Line {
        final _pm = (_pm : stdgo.Ref<stdgo._internal.internal.profile.Profile_t_profilemerger.T_profileMerger>);
        return stdgo._internal.internal.profile.Profile_t_profilemerger_static_extension.T_profileMerger_static_extension._mapLine(_pm, _src);
    }
    static public function _mapMapping(_pm:T_profileMerger, _src:Mapping):T_mapInfo {
        final _pm = (_pm : stdgo.Ref<stdgo._internal.internal.profile.Profile_t_profilemerger.T_profileMerger>);
        final _src = (_src : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>);
        return stdgo._internal.internal.profile.Profile_t_profilemerger_static_extension.T_profileMerger_static_extension._mapMapping(_pm, _src);
    }
    static public function _mapLocation(_pm:T_profileMerger, _src:Location):Location {
        final _pm = (_pm : stdgo.Ref<stdgo._internal.internal.profile.Profile_t_profilemerger.T_profileMerger>);
        final _src = (_src : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>);
        return stdgo._internal.internal.profile.Profile_t_profilemerger_static_extension.T_profileMerger_static_extension._mapLocation(_pm, _src);
    }
    static public function _mapSample(_pm:T_profileMerger, _src:Sample):Sample {
        final _pm = (_pm : stdgo.Ref<stdgo._internal.internal.profile.Profile_t_profilemerger.T_profileMerger>);
        final _src = (_src : stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>);
        return stdgo._internal.internal.profile.Profile_t_profilemerger_static_extension.T_profileMerger_static_extension._mapSample(_pm, _src);
    }
}
@:dox(hide) typedef T_mapInfoPointer = stdgo._internal.internal.profile.Profile_t_mapinfopointer.T_mapInfoPointer;
@:dox(hide) class T_mapInfo_static_extension {

}
@:dox(hide) typedef T_sampleKeyPointer = stdgo._internal.internal.profile.Profile_t_samplekeypointer.T_sampleKeyPointer;
@:dox(hide) class T_sampleKey_static_extension {

}
@:dox(hide) typedef T_locationKeyPointer = stdgo._internal.internal.profile.Profile_t_locationkeypointer.T_locationKeyPointer;
@:dox(hide) class T_locationKey_static_extension {

}
@:dox(hide) typedef T_mappingKeyPointer = stdgo._internal.internal.profile.Profile_t_mappingkeypointer.T_mappingKeyPointer;
@:dox(hide) class T_mappingKey_static_extension {

}
@:dox(hide) typedef T_functionKeyPointer = stdgo._internal.internal.profile.Profile_t_functionkeypointer.T_functionKeyPointer;
@:dox(hide) class T_functionKey_static_extension {

}
typedef ProfilePointer = stdgo._internal.internal.profile.Profile_profilepointer.ProfilePointer;
class Profile_static_extension {
    static public function removeUninteresting(_p:Profile_):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        return stdgo._internal.internal.profile.Profile_profile_static_extension.Profile_static_extension.removeUninteresting(_p);
    }
    static public function prune(_p:Profile_, _dropRx:stdgo._internal.regexp.Regexp_regexp.Regexp, _keepRx:stdgo._internal.regexp.Regexp_regexp.Regexp):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        final _dropRx = (_dropRx : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _keepRx = (_keepRx : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        stdgo._internal.internal.profile.Profile_profile_static_extension.Profile_static_extension.prune(_p, _dropRx, _keepRx);
    }
    static public function scaleN(_p:Profile_, _ratios:Array<StdTypes.Float>):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        final _ratios = ([for (i in _ratios) (i : stdgo.GoFloat64)] : stdgo.Slice<stdgo.GoFloat64>);
        return stdgo._internal.internal.profile.Profile_profile_static_extension.Profile_static_extension.scaleN(_p, _ratios);
    }
    static public function scale(_p:Profile_, _ratio:StdTypes.Float):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        final _ratio = (_ratio : stdgo.GoFloat64);
        stdgo._internal.internal.profile.Profile_profile_static_extension.Profile_static_extension.scale(_p, _ratio);
    }
    static public function empty(_p:Profile_):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        return stdgo._internal.internal.profile.Profile_profile_static_extension.Profile_static_extension.empty(_p);
    }
    static public function demangle(_p:Profile_, _d:Demangler):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        return stdgo._internal.internal.profile.Profile_profile_static_extension.Profile_static_extension.demangle(_p, _d);
    }
    static public function copy(_p:Profile_):Profile_ {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        return stdgo._internal.internal.profile.Profile_profile_static_extension.Profile_static_extension.copy(_p);
    }
    static public function hasFileLines(_p:Profile_):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        return stdgo._internal.internal.profile.Profile_profile_static_extension.Profile_static_extension.hasFileLines(_p);
    }
    static public function hasFunctions(_p:Profile_):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        return stdgo._internal.internal.profile.Profile_profile_static_extension.Profile_static_extension.hasFunctions(_p);
    }
    static public function compatible(_p:Profile_, _pb:Profile_):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        final _pb = (_pb : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        return stdgo._internal.internal.profile.Profile_profile_static_extension.Profile_static_extension.compatible(_p, _pb);
    }
    static public function merge(_p:Profile_, _pb:Profile_, _r:StdTypes.Float):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        final _pb = (_pb : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        final _r = (_r : stdgo.GoFloat64);
        return stdgo._internal.internal.profile.Profile_profile_static_extension.Profile_static_extension.merge(_p, _pb, _r);
    }
    static public function string(_p:Profile_):String {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        return stdgo._internal.internal.profile.Profile_profile_static_extension.Profile_static_extension.string(_p);
    }
    static public function aggregate(_p:Profile_, _inlineFrame:Bool, _function:Bool, _filename:Bool, _linenumber:Bool, _address:Bool):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        return stdgo._internal.internal.profile.Profile_profile_static_extension.Profile_static_extension.aggregate(_p, _inlineFrame, _function, _filename, _linenumber, _address);
    }
    static public function checkValid(_p:Profile_):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        return stdgo._internal.internal.profile.Profile_profile_static_extension.Profile_static_extension.checkValid(_p);
    }
    static public function write(_p:Profile_, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        return stdgo._internal.internal.profile.Profile_profile_static_extension.Profile_static_extension.write(_p, _w);
    }
    static public function _setMain(_p:Profile_):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        stdgo._internal.internal.profile.Profile_profile_static_extension.Profile_static_extension._setMain(_p);
    }
    static public function _compatible(_p:Profile_, _pb:Profile_):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        final _pb = (_pb : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        return stdgo._internal.internal.profile.Profile_profile_static_extension.Profile_static_extension._compatible(_p, _pb);
    }
    static public function normalize(_p:Profile_, _pb:Profile_):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        final _pb = (_pb : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        return stdgo._internal.internal.profile.Profile_profile_static_extension.Profile_static_extension.normalize(_p, _pb);
    }
    static public function _addLegacyFrameInfo(_p:Profile_):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        stdgo._internal.internal.profile.Profile_profile_static_extension.Profile_static_extension._addLegacyFrameInfo(_p);
    }
    static public function parseMemoryMap(_p:Profile_, _rd:stdgo._internal.io.Io_reader.Reader):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        return stdgo._internal.internal.profile.Profile_profile_static_extension.Profile_static_extension.parseMemoryMap(_p, _rd);
    }
    static public function _remapMappingIDs(_p:Profile_):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        stdgo._internal.internal.profile.Profile_profile_static_extension.Profile_static_extension._remapMappingIDs(_p);
    }
    static public function _remapFunctionIDs(_p:Profile_):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        stdgo._internal.internal.profile.Profile_profile_static_extension.Profile_static_extension._remapFunctionIDs(_p);
    }
    static public function _remapLocationIDs(_p:Profile_):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        stdgo._internal.internal.profile.Profile_profile_static_extension.Profile_static_extension._remapLocationIDs(_p);
    }
    static public function filterSamplesByTag(_p:Profile_, _focus:TagMatch, _ignore:TagMatch):stdgo.Tuple<Bool, Bool> {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        return {
            final obj = stdgo._internal.internal.profile.Profile_profile_static_extension.Profile_static_extension.filterSamplesByTag(_p, _focus, _ignore);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function filterSamplesByName(_p:Profile_, _focus:stdgo._internal.regexp.Regexp_regexp.Regexp, _ignore:stdgo._internal.regexp.Regexp_regexp.Regexp, _hide:stdgo._internal.regexp.Regexp_regexp.Regexp):stdgo.Tuple.Tuple3<Bool, Bool, Bool> {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        final _focus = (_focus : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _ignore = (_ignore : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _hide = (_hide : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        return {
            final obj = stdgo._internal.internal.profile.Profile_profile_static_extension.Profile_static_extension.filterSamplesByName(_p, _focus, _ignore, _hide);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _postDecode(_p:Profile_):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        return stdgo._internal.internal.profile.Profile_profile_static_extension.Profile_static_extension._postDecode(_p);
    }
    static public function _encode(_p:Profile_, _b:T_buffer):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        final _b = (_b : stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>);
        stdgo._internal.internal.profile.Profile_profile_static_extension.Profile_static_extension._encode(_p, _b);
    }
    static public function _preEncode(_p:Profile_):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        stdgo._internal.internal.profile.Profile_profile_static_extension.Profile_static_extension._preEncode(_p);
    }
    static public function _decoder(_p:Profile_):Array<T_decoder> {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        return [for (i in stdgo._internal.internal.profile.Profile_profile_static_extension.Profile_static_extension._decoder(_p)) i];
    }
}
typedef ValueType_Pointer = stdgo._internal.internal.profile.Profile_valuetype_pointer.ValueType_Pointer;
class ValueType__static_extension {
    static public function _encode(_p:ValueType_, _b:T_buffer):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>);
        final _b = (_b : stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>);
        stdgo._internal.internal.profile.Profile_valuetype__static_extension.ValueType__static_extension._encode(_p, _b);
    }
    static public function _decoder(_p:ValueType_):Array<T_decoder> {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>);
        return [for (i in stdgo._internal.internal.profile.Profile_valuetype__static_extension.ValueType__static_extension._decoder(_p)) i];
    }
}
typedef SamplePointer = stdgo._internal.internal.profile.Profile_samplepointer.SamplePointer;
class Sample_static_extension {
    static public function _key(_sample:Sample):T_sampleKey {
        final _sample = (_sample : stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>);
        return stdgo._internal.internal.profile.Profile_sample_static_extension.Sample_static_extension._key(_sample);
    }
    static public function _encode(_p:Sample, _b:T_buffer):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>);
        final _b = (_b : stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>);
        stdgo._internal.internal.profile.Profile_sample_static_extension.Sample_static_extension._encode(_p, _b);
    }
    static public function _decoder(_p:Sample):Array<T_decoder> {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>);
        return [for (i in stdgo._internal.internal.profile.Profile_sample_static_extension.Sample_static_extension._decoder(_p)) i];
    }
}
typedef LabelPointer = stdgo._internal.internal.profile.Profile_labelpointer.LabelPointer;
class Label_static_extension {
    static public function _encode(_p:Label, _b:T_buffer):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>);
        stdgo._internal.internal.profile.Profile_label_static_extension.Label_static_extension._encode(_p, _b);
    }
    static public function _decoder(_p:Label):Array<T_decoder> {
        return [for (i in stdgo._internal.internal.profile.Profile_label_static_extension.Label_static_extension._decoder(_p)) i];
    }
}
typedef MappingPointer = stdgo._internal.internal.profile.Profile_mappingpointer.MappingPointer;
class Mapping_static_extension {
    static public function _key(_m:Mapping):T_mappingKey {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>);
        return stdgo._internal.internal.profile.Profile_mapping_static_extension.Mapping_static_extension._key(_m);
    }
    static public function _encode(_p:Mapping, _b:T_buffer):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>);
        final _b = (_b : stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>);
        stdgo._internal.internal.profile.Profile_mapping_static_extension.Mapping_static_extension._encode(_p, _b);
    }
    static public function _decoder(_p:Mapping):Array<T_decoder> {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>);
        return [for (i in stdgo._internal.internal.profile.Profile_mapping_static_extension.Mapping_static_extension._decoder(_p)) i];
    }
}
typedef LocationPointer = stdgo._internal.internal.profile.Profile_locationpointer.LocationPointer;
class Location_static_extension {
    static public function _key(_l:Location):T_locationKey {
        final _l = (_l : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>);
        return stdgo._internal.internal.profile.Profile_location_static_extension.Location_static_extension._key(_l);
    }
    static public function _unmatchedLines(_loc:Location, _re:stdgo._internal.regexp.Regexp_regexp.Regexp):Array<Line> {
        final _loc = (_loc : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        return [for (i in stdgo._internal.internal.profile.Profile_location_static_extension.Location_static_extension._unmatchedLines(_loc, _re)) i];
    }
    static public function _matchesName(_loc:Location, _re:stdgo._internal.regexp.Regexp_regexp.Regexp):Bool {
        final _loc = (_loc : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>);
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        return stdgo._internal.internal.profile.Profile_location_static_extension.Location_static_extension._matchesName(_loc, _re);
    }
    static public function _encode(_p:Location, _b:T_buffer):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>);
        final _b = (_b : stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>);
        stdgo._internal.internal.profile.Profile_location_static_extension.Location_static_extension._encode(_p, _b);
    }
    static public function _decoder(_p:Location):Array<T_decoder> {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>);
        return [for (i in stdgo._internal.internal.profile.Profile_location_static_extension.Location_static_extension._decoder(_p)) i];
    }
}
typedef LinePointer = stdgo._internal.internal.profile.Profile_linepointer.LinePointer;
class Line_static_extension {
    static public function _encode(_p:Line, _b:T_buffer):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_line.Line>);
        final _b = (_b : stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>);
        stdgo._internal.internal.profile.Profile_line_static_extension.Line_static_extension._encode(_p, _b);
    }
    static public function _decoder(_p:Line):Array<T_decoder> {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_line.Line>);
        return [for (i in stdgo._internal.internal.profile.Profile_line_static_extension.Line_static_extension._decoder(_p)) i];
    }
}
typedef FunctionPointer = stdgo._internal.internal.profile.Profile_functionpointer.FunctionPointer;
class Function_static_extension {
    static public function _key(_f:Function):T_functionKey {
        final _f = (_f : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>);
        return stdgo._internal.internal.profile.Profile_function_static_extension.Function_static_extension._key(_f);
    }
    static public function _encode(_p:Function, _b:T_buffer):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>);
        final _b = (_b : stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>);
        stdgo._internal.internal.profile.Profile_function_static_extension.Function_static_extension._encode(_p, _b);
    }
    static public function _decoder(_p:Function):Array<T_decoder> {
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>);
        return [for (i in stdgo._internal.internal.profile.Profile_function_static_extension.Function_static_extension._decoder(_p)) i];
    }
}
@:dox(hide) typedef T_bufferPointer = stdgo._internal.internal.profile.Profile_t_bufferpointer.T_bufferPointer;
@:dox(hide) class T_buffer_static_extension {

}
typedef TagMatchPointer = stdgo._internal.internal.profile.Profile_tagmatchpointer.TagMatchPointer;
class TagMatch_static_extension {

}
@:dox(hide) typedef T_sectionTypePointer = stdgo._internal.internal.profile.Profile_t_sectiontypepointer.T_sectionTypePointer;
@:dox(hide) class T_sectionType_static_extension {

}
typedef DemanglerPointer = stdgo._internal.internal.profile.Profile_demanglerpointer.DemanglerPointer;
class Demangler_static_extension {

}
@:dox(hide) typedef T_decoderPointer = stdgo._internal.internal.profile.Profile_t_decoderpointer.T_decoderPointer;
@:dox(hide) class T_decoder_static_extension {

}
/**
    * Package profile provides a representation of
    * github.com/google/pprof/proto/profile.proto and
    * methods to encode/decode/merge profiles in this format.
**/
class Profile {
    /**
        * ParseTracebacks parses a set of tracebacks and returns a newly
        * populated profile. It will accept any text file and generate a
        * Profile out of it with any hex addresses it can identify, including
        * a process map if it can recognize one. Each sample will include a
        * tag "source" with the addresses recognized in string format.
    **/
    static public inline function parseTracebacks(_b:Array<std.UInt>):stdgo.Tuple<Profile_, stdgo.Error> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.profile.Profile_parsetracebacks.parseTracebacks(_b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Merge merges all the profiles in profs into a single Profile.
        * Returns a new profile independent of the input profiles. The merged
        * profile is compacted to eliminate unused samples, locations,
        * functions and mappings. Profiles must have identical profile sample
        * and period types or the merge will fail. profile.Period of the
        * resulting profile will be the maximum of all profiles, and
        * profile.TimeNanos will be the earliest nonzero one.
    **/
    static public inline function merge(_srcs:Array<Profile_>):stdgo.Tuple<Profile_, stdgo.Error> {
        final _srcs = ([for (i in _srcs) (i : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>>);
        return {
            final obj = stdgo._internal.internal.profile.Profile_merge.merge(_srcs);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Parse parses a profile and checks for its validity. The input
        * may be a gzip-compressed encoded protobuf or one of many legacy
        * profile formats which may be unsupported in the future.
    **/
    static public inline function parse(_r:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple<Profile_, stdgo.Error> {
        return {
            final obj = stdgo._internal.internal.profile.Profile_parse.parse(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
