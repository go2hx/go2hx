package stdgo.runtime.pprof;
class T_countProfile_static_extension {
    static public function label(t:stdgo._internal.runtime.pprof.Pprof_T_countProfile.T_countProfile, _i:StdTypes.Int):T_labelMap {
        return stdgo._internal.runtime.pprof.Pprof_T_countProfile_static_extension.T_countProfile_static_extension.label(t, _i);
    }
    static public function stack(t:stdgo._internal.runtime.pprof.Pprof_T_countProfile.T_countProfile, _i:StdTypes.Int):Array<stdgo.GoUIntptr> {
        return [for (i in stdgo._internal.runtime.pprof.Pprof_T_countProfile_static_extension.T_countProfile_static_extension.stack(t, _i)) i];
    }
    static public function len(t:stdgo._internal.runtime.pprof.Pprof_T_countProfile.T_countProfile):StdTypes.Int {
        return stdgo._internal.runtime.pprof.Pprof_T_countProfile_static_extension.T_countProfile_static_extension.len(t);
    }
}
typedef T_countProfile = stdgo._internal.runtime.pprof.Pprof_T_countProfile.T_countProfile;
@:structInit abstract T_label(stdgo._internal.runtime.pprof.Pprof_T_label.T_label) from stdgo._internal.runtime.pprof.Pprof_T_label.T_label to stdgo._internal.runtime.pprof.Pprof_T_label.T_label {
    public var _key(get, set) : String;
    function get__key():String return this._key;
    function set__key(v:String):String {
        this._key = v;
        return v;
    }
    public var _value(get, set) : String;
    function get__value():String return this._value;
    function set__value(v:String):String {
        this._value = v;
        return v;
    }
    public function new(?_key:String, ?_value:String) this = new stdgo._internal.runtime.pprof.Pprof_T_label.T_label(_key, _value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract LabelSet(stdgo._internal.runtime.pprof.Pprof_LabelSet.LabelSet) from stdgo._internal.runtime.pprof.Pprof_LabelSet.LabelSet to stdgo._internal.runtime.pprof.Pprof_LabelSet.LabelSet {
    public var _list(get, set) : Array<T_label>;
    function get__list():Array<T_label> return [for (i in this._list) i];
    function set__list(v:Array<T_label>):Array<T_label> {
        this._list = ([for (i in v) i] : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_label.T_label>);
        return v;
    }
    public function new(?_list:Array<T_label>) this = new stdgo._internal.runtime.pprof.Pprof_LabelSet.LabelSet(([for (i in _list) i] : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_label.T_label>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_labelContextKey(stdgo._internal.runtime.pprof.Pprof_T_labelContextKey.T_labelContextKey) from stdgo._internal.runtime.pprof.Pprof_T_labelContextKey.T_labelContextKey to stdgo._internal.runtime.pprof.Pprof_T_labelContextKey.T_labelContextKey {
    public function new() this = new stdgo._internal.runtime.pprof.Pprof_T_labelContextKey.T_labelContextKey();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.pprof.Pprof.T_profMap_static_extension) abstract T_profMap(stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap) from stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap to stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap {
    public var _hash(get, set) : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>;
    function get__hash():stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>> return this._hash;
    function set__hash(v:stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>):stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>> {
        this._hash = v;
        return v;
    }
    public var _all(get, set) : T_profMapEntry;
    function get__all():T_profMapEntry return this._all;
    function set__all(v:T_profMapEntry):T_profMapEntry {
        this._all = v;
        return v;
    }
    public var _last(get, set) : T_profMapEntry;
    function get__last():T_profMapEntry return this._last;
    function set__last(v:T_profMapEntry):T_profMapEntry {
        this._last = v;
        return v;
    }
    public var _free(get, set) : Array<T_profMapEntry>;
    function get__free():Array<T_profMapEntry> return [for (i in this._free) i];
    function set__free(v:Array<T_profMapEntry>):Array<T_profMapEntry> {
        this._free = ([for (i in v) i] : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        return v;
    }
    public var _freeStk(get, set) : Array<stdgo.GoUIntptr>;
    function get__freeStk():Array<stdgo.GoUIntptr> return [for (i in this._freeStk) i];
    function set__freeStk(v:Array<stdgo.GoUIntptr>):Array<stdgo.GoUIntptr> {
        this._freeStk = ([for (i in v) i] : stdgo.Slice<stdgo.GoUIntptr>);
        return v;
    }
    public function new(?_hash:stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>, ?_all:T_profMapEntry, ?_last:T_profMapEntry, ?_free:Array<T_profMapEntry>, ?_freeStk:Array<stdgo.GoUIntptr>) this = new stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap(_hash, _all, _last, ([for (i in _free) i] : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>), ([for (i in _freeStk) i] : stdgo.Slice<stdgo.GoUIntptr>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_profMapEntry(stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry) from stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry to stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry {
    public var _nextHash(get, set) : T_profMapEntry;
    function get__nextHash():T_profMapEntry return this._nextHash;
    function set__nextHash(v:T_profMapEntry):T_profMapEntry {
        this._nextHash = v;
        return v;
    }
    public var _nextAll(get, set) : T_profMapEntry;
    function get__nextAll():T_profMapEntry return this._nextAll;
    function set__nextAll(v:T_profMapEntry):T_profMapEntry {
        this._nextAll = v;
        return v;
    }
    public var _stk(get, set) : Array<stdgo.GoUIntptr>;
    function get__stk():Array<stdgo.GoUIntptr> return [for (i in this._stk) i];
    function set__stk(v:Array<stdgo.GoUIntptr>):Array<stdgo.GoUIntptr> {
        this._stk = ([for (i in v) i] : stdgo.Slice<stdgo.GoUIntptr>);
        return v;
    }
    public var _tag(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer;
    function get__tag():stdgo._internal.unsafe.Unsafe.UnsafePointer return this._tag;
    function set__tag(v:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        this._tag = v;
        return v;
    }
    public var _count(get, set) : haxe.Int64;
    function get__count():haxe.Int64 return this._count;
    function set__count(v:haxe.Int64):haxe.Int64 {
        this._count = v;
        return v;
    }
    public function new(?_nextHash:T_profMapEntry, ?_nextAll:T_profMapEntry, ?_stk:Array<stdgo.GoUIntptr>, ?_tag:stdgo._internal.unsafe.Unsafe.UnsafePointer, ?_count:haxe.Int64) this = new stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry(_nextHash, _nextAll, ([for (i in _stk) i] : stdgo.Slice<stdgo.GoUIntptr>), _tag, _count);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.pprof.Pprof.Profile_static_extension) abstract Profile(stdgo._internal.runtime.pprof.Pprof_Profile.Profile) from stdgo._internal.runtime.pprof.Pprof_Profile.Profile to stdgo._internal.runtime.pprof.Pprof_Profile.Profile {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = v;
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _m(get, set) : stdgo.GoMap<stdgo.AnyInterface, stdgo.Slice<stdgo.GoUIntptr>>;
    function get__m():stdgo.GoMap<stdgo.AnyInterface, stdgo.Slice<stdgo.GoUIntptr>> return this._m;
    function set__m(v:stdgo.GoMap<stdgo.AnyInterface, stdgo.Slice<stdgo.GoUIntptr>>):stdgo.GoMap<stdgo.AnyInterface, stdgo.Slice<stdgo.GoUIntptr>> {
        this._m = v;
        return v;
    }
    public var _count(get, set) : () -> stdgo.GoInt;
    function get__count():() -> stdgo.GoInt return () -> this._count();
    function set__count(v:() -> stdgo.GoInt):() -> stdgo.GoInt {
        this._count = v;
        return v;
    }
    public var _write(get, set) : (stdgo._internal.io.Io_Writer.Writer, stdgo.GoInt) -> stdgo.Error;
    function get__write():(stdgo._internal.io.Io_Writer.Writer, stdgo.GoInt) -> stdgo.Error return (_0, _1) -> this._write(_0, _1);
    function set__write(v:(stdgo._internal.io.Io_Writer.Writer, stdgo.GoInt) -> stdgo.Error):(stdgo._internal.io.Io_Writer.Writer, stdgo.GoInt) -> stdgo.Error {
        this._write = v;
        return v;
    }
    public function new(?_name:String, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_m:stdgo.GoMap<stdgo.AnyInterface, stdgo.Slice<stdgo.GoUIntptr>>, ?_count:() -> stdgo.GoInt, ?_write:(stdgo._internal.io.Io_Writer.Writer, stdgo.GoInt) -> stdgo.Error) this = new stdgo._internal.runtime.pprof.Pprof_Profile.Profile(_name, _mu, _m, _count, _write);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.pprof.Pprof.T_keysByCount_static_extension) abstract T_keysByCount(stdgo._internal.runtime.pprof.Pprof_T_keysByCount.T_keysByCount) from stdgo._internal.runtime.pprof.Pprof_T_keysByCount.T_keysByCount to stdgo._internal.runtime.pprof.Pprof_T_keysByCount.T_keysByCount {
    public var _keys(get, set) : Array<String>;
    function get__keys():Array<String> return [for (i in this._keys) i];
    function set__keys(v:Array<String>):Array<String> {
        this._keys = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _count(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>;
    function get__count():stdgo.GoMap<stdgo.GoString, stdgo.GoInt> return this._count;
    function set__count(v:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>):stdgo.GoMap<stdgo.GoString, stdgo.GoInt> {
        this._count = v;
        return v;
    }
    public function new(?_keys:Array<String>, ?_count:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) this = new stdgo._internal.runtime.pprof.Pprof_T_keysByCount.T_keysByCount(([for (i in _keys) i] : stdgo.Slice<stdgo.GoString>), _count);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.pprof.Pprof.T_runtimeProfile_static_extension) abstract T_runtimeProfile(stdgo._internal.runtime.pprof.Pprof_T_runtimeProfile.T_runtimeProfile) from stdgo._internal.runtime.pprof.Pprof_T_runtimeProfile.T_runtimeProfile to stdgo._internal.runtime.pprof.Pprof_T_runtimeProfile.T_runtimeProfile {
    public var _stk(get, set) : Array<stdgo._internal.runtime.Runtime_StackRecord.StackRecord>;
    function get__stk():Array<stdgo._internal.runtime.Runtime_StackRecord.StackRecord> return [for (i in this._stk) i];
    function set__stk(v:Array<stdgo._internal.runtime.Runtime_StackRecord.StackRecord>):Array<stdgo._internal.runtime.Runtime_StackRecord.StackRecord> {
        this._stk = ([for (i in v) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_StackRecord.StackRecord>);
        return v;
    }
    public var _labels(get, set) : Array<stdgo._internal.unsafe.Unsafe.UnsafePointer>;
    function get__labels():Array<stdgo._internal.unsafe.Unsafe.UnsafePointer> return [for (i in this._labels) i];
    function set__labels(v:Array<stdgo._internal.unsafe.Unsafe.UnsafePointer>):Array<stdgo._internal.unsafe.Unsafe.UnsafePointer> {
        this._labels = ([for (i in v) i] : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>);
        return v;
    }
    public function new(?_stk:Array<stdgo._internal.runtime.Runtime_StackRecord.StackRecord>, ?_labels:Array<stdgo._internal.unsafe.Unsafe.UnsafePointer>) this = new stdgo._internal.runtime.pprof.Pprof_T_runtimeProfile.T_runtimeProfile(([for (i in _stk) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_StackRecord.StackRecord>), ([for (i in _labels) i] : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.pprof.Pprof.T_profileBuilder_static_extension) abstract T_profileBuilder(stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder) from stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder to stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder {
    public var _start(get, set) : stdgo._internal.time.Time_Time.Time;
    function get__start():stdgo._internal.time.Time_Time.Time return this._start;
    function set__start(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this._start = v;
        return v;
    }
    public var _end(get, set) : stdgo._internal.time.Time_Time.Time;
    function get__end():stdgo._internal.time.Time_Time.Time return this._end;
    function set__end(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this._end = v;
        return v;
    }
    public var _havePeriod(get, set) : Bool;
    function get__havePeriod():Bool return this._havePeriod;
    function set__havePeriod(v:Bool):Bool {
        this._havePeriod = v;
        return v;
    }
    public var _period(get, set) : haxe.Int64;
    function get__period():haxe.Int64 return this._period;
    function set__period(v:haxe.Int64):haxe.Int64 {
        this._period = v;
        return v;
    }
    public var _m(get, set) : T_profMap;
    function get__m():T_profMap return this._m;
    function set__m(v:T_profMap):T_profMap {
        this._m = v;
        return v;
    }
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public var _zw(get, set) : stdgo._internal.compress.gzip.Gzip_Writer.Writer;
    function get__zw():stdgo._internal.compress.gzip.Gzip_Writer.Writer return this._zw;
    function set__zw(v:stdgo._internal.compress.gzip.Gzip_Writer.Writer):stdgo._internal.compress.gzip.Gzip_Writer.Writer {
        this._zw = v;
        return v;
    }
    public var _pb(get, set) : T_protobuf;
    function get__pb():T_protobuf return this._pb;
    function set__pb(v:T_protobuf):T_protobuf {
        this._pb = v;
        return v;
    }
    public var _strings(get, set) : Array<String>;
    function get__strings():Array<String> return [for (i in this._strings) i];
    function set__strings(v:Array<String>):Array<String> {
        this._strings = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _stringMap(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>;
    function get__stringMap():stdgo.GoMap<stdgo.GoString, stdgo.GoInt> return this._stringMap;
    function set__stringMap(v:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>):stdgo.GoMap<stdgo.GoString, stdgo.GoInt> {
        this._stringMap = v;
        return v;
    }
    public var _locs(get, set) : stdgo.GoMap<stdgo.GoUIntptr, stdgo._internal.runtime.pprof.Pprof_T_locInfo.T_locInfo>;
    function get__locs():stdgo.GoMap<stdgo.GoUIntptr, stdgo._internal.runtime.pprof.Pprof_T_locInfo.T_locInfo> return this._locs;
    function set__locs(v:stdgo.GoMap<stdgo.GoUIntptr, stdgo._internal.runtime.pprof.Pprof_T_locInfo.T_locInfo>):stdgo.GoMap<stdgo.GoUIntptr, stdgo._internal.runtime.pprof.Pprof_T_locInfo.T_locInfo> {
        this._locs = v;
        return v;
    }
    public var _funcs(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>;
    function get__funcs():stdgo.GoMap<stdgo.GoString, stdgo.GoInt> return this._funcs;
    function set__funcs(v:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>):stdgo.GoMap<stdgo.GoString, stdgo.GoInt> {
        this._funcs = v;
        return v;
    }
    public var _mem(get, set) : Array<T_memMap>;
    function get__mem():Array<T_memMap> return [for (i in this._mem) i];
    function set__mem(v:Array<T_memMap>):Array<T_memMap> {
        this._mem = ([for (i in v) i] : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_memMap.T_memMap>);
        return v;
    }
    public var _deck(get, set) : T_pcDeck;
    function get__deck():T_pcDeck return this._deck;
    function set__deck(v:T_pcDeck):T_pcDeck {
        this._deck = v;
        return v;
    }
    public function new(?_start:stdgo._internal.time.Time_Time.Time, ?_end:stdgo._internal.time.Time_Time.Time, ?_havePeriod:Bool, ?_period:haxe.Int64, ?_m:T_profMap, ?_w:stdgo._internal.io.Io_Writer.Writer, ?_zw:stdgo._internal.compress.gzip.Gzip_Writer.Writer, ?_pb:T_protobuf, ?_strings:Array<String>, ?_stringMap:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?_locs:stdgo.GoMap<stdgo.GoUIntptr, stdgo._internal.runtime.pprof.Pprof_T_locInfo.T_locInfo>, ?_funcs:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?_mem:Array<T_memMap>, ?_deck:T_pcDeck) this = new stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder(
_start,
_end,
_havePeriod,
_period,
_m,
_w,
_zw,
_pb,
([for (i in _strings) i] : stdgo.Slice<stdgo.GoString>),
_stringMap,
_locs,
_funcs,
([for (i in _mem) i] : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_memMap.T_memMap>),
_deck);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_memMap(stdgo._internal.runtime.pprof.Pprof_T_memMap.T_memMap) from stdgo._internal.runtime.pprof.Pprof_T_memMap.T_memMap to stdgo._internal.runtime.pprof.Pprof_T_memMap.T_memMap {
    public var _start(get, set) : stdgo.GoUIntptr;
    function get__start():stdgo.GoUIntptr return this._start;
    function set__start(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this._start = v;
        return v;
    }
    public var _end(get, set) : stdgo.GoUIntptr;
    function get__end():stdgo.GoUIntptr return this._end;
    function set__end(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this._end = v;
        return v;
    }
    public var _offset(get, set) : haxe.UInt64;
    function get__offset():haxe.UInt64 return this._offset;
    function set__offset(v:haxe.UInt64):haxe.UInt64 {
        this._offset = v;
        return v;
    }
    public var _file(get, set) : String;
    function get__file():String return this._file;
    function set__file(v:String):String {
        this._file = v;
        return v;
    }
    public var _buildID(get, set) : String;
    function get__buildID():String return this._buildID;
    function set__buildID(v:String):String {
        this._buildID = v;
        return v;
    }
    public var _funcs(get, set) : T_symbolizeFlag;
    function get__funcs():T_symbolizeFlag return this._funcs;
    function set__funcs(v:T_symbolizeFlag):T_symbolizeFlag {
        this._funcs = v;
        return v;
    }
    public var _fake(get, set) : Bool;
    function get__fake():Bool return this._fake;
    function set__fake(v:Bool):Bool {
        this._fake = v;
        return v;
    }
    public function new(?_start:stdgo.GoUIntptr, ?_end:stdgo.GoUIntptr, ?_offset:haxe.UInt64, ?_file:String, ?_buildID:String, ?_funcs:T_symbolizeFlag, ?_fake:Bool) this = new stdgo._internal.runtime.pprof.Pprof_T_memMap.T_memMap(_start, _end, _offset, _file, _buildID, _funcs, _fake);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_locInfo(stdgo._internal.runtime.pprof.Pprof_T_locInfo.T_locInfo) from stdgo._internal.runtime.pprof.Pprof_T_locInfo.T_locInfo to stdgo._internal.runtime.pprof.Pprof_T_locInfo.T_locInfo {
    public var _id(get, set) : haxe.UInt64;
    function get__id():haxe.UInt64 return this._id;
    function set__id(v:haxe.UInt64):haxe.UInt64 {
        this._id = v;
        return v;
    }
    public var _pcs(get, set) : Array<stdgo.GoUIntptr>;
    function get__pcs():Array<stdgo.GoUIntptr> return [for (i in this._pcs) i];
    function set__pcs(v:Array<stdgo.GoUIntptr>):Array<stdgo.GoUIntptr> {
        this._pcs = ([for (i in v) i] : stdgo.Slice<stdgo.GoUIntptr>);
        return v;
    }
    public var _firstPCFrames(get, set) : Array<stdgo._internal.runtime.Runtime_Frame.Frame>;
    function get__firstPCFrames():Array<stdgo._internal.runtime.Runtime_Frame.Frame> return [for (i in this._firstPCFrames) i];
    function set__firstPCFrames(v:Array<stdgo._internal.runtime.Runtime_Frame.Frame>):Array<stdgo._internal.runtime.Runtime_Frame.Frame> {
        this._firstPCFrames = ([for (i in v) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_Frame.Frame>);
        return v;
    }
    public var _firstPCSymbolizeResult(get, set) : T_symbolizeFlag;
    function get__firstPCSymbolizeResult():T_symbolizeFlag return this._firstPCSymbolizeResult;
    function set__firstPCSymbolizeResult(v:T_symbolizeFlag):T_symbolizeFlag {
        this._firstPCSymbolizeResult = v;
        return v;
    }
    public function new(?_id:haxe.UInt64, ?_pcs:Array<stdgo.GoUIntptr>, ?_firstPCFrames:Array<stdgo._internal.runtime.Runtime_Frame.Frame>, ?_firstPCSymbolizeResult:T_symbolizeFlag) this = new stdgo._internal.runtime.pprof.Pprof_T_locInfo.T_locInfo(_id, ([for (i in _pcs) i] : stdgo.Slice<stdgo.GoUIntptr>), ([for (i in _firstPCFrames) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_Frame.Frame>), _firstPCSymbolizeResult);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.pprof.Pprof.T_pcDeck_static_extension) abstract T_pcDeck(stdgo._internal.runtime.pprof.Pprof_T_pcDeck.T_pcDeck) from stdgo._internal.runtime.pprof.Pprof_T_pcDeck.T_pcDeck to stdgo._internal.runtime.pprof.Pprof_T_pcDeck.T_pcDeck {
    public var _pcs(get, set) : Array<stdgo.GoUIntptr>;
    function get__pcs():Array<stdgo.GoUIntptr> return [for (i in this._pcs) i];
    function set__pcs(v:Array<stdgo.GoUIntptr>):Array<stdgo.GoUIntptr> {
        this._pcs = ([for (i in v) i] : stdgo.Slice<stdgo.GoUIntptr>);
        return v;
    }
    public var _frames(get, set) : Array<stdgo._internal.runtime.Runtime_Frame.Frame>;
    function get__frames():Array<stdgo._internal.runtime.Runtime_Frame.Frame> return [for (i in this._frames) i];
    function set__frames(v:Array<stdgo._internal.runtime.Runtime_Frame.Frame>):Array<stdgo._internal.runtime.Runtime_Frame.Frame> {
        this._frames = ([for (i in v) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_Frame.Frame>);
        return v;
    }
    public var _symbolizeResult(get, set) : T_symbolizeFlag;
    function get__symbolizeResult():T_symbolizeFlag return this._symbolizeResult;
    function set__symbolizeResult(v:T_symbolizeFlag):T_symbolizeFlag {
        this._symbolizeResult = v;
        return v;
    }
    public var _firstPCFrames(get, set) : StdTypes.Int;
    function get__firstPCFrames():StdTypes.Int return this._firstPCFrames;
    function set__firstPCFrames(v:StdTypes.Int):StdTypes.Int {
        this._firstPCFrames = v;
        return v;
    }
    public var _firstPCSymbolizeResult(get, set) : T_symbolizeFlag;
    function get__firstPCSymbolizeResult():T_symbolizeFlag return this._firstPCSymbolizeResult;
    function set__firstPCSymbolizeResult(v:T_symbolizeFlag):T_symbolizeFlag {
        this._firstPCSymbolizeResult = v;
        return v;
    }
    public function new(?_pcs:Array<stdgo.GoUIntptr>, ?_frames:Array<stdgo._internal.runtime.Runtime_Frame.Frame>, ?_symbolizeResult:T_symbolizeFlag, ?_firstPCFrames:StdTypes.Int, ?_firstPCSymbolizeResult:T_symbolizeFlag) this = new stdgo._internal.runtime.pprof.Pprof_T_pcDeck.T_pcDeck(([for (i in _pcs) i] : stdgo.Slice<stdgo.GoUIntptr>), ([for (i in _frames) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_Frame.Frame>), _symbolizeResult, _firstPCFrames, _firstPCSymbolizeResult);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.pprof.Pprof.T_protobuf_static_extension) abstract T_protobuf(stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf) from stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf to stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf {
    public var _data(get, set) : Array<std.UInt>;
    function get__data():Array<std.UInt> return [for (i in this._data) i];
    function set__data(v:Array<std.UInt>):Array<std.UInt> {
        this._data = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _tmp(get, set) : haxe.ds.Vector<std.UInt>;
    function get__tmp():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._tmp) i]);
    function set__tmp(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._tmp = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _nest(get, set) : StdTypes.Int;
    function get__nest():StdTypes.Int return this._nest;
    function set__nest(v:StdTypes.Int):StdTypes.Int {
        this._nest = v;
        return v;
    }
    public function new(?_data:Array<std.UInt>, ?_tmp:haxe.ds.Vector<std.UInt>, ?_nest:StdTypes.Int) this = new stdgo._internal.runtime.pprof.Pprof_T_protobuf.T_protobuf(([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _tmp) i] : stdgo.GoArray<stdgo.GoUInt8>), _nest);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.runtime.pprof.Pprof_T__struct_0.T__struct_0;
class T__struct_1_static_extension {
    public static function _unlockSlow(__self__:stdgo._internal.runtime.pprof.Pprof_T__struct_1.T__struct_1, __0:StdTypes.Int) {
        stdgo._internal.runtime.pprof.Pprof_T__struct_1_static_extension.T__struct_1_static_extension._unlockSlow(__self__, __0);
    }
    public static function _lockSlow(__self__:stdgo._internal.runtime.pprof.Pprof_T__struct_1.T__struct_1) {
        stdgo._internal.runtime.pprof.Pprof_T__struct_1_static_extension.T__struct_1_static_extension._lockSlow(__self__);
    }
    public static function unlock(__self__:stdgo._internal.runtime.pprof.Pprof_T__struct_1.T__struct_1) {
        stdgo._internal.runtime.pprof.Pprof_T__struct_1_static_extension.T__struct_1_static_extension.unlock(__self__);
    }
    public static function tryLock(__self__:stdgo._internal.runtime.pprof.Pprof_T__struct_1.T__struct_1):Bool {
        return stdgo._internal.runtime.pprof.Pprof_T__struct_1_static_extension.T__struct_1_static_extension.tryLock(__self__);
    }
    public static function lock(__self__:stdgo._internal.runtime.pprof.Pprof_T__struct_1.T__struct_1) {
        stdgo._internal.runtime.pprof.Pprof_T__struct_1_static_extension.T__struct_1_static_extension.lock(__self__);
    }
}
typedef T__struct_1 = stdgo._internal.runtime.pprof.Pprof_T__struct_1.T__struct_1;
typedef T_labelMap = stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap;
typedef T_stackProfile = stdgo._internal.runtime.pprof.Pprof_T_stackProfile.T_stackProfile;
typedef T_symbolizeFlag = stdgo._internal.runtime.pprof.Pprof_T_symbolizeFlag.T_symbolizeFlag;
typedef T_msgOffset = stdgo._internal.runtime.pprof.Pprof_T_msgOffset.T_msgOffset;
class T_profMap_static_extension {
    static public function _lookup(_m:T_profMap, _stk:Array<haxe.UInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):T_profMapEntry {
        final _stk = ([for (i in _stk) i] : stdgo.Slice<stdgo.GoUInt64>);
        return stdgo._internal.runtime.pprof.Pprof_T_profMap_static_extension.T_profMap_static_extension._lookup(_m, _stk, _tag);
    }
}
class Profile_static_extension {
    static public function writeTo(_p:Profile, _w:stdgo._internal.io.Io_Writer.Writer, _debug:StdTypes.Int):stdgo.Error {
        return stdgo._internal.runtime.pprof.Pprof_Profile_static_extension.Profile_static_extension.writeTo(_p, _w, _debug);
    }
    static public function remove(_p:Profile, _value:stdgo.AnyInterface):Void {
        stdgo._internal.runtime.pprof.Pprof_Profile_static_extension.Profile_static_extension.remove(_p, _value);
    }
    static public function add(_p:Profile, _value:stdgo.AnyInterface, _skip:StdTypes.Int):Void {
        stdgo._internal.runtime.pprof.Pprof_Profile_static_extension.Profile_static_extension.add(_p, _value, _skip);
    }
    static public function count(_p:Profile):StdTypes.Int {
        return stdgo._internal.runtime.pprof.Pprof_Profile_static_extension.Profile_static_extension.count(_p);
    }
    static public function name(_p:Profile):String {
        return stdgo._internal.runtime.pprof.Pprof_Profile_static_extension.Profile_static_extension.name(_p);
    }
}
class T_keysByCount_static_extension {
    static public function less(_x:T_keysByCount, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        return stdgo._internal.runtime.pprof.Pprof_T_keysByCount_static_extension.T_keysByCount_static_extension.less(_x, _i, _j);
    }
    static public function swap(_x:T_keysByCount, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        stdgo._internal.runtime.pprof.Pprof_T_keysByCount_static_extension.T_keysByCount_static_extension.swap(_x, _i, _j);
    }
    static public function len(_x:T_keysByCount):StdTypes.Int {
        return stdgo._internal.runtime.pprof.Pprof_T_keysByCount_static_extension.T_keysByCount_static_extension.len(_x);
    }
}
class T_runtimeProfile_static_extension {
    static public function label(_p:T_runtimeProfile, _i:StdTypes.Int):T_labelMap {
        return stdgo._internal.runtime.pprof.Pprof_T_runtimeProfile_static_extension.T_runtimeProfile_static_extension.label(_p, _i);
    }
    static public function stack(_p:T_runtimeProfile, _i:StdTypes.Int):Array<stdgo.GoUIntptr> {
        return [for (i in stdgo._internal.runtime.pprof.Pprof_T_runtimeProfile_static_extension.T_runtimeProfile_static_extension.stack(_p, _i)) i];
    }
    static public function len(_p:T_runtimeProfile):StdTypes.Int {
        return stdgo._internal.runtime.pprof.Pprof_T_runtimeProfile_static_extension.T_runtimeProfile_static_extension.len(_p);
    }
}
class T_profileBuilder_static_extension {
    static public function _readMapping(_b:T_profileBuilder):Void {
        stdgo._internal.runtime.pprof.Pprof_T_profileBuilder_static_extension.T_profileBuilder_static_extension._readMapping(_b);
    }
    static public function _addMappingEntry(_b:T_profileBuilder, _lo:haxe.UInt64, _hi:haxe.UInt64, _offset:haxe.UInt64, _file:String, _buildID:String, _fake:Bool):Void {
        stdgo._internal.runtime.pprof.Pprof_T_profileBuilder_static_extension.T_profileBuilder_static_extension._addMappingEntry(_b, _lo, _hi, _offset, _file, _buildID, _fake);
    }
    static public function _addMapping(_b:T_profileBuilder, _lo:haxe.UInt64, _hi:haxe.UInt64, _offset:haxe.UInt64, _file:String, _buildID:String):Void {
        stdgo._internal.runtime.pprof.Pprof_T_profileBuilder_static_extension.T_profileBuilder_static_extension._addMapping(_b, _lo, _hi, _offset, _file, _buildID);
    }
    static public function _emitLocation(_b:T_profileBuilder):haxe.UInt64 {
        return stdgo._internal.runtime.pprof.Pprof_T_profileBuilder_static_extension.T_profileBuilder_static_extension._emitLocation(_b);
    }
    static public function _appendLocsForStack(_b:T_profileBuilder, _locs:Array<haxe.UInt64>, _stk:Array<stdgo.GoUIntptr>):Array<haxe.UInt64> {
        final _locs = ([for (i in _locs) i] : stdgo.Slice<stdgo.GoUInt64>);
        final _stk = ([for (i in _stk) i] : stdgo.Slice<stdgo.GoUIntptr>);
        return [for (i in stdgo._internal.runtime.pprof.Pprof_T_profileBuilder_static_extension.T_profileBuilder_static_extension._appendLocsForStack(_b, _locs, _stk)) i];
    }
    static public function _build(_b:T_profileBuilder):Void {
        stdgo._internal.runtime.pprof.Pprof_T_profileBuilder_static_extension.T_profileBuilder_static_extension._build(_b);
    }
    static public function _addCPUData(_b:T_profileBuilder, _data:Array<haxe.UInt64>, _tags:Array<stdgo._internal.unsafe.Unsafe.UnsafePointer>):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt64>);
        final _tags = ([for (i in _tags) i] : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>);
        return stdgo._internal.runtime.pprof.Pprof_T_profileBuilder_static_extension.T_profileBuilder_static_extension._addCPUData(_b, _data, _tags);
    }
    static public function _pbMapping(_b:T_profileBuilder, _tag:StdTypes.Int, _id:haxe.UInt64, _base:haxe.UInt64, _limit:haxe.UInt64, _offset:haxe.UInt64, _file:String, _buildID:String, _hasFuncs:Bool):Void {
        stdgo._internal.runtime.pprof.Pprof_T_profileBuilder_static_extension.T_profileBuilder_static_extension._pbMapping(_b, _tag, _id, _base, _limit, _offset, _file, _buildID, _hasFuncs);
    }
    static public function _pbLine(_b:T_profileBuilder, _tag:StdTypes.Int, _funcID:haxe.UInt64, _line:haxe.Int64):Void {
        stdgo._internal.runtime.pprof.Pprof_T_profileBuilder_static_extension.T_profileBuilder_static_extension._pbLine(_b, _tag, _funcID, _line);
    }
    static public function _pbLabel(_b:T_profileBuilder, _tag:StdTypes.Int, _key:String, _str:String, _num:haxe.Int64):Void {
        stdgo._internal.runtime.pprof.Pprof_T_profileBuilder_static_extension.T_profileBuilder_static_extension._pbLabel(_b, _tag, _key, _str, _num);
    }
    static public function _pbSample(_b:T_profileBuilder, _values:Array<haxe.Int64>, _locs:Array<haxe.UInt64>, _labels:() -> Void):Void {
        final _values = ([for (i in _values) i] : stdgo.Slice<stdgo.GoInt64>);
        final _locs = ([for (i in _locs) i] : stdgo.Slice<stdgo.GoUInt64>);
        final _labels = _labels;
        stdgo._internal.runtime.pprof.Pprof_T_profileBuilder_static_extension.T_profileBuilder_static_extension._pbSample(_b, _values, _locs, _labels);
    }
    static public function _pbValueType(_b:T_profileBuilder, _tag:StdTypes.Int, _typ:String, _unit:String):Void {
        stdgo._internal.runtime.pprof.Pprof_T_profileBuilder_static_extension.T_profileBuilder_static_extension._pbValueType(_b, _tag, _typ, _unit);
    }
    static public function _flush(_b:T_profileBuilder):Void {
        stdgo._internal.runtime.pprof.Pprof_T_profileBuilder_static_extension.T_profileBuilder_static_extension._flush(_b);
    }
    static public function _stringIndex(_b:T_profileBuilder, _s:String):haxe.Int64 {
        return stdgo._internal.runtime.pprof.Pprof_T_profileBuilder_static_extension.T_profileBuilder_static_extension._stringIndex(_b, _s);
    }
}
@:structInit abstract T__emitLocation___localname___newFunc_20332(stdgo._internal.runtime.pprof.Pprof_T__emitLocation___localname___newFunc_20332.T__emitLocation___localname___newFunc_20332) from stdgo._internal.runtime.pprof.Pprof_T__emitLocation___localname___newFunc_20332.T__emitLocation___localname___newFunc_20332 to stdgo._internal.runtime.pprof.Pprof_T__emitLocation___localname___newFunc_20332.T__emitLocation___localname___newFunc_20332 {
    public var _id(get, set) : haxe.UInt64;
    function get__id():haxe.UInt64 return this._id;
    function set__id(v:haxe.UInt64):haxe.UInt64 {
        this._id = v;
        return v;
    }
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = v;
        return v;
    }
    public var _file(get, set) : String;
    function get__file():String return this._file;
    function set__file(v:String):String {
        this._file = v;
        return v;
    }
    public var _startLine(get, set) : haxe.Int64;
    function get__startLine():haxe.Int64 return this._startLine;
    function set__startLine(v:haxe.Int64):haxe.Int64 {
        this._startLine = v;
        return v;
    }
    public function new(?_id:haxe.UInt64, ?_name:String, ?_file:String, ?_startLine:haxe.Int64) this = new stdgo._internal.runtime.pprof.Pprof_T__emitLocation___localname___newFunc_20332.T__emitLocation___localname___newFunc_20332(_id, _name, _file, _startLine);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T_pcDeck_static_extension {
    static public function _tryAdd(_d:T_pcDeck, _pc:stdgo.GoUIntptr, _frames:Array<stdgo._internal.runtime.Runtime_Frame.Frame>, _symbolizeResult:T_symbolizeFlag):Bool {
        final _frames = ([for (i in _frames) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_Frame.Frame>);
        return stdgo._internal.runtime.pprof.Pprof_T_pcDeck_static_extension.T_pcDeck_static_extension._tryAdd(_d, _pc, _frames, _symbolizeResult);
    }
    static public function _reset(_d:T_pcDeck):Void {
        stdgo._internal.runtime.pprof.Pprof_T_pcDeck_static_extension.T_pcDeck_static_extension._reset(_d);
    }
}
class T_protobuf_static_extension {
    static public function _endMessage(_b:T_protobuf, _tag:StdTypes.Int, _start:T_msgOffset):Void {
        stdgo._internal.runtime.pprof.Pprof_T_protobuf_static_extension.T_protobuf_static_extension._endMessage(_b, _tag, _start);
    }
    static public function _startMessage(_b:T_protobuf):T_msgOffset {
        return stdgo._internal.runtime.pprof.Pprof_T_protobuf_static_extension.T_protobuf_static_extension._startMessage(_b);
    }
    static public function _boolOpt(_b:T_protobuf, _tag:StdTypes.Int, _x:Bool):Void {
        stdgo._internal.runtime.pprof.Pprof_T_protobuf_static_extension.T_protobuf_static_extension._boolOpt(_b, _tag, _x);
    }
    static public function _bool(_b:T_protobuf, _tag:StdTypes.Int, _x:Bool):Void {
        stdgo._internal.runtime.pprof.Pprof_T_protobuf_static_extension.T_protobuf_static_extension._bool(_b, _tag, _x);
    }
    static public function _stringOpt(_b:T_protobuf, _tag:StdTypes.Int, _x:String):Void {
        stdgo._internal.runtime.pprof.Pprof_T_protobuf_static_extension.T_protobuf_static_extension._stringOpt(_b, _tag, _x);
    }
    static public function _strings(_b:T_protobuf, _tag:StdTypes.Int, _x:Array<String>):Void {
        final _x = ([for (i in _x) i] : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.runtime.pprof.Pprof_T_protobuf_static_extension.T_protobuf_static_extension._strings(_b, _tag, _x);
    }
    static public function _string(_b:T_protobuf, _tag:StdTypes.Int, _x:String):Void {
        stdgo._internal.runtime.pprof.Pprof_T_protobuf_static_extension.T_protobuf_static_extension._string(_b, _tag, _x);
    }
    static public function _int64s(_b:T_protobuf, _tag:StdTypes.Int, _x:Array<haxe.Int64>):Void {
        final _x = ([for (i in _x) i] : stdgo.Slice<stdgo.GoInt64>);
        stdgo._internal.runtime.pprof.Pprof_T_protobuf_static_extension.T_protobuf_static_extension._int64s(_b, _tag, _x);
    }
    static public function _int64Opt(_b:T_protobuf, _tag:StdTypes.Int, _x:haxe.Int64):Void {
        stdgo._internal.runtime.pprof.Pprof_T_protobuf_static_extension.T_protobuf_static_extension._int64Opt(_b, _tag, _x);
    }
    static public function _int64(_b:T_protobuf, _tag:StdTypes.Int, _x:haxe.Int64):Void {
        stdgo._internal.runtime.pprof.Pprof_T_protobuf_static_extension.T_protobuf_static_extension._int64(_b, _tag, _x);
    }
    static public function _uint64Opt(_b:T_protobuf, _tag:StdTypes.Int, _x:haxe.UInt64):Void {
        stdgo._internal.runtime.pprof.Pprof_T_protobuf_static_extension.T_protobuf_static_extension._uint64Opt(_b, _tag, _x);
    }
    static public function _uint64s(_b:T_protobuf, _tag:StdTypes.Int, _x:Array<haxe.UInt64>):Void {
        final _x = ([for (i in _x) i] : stdgo.Slice<stdgo.GoUInt64>);
        stdgo._internal.runtime.pprof.Pprof_T_protobuf_static_extension.T_protobuf_static_extension._uint64s(_b, _tag, _x);
    }
    static public function _uint64(_b:T_protobuf, _tag:StdTypes.Int, _x:haxe.UInt64):Void {
        stdgo._internal.runtime.pprof.Pprof_T_protobuf_static_extension.T_protobuf_static_extension._uint64(_b, _tag, _x);
    }
    static public function _length(_b:T_protobuf, _tag:StdTypes.Int, _len:StdTypes.Int):Void {
        stdgo._internal.runtime.pprof.Pprof_T_protobuf_static_extension.T_protobuf_static_extension._length(_b, _tag, _len);
    }
    static public function _varint(_b:T_protobuf, _x:haxe.UInt64):Void {
        stdgo._internal.runtime.pprof.Pprof_T_protobuf_static_extension.T_protobuf_static_extension._varint(_b, _x);
    }
}
class T_labelMap_static_extension {
    static public function string(_l:T_labelMap):String {
        return stdgo._internal.runtime.pprof.Pprof_T_labelMap_static_extension.T_labelMap_static_extension.string(_l);
    }
}
class T_stackProfile_static_extension {
    static public function label(_x:T_stackProfile, _i:StdTypes.Int):T_labelMap {
        return stdgo._internal.runtime.pprof.Pprof_T_stackProfile_static_extension.T_stackProfile_static_extension.label(_x, _i);
    }
    static public function stack(_x:T_stackProfile, _i:StdTypes.Int):Array<stdgo.GoUIntptr> {
        return [for (i in stdgo._internal.runtime.pprof.Pprof_T_stackProfile_static_extension.T_stackProfile_static_extension.stack(_x, _i)) i];
    }
    static public function len(_x:T_stackProfile):StdTypes.Int {
        return stdgo._internal.runtime.pprof.Pprof_T_stackProfile_static_extension.T_stackProfile_static_extension.len(_x);
    }
}
/**
    /|*{
    	h_3891226 = uintptr(0)
    	if 0 < len(stk) {
    		gotoNext = 3891339
    		_ = gotoNext == 3891339
    		i_3891255_0, x_3891250 = 0, stk[0]
    		gotoNext = 3891340
    		_ = gotoNext == 3891340
    		if i_3891255_0 < len(stk) {
    			gotoNext = 3891265
    			_ = gotoNext == 3891265
    			x_3891250 = stk[i_3891255_0]
    			h_3891226 = h_3891226<<8 | (h_3891226 >> 24)
    			h_3891226 += uintptr(x_3891250) * 41
    			i_3891255_0++
    			gotoNext = 3891340
    		} else {
    			gotoNext = 3891343
    		}
    		gotoNext = 3891343
    	} else {
    		gotoNext = 3891343
    	}
    	_ = gotoNext == 3891343
    	h_3891226 = h_3891226<<8 | (h_3891226 >> 24)
    	h_3891226 += uintptr(tag) * 41
    	gotoNext = 3891466
    	_ = gotoNext == 3891466
    	e_3891479 = m.hash[h_3891226]
    	SearchBreak = false
    	gotoNext = 3891475
    	_ = gotoNext == 3891475
    	if !SearchBreak && (e_3891479 != nil) {
    		gotoNext = 3891529
    		_ = gotoNext == 3891529
    		if len(e_3891479.stk) != len(stk) || e_3891479.tag != tag {
    			gotoNext = 3891575
    			_ = gotoNext == 3891575
    			last_3891447, e_3891479 = e_3891479, e_3891479.nextHash
    			gotoNext = 3891475
    			gotoNext = 3891595
    		} else {
    			gotoNext = 3891595
    		}
    		_ = gotoNext == 3891595
    		if 0 < len(stk) {
    			gotoNext = 3891678
    			_ = gotoNext == 3891678
    			j_3891599 = 0
    			gotoNext = 3891679
    			_ = gotoNext == 3891679
    			if j_3891599 < len(stk) {
    				gotoNext = 3891614
    				_ = gotoNext == 3891614
    				if e_3891479.stk[j_3891599] != uintptr(stk[j_3891599]) {
    					gotoNext = 3891650
    					_ = gotoNext == 3891650
    					last_3891447, e_3891479 = e_3891479, e_3891479.nextHash
    					gotoNext = 3891475
    					gotoNext = 3891599
    				} else {
    					gotoNext = 3891599
    				}
    				_ = gotoNext == 3891599
    				j_3891599++
    				gotoNext = 3891679
    			} else {
    				gotoNext = 3891703
    			}
    			gotoNext = 3891703
    		} else {
    			gotoNext = 3891703
    		}
    		_ = gotoNext == 3891703
    		if last_3891447 != nil {
    			gotoNext = 3891718
    			_ = gotoNext == 3891718
    			last_3891447.nextHash = e_3891479.nextHash
    			e_3891479.nextHash = m.hash[h_3891226]
    			m.hash[h_3891226] = e_3891479
    			gotoNext = 3891799
    		} else {
    			gotoNext = 3891799
    		}
    		_ = gotoNext == 3891799
    		return e_3891479
    		last_3891447, e_3891479 = e_3891479, e_3891479.nextHash
    		gotoNext = 3891475
    	} else {
    		gotoNext = 3891832
    	}
    	_ = gotoNext == 3891832
    	if len(m.free) < 1 {
    		gotoNext = 3891851
    		_ = gotoNext == 3891851
    		m.free = make([]profMapEntry, 128)
    		gotoNext = 3891894
    	} else {
    		gotoNext = 3891894
    	}
    	_ = gotoNext == 3891894
    	e_3891894 = &m.free[0]
    	m.free = m.free[1:]
    	e_3891894.nextHash = m.hash[h_3891226]
    	e_3891894.tag = tag
    	if len(m.freeStk) < len(stk) {
    		gotoNext = 3891999
    		_ = gotoNext == 3891999
    		m.freeStk = make([]uintptr, 1024)
    		gotoNext = 3892098
    	} else {
    		gotoNext = 3892098
    	}
    	_ = gotoNext == 3892098
    	e_3891894.stk = m.freeStk[:len(stk):len(stk)]
    	m.freeStk = m.freeStk[len(stk):]
    	if 0 < len(stk) {
    		gotoNext = 3892222
    		_ = gotoNext == 3892222
    		j_3892176 = 0
    		gotoNext = 3892223
    		_ = gotoNext == 3892223
    		if j_3892176 < len(stk) {
    			gotoNext = 3892191
    			_ = gotoNext == 3892191
    			e_3891894.stk[j_3892176] = uintptr(stk[j_3892176])
    			j_3892176++
    			gotoNext = 3892223
    		} else {
    			gotoNext = 3892226
    		}
    		gotoNext = 3892226
    	} else {
    		gotoNext = 3892226
    	}
    	_ = gotoNext == 3892226
    	if m.hash == nil {
    		gotoNext = 3892243
    		_ = gotoNext == 3892243
    		m.hash = make(map[uintptr]*profMapEntry)
    		gotoNext = 3892292
    	} else {
    		gotoNext = 3892292
    	}
    	_ = gotoNext == 3892292
    	m.hash[h_3891226] = e_3891894
    	if m.all == nil {
    		gotoNext = 3892323
    		_ = gotoNext == 3892323
    		m.all = e_3891894
    		m.last = e_3891894
    		gotoNext = 3892398
    	} else {
    		gotoNext = 3892358
    		_ = gotoNext == 3892358
    		gotoNext = 3892358
    		_ = gotoNext == 3892358
    		m.last.nextAll = e_3891894
    		m.last = e_3891894
    		_ = 0
    		gotoNext = 3892398
    	}
    	_ = gotoNext == 3892398
    	return e_3891894
    	gotoNext = -1
    }*|/
**/
class Pprof {
    /**
        WithLabels returns a new context.Context with the given labels added.
        A label overwrites a prior label with the same key.
    **/
    static public function withLabels(_ctx:stdgo._internal.context.Context_Context.Context, _labels:LabelSet):stdgo._internal.context.Context_Context.Context {
        return stdgo._internal.runtime.pprof.Pprof_withLabels.withLabels(_ctx, _labels);
    }
    /**
        Labels takes an even number of strings representing key-value pairs
        and makes a LabelSet containing them.
        A label overwrites a prior label with the same key.
        Currently only the CPU and goroutine profiles utilize any labels
        information.
        See https://golang.org/issue/23458 for details.
    **/
    static public function labels(_args:haxe.Rest<String>):LabelSet {
        return stdgo._internal.runtime.pprof.Pprof_labels.labels(...[for (i in _args) i]);
    }
    /**
        Label returns the value of the label with the given key on ctx, and a boolean indicating
        whether that label exists.
    **/
    static public function label(_ctx:stdgo._internal.context.Context_Context.Context, _key:String):stdgo.Tuple<String, Bool> {
        return {
            final obj = stdgo._internal.runtime.pprof.Pprof_label.label(_ctx, _key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ForLabels invokes f with each label set on the context.
        The function f should return true to continue iteration or false to stop iteration early.
    **/
    static public function forLabels(_ctx:stdgo._internal.context.Context_Context.Context, _f:(stdgo.GoString, stdgo.GoString) -> Bool):Void {
        final _f = _f;
        stdgo._internal.runtime.pprof.Pprof_forLabels.forLabels(_ctx, _f);
    }
    /**
        NewProfile creates a new profile with the given name.
        If a profile with that name already exists, NewProfile panics.
        The convention is to use a 'import/path.' prefix to create
        separate name spaces for each package.
        For compatibility with various tools that read pprof data,
        profile names should not contain spaces.
    **/
    static public function newProfile(_name:String):Profile {
        return stdgo._internal.runtime.pprof.Pprof_newProfile.newProfile(_name);
    }
    /**
        Lookup returns the profile with the given name, or nil if no such profile exists.
    **/
    static public function lookup(_name:String):Profile {
        return stdgo._internal.runtime.pprof.Pprof_lookup.lookup(_name);
    }
    /**
        Profiles returns a slice of all the known profiles, sorted by name.
    **/
    static public function profiles():Array<Profile> {
        return [for (i in stdgo._internal.runtime.pprof.Pprof_profiles.profiles()) i];
    }
    /**
        WriteHeapProfile is shorthand for Lookup("heap").WriteTo(w, 0).
        It is preserved for backwards compatibility.
    **/
    static public function writeHeapProfile(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        return stdgo._internal.runtime.pprof.Pprof_writeHeapProfile.writeHeapProfile(_w);
    }
    /**
        StartCPUProfile enables CPU profiling for the current process.
        While profiling, the profile will be buffered and written to w.
        StartCPUProfile returns an error if profiling is already enabled.
        
        On Unix-like systems, StartCPUProfile does not work by default for
        Go code built with -buildmode=c-archive or -buildmode=c-shared.
        StartCPUProfile relies on the SIGPROF signal, but that signal will
        be delivered to the main program's SIGPROF signal handler (if any)
        not to the one used by Go. To make it work, call os/signal.Notify
        for syscall.SIGPROF, but note that doing so may break any profiling
        being done by the main program.
    **/
    static public function startCPUProfile(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        return stdgo._internal.runtime.pprof.Pprof_startCPUProfile.startCPUProfile(_w);
    }
    /**
        StopCPUProfile stops the current CPU profile, if any.
        StopCPUProfile only returns after all the writes for the
        profile have completed.
    **/
    static public function stopCPUProfile():Void {
        stdgo._internal.runtime.pprof.Pprof_stopCPUProfile.stopCPUProfile();
    }
    /**
        SetGoroutineLabels sets the current goroutine's labels to match ctx.
        A new goroutine inherits the labels of the goroutine that created it.
        This is a lower-level API than Do, which should be used instead when possible.
    **/
    static public function setGoroutineLabels(_ctx:stdgo._internal.context.Context_Context.Context):Void {
        stdgo._internal.runtime.pprof.Pprof_setGoroutineLabels.setGoroutineLabels(_ctx);
    }
    /**
        Do calls f with a copy of the parent context with the
        given labels added to the parent's label map.
        Goroutines spawned while executing f will inherit the augmented label-set.
        Each key/value pair in labels is inserted into the label map in the
        order provided, overriding any previous value for the same key.
        The augmented label map will be set for the duration of the call to f
        and restored once f returns.
    **/
    static public function do_(_ctx:stdgo._internal.context.Context_Context.Context, _labels:LabelSet, _f:stdgo._internal.context.Context_Context.Context -> Void):Void {
        final _f = _f;
        stdgo._internal.runtime.pprof.Pprof_do_.do_(_ctx, _labels, _f);
    }
}
