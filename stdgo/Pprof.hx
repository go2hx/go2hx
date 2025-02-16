package stdgo;
@:dox(hide) class T_countProfile_static_extension {
    static public function label(t:stdgo._internal.runtime.pprof.Pprof_t_countprofile.T_countProfile, _i:StdTypes.Int):T_labelMap {
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.runtime.pprof.Pprof_t_countprofile_static_extension.T_countProfile_static_extension.label(t, _i);
    }
    static public function stack(t:stdgo._internal.runtime.pprof.Pprof_t_countprofile.T_countProfile, _i:StdTypes.Int):Array<stdgo.GoUIntptr> {
        final _i = (_i : stdgo.GoInt);
        return [for (i in stdgo._internal.runtime.pprof.Pprof_t_countprofile_static_extension.T_countProfile_static_extension.stack(t, _i)) i];
    }
    static public function len(t:stdgo._internal.runtime.pprof.Pprof_t_countprofile.T_countProfile):StdTypes.Int {
        return stdgo._internal.runtime.pprof.Pprof_t_countprofile_static_extension.T_countProfile_static_extension.len(t);
    }
}
@:dox(hide) @:forward abstract T_countProfile(stdgo._internal.runtime.pprof.Pprof_t_countprofile.T_countProfile) from stdgo._internal.runtime.pprof.Pprof_t_countprofile.T_countProfile to stdgo._internal.runtime.pprof.Pprof_t_countprofile.T_countProfile {
    @:from
    static function fromHaxeInterface(x:{ function len():StdTypes.Int; function stack(_i:StdTypes.Int):Array<stdgo.GoUIntptr>; function label(_i:StdTypes.Int):T_labelMap; }):T_countProfile {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_countProfile = { len : () -> x.len(), stack : _0 -> x.stack(_0), label : _0 -> x.label(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.runtime.pprof.Pprof.T_label_static_extension) @:dox(hide) abstract T_label(stdgo._internal.runtime.pprof.Pprof_t_label.T_label) from stdgo._internal.runtime.pprof.Pprof_t_label.T_label to stdgo._internal.runtime.pprof.Pprof_t_label.T_label {
    public var _key(get, set) : String;
    function get__key():String return this._key;
    function set__key(v:String):String {
        this._key = (v : stdgo.GoString);
        return v;
    }
    public var _value(get, set) : String;
    function get__value():String return this._value;
    function set__value(v:String):String {
        this._value = (v : stdgo.GoString);
        return v;
    }
    public function new(?_key:String, ?_value:String) this = new stdgo._internal.runtime.pprof.Pprof_t_label.T_label((_key : stdgo.GoString), (_value : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.pprof.Pprof.LabelSet_static_extension) abstract LabelSet(stdgo._internal.runtime.pprof.Pprof_labelset.LabelSet) from stdgo._internal.runtime.pprof.Pprof_labelset.LabelSet to stdgo._internal.runtime.pprof.Pprof_labelset.LabelSet {
    public var _list(get, set) : Array<T_label>;
    function get__list():Array<T_label> return [for (i in this._list) i];
    function set__list(v:Array<T_label>):Array<T_label> {
        this._list = ([for (i in v) i] : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_label.T_label>);
        return v;
    }
    public function new(?_list:Array<T_label>) this = new stdgo._internal.runtime.pprof.Pprof_labelset.LabelSet(([for (i in _list) i] : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_label.T_label>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.pprof.Pprof.T_labelContextKey_static_extension) @:dox(hide) abstract T_labelContextKey(stdgo._internal.runtime.pprof.Pprof_t_labelcontextkey.T_labelContextKey) from stdgo._internal.runtime.pprof.Pprof_t_labelcontextkey.T_labelContextKey to stdgo._internal.runtime.pprof.Pprof_t_labelcontextkey.T_labelContextKey {
    public function new() this = new stdgo._internal.runtime.pprof.Pprof_t_labelcontextkey.T_labelContextKey();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.pprof.Pprof.T_profMap_static_extension) @:dox(hide) abstract T_profMap(stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap) from stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap to stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap {
    public var _hash(get, set) : Map<stdgo.GoUIntptr, T_profMapEntry>;
    function get__hash():Map<stdgo.GoUIntptr, T_profMapEntry> return {
        final __obj__:Map<stdgo.GoUIntptr, T_profMapEntry> = [];
        for (key => value in this._hash) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__hash(v:Map<stdgo.GoUIntptr, T_profMapEntry>):Map<stdgo.GoUIntptr, T_profMapEntry> {
        this._hash = {
            final __obj__ = new stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoUIntptr)] = (value : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
            };
            __obj__;
        };
        return v;
    }
    public var _all(get, set) : T_profMapEntry;
    function get__all():T_profMapEntry return this._all;
    function set__all(v:T_profMapEntry):T_profMapEntry {
        this._all = (v : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        return v;
    }
    public var _last(get, set) : T_profMapEntry;
    function get__last():T_profMapEntry return this._last;
    function set__last(v:T_profMapEntry):T_profMapEntry {
        this._last = (v : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        return v;
    }
    public var _free(get, set) : Array<T_profMapEntry>;
    function get__free():Array<T_profMapEntry> return [for (i in this._free) i];
    function set__free(v:Array<T_profMapEntry>):Array<T_profMapEntry> {
        this._free = ([for (i in v) i] : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        return v;
    }
    public var _freeStk(get, set) : Array<stdgo.GoUIntptr>;
    function get__freeStk():Array<stdgo.GoUIntptr> return [for (i in this._freeStk) i];
    function set__freeStk(v:Array<stdgo.GoUIntptr>):Array<stdgo.GoUIntptr> {
        this._freeStk = ([for (i in v) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>);
        return v;
    }
    public function new(?_hash:Map<stdgo.GoUIntptr, T_profMapEntry>, ?_all:T_profMapEntry, ?_last:T_profMapEntry, ?_free:Array<T_profMapEntry>, ?_freeStk:Array<stdgo.GoUIntptr>) this = new stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap({
        final __obj__ = new stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>();
        for (key => value in _hash) {
            __obj__[(key : stdgo.GoUIntptr)] = (value : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        };
        __obj__;
    }, (_all : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>), (_last : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>), ([for (i in _free) i] : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>), ([for (i in _freeStk) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.pprof.Pprof.T_profMapEntry_static_extension) @:dox(hide) abstract T_profMapEntry(stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry) from stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry to stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry {
    public var _nextHash(get, set) : T_profMapEntry;
    function get__nextHash():T_profMapEntry return this._nextHash;
    function set__nextHash(v:T_profMapEntry):T_profMapEntry {
        this._nextHash = (v : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        return v;
    }
    public var _nextAll(get, set) : T_profMapEntry;
    function get__nextAll():T_profMapEntry return this._nextAll;
    function set__nextAll(v:T_profMapEntry):T_profMapEntry {
        this._nextAll = (v : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        return v;
    }
    public var _stk(get, set) : Array<stdgo.GoUIntptr>;
    function get__stk():Array<stdgo.GoUIntptr> return [for (i in this._stk) i];
    function set__stk(v:Array<stdgo.GoUIntptr>):Array<stdgo.GoUIntptr> {
        this._stk = ([for (i in v) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>);
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
        this._count = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_nextHash:T_profMapEntry, ?_nextAll:T_profMapEntry, ?_stk:Array<stdgo.GoUIntptr>, ?_tag:stdgo._internal.unsafe.Unsafe.UnsafePointer, ?_count:haxe.Int64) this = new stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry((_nextHash : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>), (_nextAll : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>), ([for (i in _stk) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>), _tag, (_count : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.pprof.Pprof.Profile_static_extension) abstract Profile(stdgo._internal.runtime.pprof.Pprof_profile.Profile) from stdgo._internal.runtime.pprof.Pprof_profile.Profile to stdgo._internal.runtime.pprof.Pprof_profile.Profile {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _m(get, set) : Map<stdgo.AnyInterface, Array<stdgo.GoUIntptr>>;
    function get__m():Map<stdgo.AnyInterface, Array<stdgo.GoUIntptr>> return {
        final __obj__:Map<stdgo.AnyInterface, Array<stdgo.GoUIntptr>> = [];
        for (key => value in this._m) {
            __obj__[key] = [for (i in value) i];
        };
        __obj__;
    };
    function set__m(v:Map<stdgo.AnyInterface, Array<stdgo.GoUIntptr>>):Map<stdgo.AnyInterface, Array<stdgo.GoUIntptr>> {
        this._m = {
            final __obj__ = new stdgo.GoMap<stdgo.AnyInterface, stdgo.Slice<stdgo.GoUIntptr>>();
            for (key => value in v) {
                __obj__[(key : stdgo.AnyInterface)] = ([for (i in value) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>);
            };
            __obj__;
        };
        return v;
    }
    public var _count(get, set) : () -> StdTypes.Int;
    function get__count():() -> StdTypes.Int return () -> this._count();
    function set__count(v:() -> StdTypes.Int):() -> StdTypes.Int {
        this._count = v;
        return v;
    }
    public var _write(get, set) : (stdgo._internal.io.Io_writer.Writer, StdTypes.Int) -> stdgo.Error;
    function get__write():(stdgo._internal.io.Io_writer.Writer, StdTypes.Int) -> stdgo.Error return (_0, _1) -> this._write(_0, _1);
    function set__write(v:(stdgo._internal.io.Io_writer.Writer, StdTypes.Int) -> stdgo.Error):(stdgo._internal.io.Io_writer.Writer, StdTypes.Int) -> stdgo.Error {
        this._write = v;
        return v;
    }
    public function new(?_name:String, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_m:Map<stdgo.AnyInterface, Array<stdgo.GoUIntptr>>, ?_count:() -> StdTypes.Int, ?_write:(stdgo._internal.io.Io_writer.Writer, StdTypes.Int) -> stdgo.Error) this = new stdgo._internal.runtime.pprof.Pprof_profile.Profile((_name : stdgo.GoString), _mu, {
        final __obj__ = new stdgo.GoMap<stdgo.AnyInterface, stdgo.Slice<stdgo.GoUIntptr>>();
        for (key => value in _m) {
            __obj__[(key : stdgo.AnyInterface)] = ([for (i in value) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>);
        };
        __obj__;
    }, _count, _write);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.pprof.Pprof.T_keysByCount_static_extension) @:dox(hide) abstract T_keysByCount(stdgo._internal.runtime.pprof.Pprof_t_keysbycount.T_keysByCount) from stdgo._internal.runtime.pprof.Pprof_t_keysbycount.T_keysByCount to stdgo._internal.runtime.pprof.Pprof_t_keysbycount.T_keysByCount {
    public var _keys(get, set) : Array<String>;
    function get__keys():Array<String> return [for (i in this._keys) i];
    function set__keys(v:Array<String>):Array<String> {
        this._keys = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _count(get, set) : Map<String, StdTypes.Int>;
    function get__count():Map<String, StdTypes.Int> return {
        final __obj__:Map<String, StdTypes.Int> = [];
        for (key => value in this._count) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__count(v:Map<String, StdTypes.Int>):Map<String, StdTypes.Int> {
        this._count = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoInt>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoInt);
            };
            __obj__;
        };
        return v;
    }
    public function new(?_keys:Array<String>, ?_count:Map<String, StdTypes.Int>) this = new stdgo._internal.runtime.pprof.Pprof_t_keysbycount.T_keysByCount(([for (i in _keys) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoInt>();
        for (key => value in _count) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.GoInt);
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.pprof.Pprof.T_runtimeProfile_static_extension) @:dox(hide) abstract T_runtimeProfile(stdgo._internal.runtime.pprof.Pprof_t_runtimeprofile.T_runtimeProfile) from stdgo._internal.runtime.pprof.Pprof_t_runtimeprofile.T_runtimeProfile to stdgo._internal.runtime.pprof.Pprof_t_runtimeprofile.T_runtimeProfile {
    public var _stk(get, set) : Array<stdgo._internal.runtime.Runtime_stackrecord.StackRecord>;
    function get__stk():Array<stdgo._internal.runtime.Runtime_stackrecord.StackRecord> return [for (i in this._stk) i];
    function set__stk(v:Array<stdgo._internal.runtime.Runtime_stackrecord.StackRecord>):Array<stdgo._internal.runtime.Runtime_stackrecord.StackRecord> {
        this._stk = ([for (i in v) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_stackrecord.StackRecord>);
        return v;
    }
    public var _labels(get, set) : Array<stdgo._internal.unsafe.Unsafe.UnsafePointer>;
    function get__labels():Array<stdgo._internal.unsafe.Unsafe.UnsafePointer> return [for (i in this._labels) i];
    function set__labels(v:Array<stdgo._internal.unsafe.Unsafe.UnsafePointer>):Array<stdgo._internal.unsafe.Unsafe.UnsafePointer> {
        this._labels = ([for (i in v) i] : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>);
        return v;
    }
    public function new(?_stk:Array<stdgo._internal.runtime.Runtime_stackrecord.StackRecord>, ?_labels:Array<stdgo._internal.unsafe.Unsafe.UnsafePointer>) this = new stdgo._internal.runtime.pprof.Pprof_t_runtimeprofile.T_runtimeProfile(([for (i in _stk) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_stackrecord.StackRecord>), ([for (i in _labels) i] : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.pprof.Pprof.T_profileBuilder_static_extension) @:dox(hide) abstract T_profileBuilder(stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder) from stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder to stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder {
    public var _start(get, set) : stdgo._internal.time.Time_time.Time;
    function get__start():stdgo._internal.time.Time_time.Time return this._start;
    function set__start(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this._start = v;
        return v;
    }
    public var _end(get, set) : stdgo._internal.time.Time_time.Time;
    function get__end():stdgo._internal.time.Time_time.Time return this._end;
    function set__end(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
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
        this._period = (v : stdgo.GoInt64);
        return v;
    }
    public var _m(get, set) : T_profMap;
    function get__m():T_profMap return this._m;
    function set__m(v:T_profMap):T_profMap {
        this._m = v;
        return v;
    }
    public var _w(get, set) : stdgo._internal.io.Io_writer.Writer;
    function get__w():stdgo._internal.io.Io_writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        this._w = v;
        return v;
    }
    public var _zw(get, set) : stdgo._internal.compress.gzip.Gzip_writer.Writer;
    function get__zw():stdgo._internal.compress.gzip.Gzip_writer.Writer return this._zw;
    function set__zw(v:stdgo._internal.compress.gzip.Gzip_writer.Writer):stdgo._internal.compress.gzip.Gzip_writer.Writer {
        this._zw = (v : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer>);
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
        this._strings = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _stringMap(get, set) : Map<String, StdTypes.Int>;
    function get__stringMap():Map<String, StdTypes.Int> return {
        final __obj__:Map<String, StdTypes.Int> = [];
        for (key => value in this._stringMap) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__stringMap(v:Map<String, StdTypes.Int>):Map<String, StdTypes.Int> {
        this._stringMap = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoInt>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoInt);
            };
            __obj__;
        };
        return v;
    }
    public var _locs(get, set) : Map<stdgo.GoUIntptr, T_locInfo>;
    function get__locs():Map<stdgo.GoUIntptr, T_locInfo> return {
        final __obj__:Map<stdgo.GoUIntptr, T_locInfo> = [];
        for (key => value in this._locs) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__locs(v:Map<stdgo.GoUIntptr, T_locInfo>):Map<stdgo.GoUIntptr, T_locInfo> {
        this._locs = {
            final __obj__ = new stdgo.GoMap<stdgo.GoUIntptr, stdgo._internal.runtime.pprof.Pprof_t_locinfo.T_locInfo>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoUIntptr)] = value;
            };
            __obj__;
        };
        return v;
    }
    public var _funcs(get, set) : Map<String, StdTypes.Int>;
    function get__funcs():Map<String, StdTypes.Int> return {
        final __obj__:Map<String, StdTypes.Int> = [];
        for (key => value in this._funcs) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__funcs(v:Map<String, StdTypes.Int>):Map<String, StdTypes.Int> {
        this._funcs = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoInt>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoInt);
            };
            __obj__;
        };
        return v;
    }
    public var _mem(get, set) : Array<T_memMap>;
    function get__mem():Array<T_memMap> return [for (i in this._mem) i];
    function set__mem(v:Array<T_memMap>):Array<T_memMap> {
        this._mem = ([for (i in v) i] : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_memmap.T_memMap>);
        return v;
    }
    public var _deck(get, set) : T_pcDeck;
    function get__deck():T_pcDeck return this._deck;
    function set__deck(v:T_pcDeck):T_pcDeck {
        this._deck = v;
        return v;
    }
    public function new(?_start:stdgo._internal.time.Time_time.Time, ?_end:stdgo._internal.time.Time_time.Time, ?_havePeriod:Bool, ?_period:haxe.Int64, ?_m:T_profMap, ?_w:stdgo._internal.io.Io_writer.Writer, ?_zw:stdgo._internal.compress.gzip.Gzip_writer.Writer, ?_pb:T_protobuf, ?_strings:Array<String>, ?_stringMap:Map<String, StdTypes.Int>, ?_locs:Map<stdgo.GoUIntptr, T_locInfo>, ?_funcs:Map<String, StdTypes.Int>, ?_mem:Array<T_memMap>, ?_deck:T_pcDeck) this = new stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder(
_start,
_end,
_havePeriod,
(_period : stdgo.GoInt64),
_m,
_w,
(_zw : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer>),
_pb,
([for (i in _strings) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoInt>();
        for (key => value in _stringMap) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.GoInt);
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.GoUIntptr, stdgo._internal.runtime.pprof.Pprof_t_locinfo.T_locInfo>();
        for (key => value in _locs) {
            __obj__[(key : stdgo.GoUIntptr)] = value;
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoInt>();
        for (key => value in _funcs) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.GoInt);
        };
        __obj__;
    },
([for (i in _mem) i] : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_memmap.T_memMap>),
_deck);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.pprof.Pprof.T_memMap_static_extension) @:dox(hide) abstract T_memMap(stdgo._internal.runtime.pprof.Pprof_t_memmap.T_memMap) from stdgo._internal.runtime.pprof.Pprof_t_memmap.T_memMap to stdgo._internal.runtime.pprof.Pprof_t_memmap.T_memMap {
    public var _start(get, set) : stdgo.GoUIntptr;
    function get__start():stdgo.GoUIntptr return this._start;
    function set__start(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this._start = (v : stdgo.GoUIntptr);
        return v;
    }
    public var _end(get, set) : stdgo.GoUIntptr;
    function get__end():stdgo.GoUIntptr return this._end;
    function set__end(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this._end = (v : stdgo.GoUIntptr);
        return v;
    }
    public var _offset(get, set) : haxe.UInt64;
    function get__offset():haxe.UInt64 return this._offset;
    function set__offset(v:haxe.UInt64):haxe.UInt64 {
        this._offset = (v : stdgo.GoUInt64);
        return v;
    }
    public var _file(get, set) : String;
    function get__file():String return this._file;
    function set__file(v:String):String {
        this._file = (v : stdgo.GoString);
        return v;
    }
    public var _buildID(get, set) : String;
    function get__buildID():String return this._buildID;
    function set__buildID(v:String):String {
        this._buildID = (v : stdgo.GoString);
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
    public function new(?_start:stdgo.GoUIntptr, ?_end:stdgo.GoUIntptr, ?_offset:haxe.UInt64, ?_file:String, ?_buildID:String, ?_funcs:T_symbolizeFlag, ?_fake:Bool) this = new stdgo._internal.runtime.pprof.Pprof_t_memmap.T_memMap((_start : stdgo.GoUIntptr), (_end : stdgo.GoUIntptr), (_offset : stdgo.GoUInt64), (_file : stdgo.GoString), (_buildID : stdgo.GoString), _funcs, _fake);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.pprof.Pprof.T_locInfo_static_extension) @:dox(hide) abstract T_locInfo(stdgo._internal.runtime.pprof.Pprof_t_locinfo.T_locInfo) from stdgo._internal.runtime.pprof.Pprof_t_locinfo.T_locInfo to stdgo._internal.runtime.pprof.Pprof_t_locinfo.T_locInfo {
    public var _id(get, set) : haxe.UInt64;
    function get__id():haxe.UInt64 return this._id;
    function set__id(v:haxe.UInt64):haxe.UInt64 {
        this._id = (v : stdgo.GoUInt64);
        return v;
    }
    public var _pcs(get, set) : Array<stdgo.GoUIntptr>;
    function get__pcs():Array<stdgo.GoUIntptr> return [for (i in this._pcs) i];
    function set__pcs(v:Array<stdgo.GoUIntptr>):Array<stdgo.GoUIntptr> {
        this._pcs = ([for (i in v) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>);
        return v;
    }
    public var _firstPCFrames(get, set) : Array<stdgo._internal.runtime.Runtime_frame.Frame>;
    function get__firstPCFrames():Array<stdgo._internal.runtime.Runtime_frame.Frame> return [for (i in this._firstPCFrames) i];
    function set__firstPCFrames(v:Array<stdgo._internal.runtime.Runtime_frame.Frame>):Array<stdgo._internal.runtime.Runtime_frame.Frame> {
        this._firstPCFrames = ([for (i in v) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_frame.Frame>);
        return v;
    }
    public var _firstPCSymbolizeResult(get, set) : T_symbolizeFlag;
    function get__firstPCSymbolizeResult():T_symbolizeFlag return this._firstPCSymbolizeResult;
    function set__firstPCSymbolizeResult(v:T_symbolizeFlag):T_symbolizeFlag {
        this._firstPCSymbolizeResult = v;
        return v;
    }
    public function new(?_id:haxe.UInt64, ?_pcs:Array<stdgo.GoUIntptr>, ?_firstPCFrames:Array<stdgo._internal.runtime.Runtime_frame.Frame>, ?_firstPCSymbolizeResult:T_symbolizeFlag) this = new stdgo._internal.runtime.pprof.Pprof_t_locinfo.T_locInfo((_id : stdgo.GoUInt64), ([for (i in _pcs) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>), ([for (i in _firstPCFrames) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_frame.Frame>), _firstPCSymbolizeResult);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.pprof.Pprof.T_pcDeck_static_extension) @:dox(hide) abstract T_pcDeck(stdgo._internal.runtime.pprof.Pprof_t_pcdeck.T_pcDeck) from stdgo._internal.runtime.pprof.Pprof_t_pcdeck.T_pcDeck to stdgo._internal.runtime.pprof.Pprof_t_pcdeck.T_pcDeck {
    public var _pcs(get, set) : Array<stdgo.GoUIntptr>;
    function get__pcs():Array<stdgo.GoUIntptr> return [for (i in this._pcs) i];
    function set__pcs(v:Array<stdgo.GoUIntptr>):Array<stdgo.GoUIntptr> {
        this._pcs = ([for (i in v) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>);
        return v;
    }
    public var _frames(get, set) : Array<stdgo._internal.runtime.Runtime_frame.Frame>;
    function get__frames():Array<stdgo._internal.runtime.Runtime_frame.Frame> return [for (i in this._frames) i];
    function set__frames(v:Array<stdgo._internal.runtime.Runtime_frame.Frame>):Array<stdgo._internal.runtime.Runtime_frame.Frame> {
        this._frames = ([for (i in v) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_frame.Frame>);
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
        this._firstPCFrames = (v : stdgo.GoInt);
        return v;
    }
    public var _firstPCSymbolizeResult(get, set) : T_symbolizeFlag;
    function get__firstPCSymbolizeResult():T_symbolizeFlag return this._firstPCSymbolizeResult;
    function set__firstPCSymbolizeResult(v:T_symbolizeFlag):T_symbolizeFlag {
        this._firstPCSymbolizeResult = v;
        return v;
    }
    public function new(?_pcs:Array<stdgo.GoUIntptr>, ?_frames:Array<stdgo._internal.runtime.Runtime_frame.Frame>, ?_symbolizeResult:T_symbolizeFlag, ?_firstPCFrames:StdTypes.Int, ?_firstPCSymbolizeResult:T_symbolizeFlag) this = new stdgo._internal.runtime.pprof.Pprof_t_pcdeck.T_pcDeck(([for (i in _pcs) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>), ([for (i in _frames) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_frame.Frame>), _symbolizeResult, (_firstPCFrames : stdgo.GoInt), _firstPCSymbolizeResult);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.runtime.pprof.Pprof.T_protobuf_static_extension) @:dox(hide) abstract T_protobuf(stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf) from stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf to stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf {
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
    public var _nest(get, set) : StdTypes.Int;
    function get__nest():StdTypes.Int return this._nest;
    function set__nest(v:StdTypes.Int):StdTypes.Int {
        this._nest = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_data:Array<std.UInt>, ?_tmp:haxe.ds.Vector<std.UInt>, ?_nest:StdTypes.Int) this = new stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf(([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _tmp) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_nest : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.runtime.pprof.Pprof_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.runtime.pprof.Pprof_t__struct_0.T__struct_0;
@:dox(hide) typedef T__struct_1Pointer = stdgo._internal.runtime.pprof.Pprof_t__struct_1pointer.T__struct_1Pointer;
@:dox(hide) class T__struct_1_static_extension {
    public static function _unlockSlow(__self__:stdgo._internal.runtime.pprof.Pprof_t__struct_1.T__struct_1, _0:StdTypes.Int):Void {
        final _0 = (_0 : stdgo.GoInt32);
        stdgo._internal.runtime.pprof.Pprof_t__struct_1_static_extension.T__struct_1_static_extension._unlockSlow(__self__, _0);
    }
    public static function _lockSlow(__self__:stdgo._internal.runtime.pprof.Pprof_t__struct_1.T__struct_1):Void {
        stdgo._internal.runtime.pprof.Pprof_t__struct_1_static_extension.T__struct_1_static_extension._lockSlow(__self__);
    }
    public static function unlock(__self__:stdgo._internal.runtime.pprof.Pprof_t__struct_1.T__struct_1):Void {
        stdgo._internal.runtime.pprof.Pprof_t__struct_1_static_extension.T__struct_1_static_extension.unlock(__self__);
    }
    public static function tryLock(__self__:stdgo._internal.runtime.pprof.Pprof_t__struct_1.T__struct_1):Bool {
        return stdgo._internal.runtime.pprof.Pprof_t__struct_1_static_extension.T__struct_1_static_extension.tryLock(__self__);
    }
    public static function lock(__self__:stdgo._internal.runtime.pprof.Pprof_t__struct_1.T__struct_1):Void {
        stdgo._internal.runtime.pprof.Pprof_t__struct_1_static_extension.T__struct_1_static_extension.lock(__self__);
    }
}
@:dox(hide) typedef T__struct_1 = stdgo._internal.runtime.pprof.Pprof_t__struct_1.T__struct_1;
@:dox(hide) typedef T_labelMap = stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap;
@:dox(hide) typedef T_stackProfile = stdgo._internal.runtime.pprof.Pprof_t_stackprofile.T_stackProfile;
@:dox(hide) typedef T_symbolizeFlag = stdgo._internal.runtime.pprof.Pprof_t_symbolizeflag.T_symbolizeFlag;
@:dox(hide) typedef T_msgOffset = stdgo._internal.runtime.pprof.Pprof_t_msgoffset.T_msgOffset;
@:dox(hide) typedef T_labelPointer = stdgo._internal.runtime.pprof.Pprof_t_labelpointer.T_labelPointer;
@:dox(hide) class T_label_static_extension {

}
typedef LabelSetPointer = stdgo._internal.runtime.pprof.Pprof_labelsetpointer.LabelSetPointer;
class LabelSet_static_extension {

}
@:dox(hide) typedef T_labelContextKeyPointer = stdgo._internal.runtime.pprof.Pprof_t_labelcontextkeypointer.T_labelContextKeyPointer;
@:dox(hide) class T_labelContextKey_static_extension {

}
@:dox(hide) typedef T_profMapPointer = stdgo._internal.runtime.pprof.Pprof_t_profmappointer.T_profMapPointer;
@:dox(hide) class T_profMap_static_extension {
    static public function _lookup(_m:T_profMap, _stk:Array<haxe.UInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):T_profMapEntry {
        final _m = (_m : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap>);
        final _stk = ([for (i in _stk) (i : stdgo.GoUInt64)] : stdgo.Slice<stdgo.GoUInt64>);
        return stdgo._internal.runtime.pprof.Pprof_t_profmap_static_extension.T_profMap_static_extension._lookup(_m, _stk, _tag);
    }
}
@:dox(hide) typedef T_profMapEntryPointer = stdgo._internal.runtime.pprof.Pprof_t_profmapentrypointer.T_profMapEntryPointer;
@:dox(hide) class T_profMapEntry_static_extension {

}
typedef ProfilePointer = stdgo._internal.runtime.pprof.Pprof_profilepointer.ProfilePointer;
class Profile_static_extension {
    static public function writeTo(_p:Profile, _w:stdgo._internal.io.Io_writer.Writer, _debug:StdTypes.Int):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>);
        final _debug = (_debug : stdgo.GoInt);
        return stdgo._internal.runtime.pprof.Pprof_profile_static_extension.Profile_static_extension.writeTo(_p, _w, _debug);
    }
    static public function remove(_p:Profile, _value:stdgo.AnyInterface):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>);
        final _value = (_value : stdgo.AnyInterface);
        stdgo._internal.runtime.pprof.Pprof_profile_static_extension.Profile_static_extension.remove(_p, _value);
    }
    static public function add(_p:Profile, _value:stdgo.AnyInterface, _skip:StdTypes.Int):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>);
        final _value = (_value : stdgo.AnyInterface);
        final _skip = (_skip : stdgo.GoInt);
        stdgo._internal.runtime.pprof.Pprof_profile_static_extension.Profile_static_extension.add(_p, _value, _skip);
    }
    static public function count(_p:Profile):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>);
        return stdgo._internal.runtime.pprof.Pprof_profile_static_extension.Profile_static_extension.count(_p);
    }
    static public function name(_p:Profile):String {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>);
        return stdgo._internal.runtime.pprof.Pprof_profile_static_extension.Profile_static_extension.name(_p);
    }
}
@:dox(hide) typedef T_keysByCountPointer = stdgo._internal.runtime.pprof.Pprof_t_keysbycountpointer.T_keysByCountPointer;
@:dox(hide) class T_keysByCount_static_extension {
    static public function less(_x:T_keysByCount, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_keysbycount.T_keysByCount>);
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.runtime.pprof.Pprof_t_keysbycount_static_extension.T_keysByCount_static_extension.less(_x, _i, _j);
    }
    static public function swap(_x:T_keysByCount, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_keysbycount.T_keysByCount>);
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        stdgo._internal.runtime.pprof.Pprof_t_keysbycount_static_extension.T_keysByCount_static_extension.swap(_x, _i, _j);
    }
    static public function len(_x:T_keysByCount):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_keysbycount.T_keysByCount>);
        return stdgo._internal.runtime.pprof.Pprof_t_keysbycount_static_extension.T_keysByCount_static_extension.len(_x);
    }
}
@:dox(hide) typedef T_runtimeProfilePointer = stdgo._internal.runtime.pprof.Pprof_t_runtimeprofilepointer.T_runtimeProfilePointer;
@:dox(hide) class T_runtimeProfile_static_extension {
    static public function label(_p:T_runtimeProfile, _i:StdTypes.Int):T_labelMap {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_runtimeprofile.T_runtimeProfile>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.runtime.pprof.Pprof_t_runtimeprofile_static_extension.T_runtimeProfile_static_extension.label(_p, _i);
    }
    static public function stack(_p:T_runtimeProfile, _i:StdTypes.Int):Array<stdgo.GoUIntptr> {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_runtimeprofile.T_runtimeProfile>);
        final _i = (_i : stdgo.GoInt);
        return [for (i in stdgo._internal.runtime.pprof.Pprof_t_runtimeprofile_static_extension.T_runtimeProfile_static_extension.stack(_p, _i)) i];
    }
    static public function len(_p:T_runtimeProfile):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_runtimeprofile.T_runtimeProfile>);
        return stdgo._internal.runtime.pprof.Pprof_t_runtimeprofile_static_extension.T_runtimeProfile_static_extension.len(_p);
    }
}
@:dox(hide) typedef T_profileBuilderPointer = stdgo._internal.runtime.pprof.Pprof_t_profilebuilderpointer.T_profileBuilderPointer;
@:dox(hide) class T_profileBuilder_static_extension {
    static public function _readMapping(_b:T_profileBuilder):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder>);
        stdgo._internal.runtime.pprof.Pprof_t_profilebuilder_static_extension.T_profileBuilder_static_extension._readMapping(_b);
    }
    static public function _addMappingEntry(_b:T_profileBuilder, _lo:haxe.UInt64, _hi:haxe.UInt64, _offset:haxe.UInt64, _file:String, _buildID:String, _fake:Bool):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder>);
        final _lo = (_lo : stdgo.GoUInt64);
        final _hi = (_hi : stdgo.GoUInt64);
        final _offset = (_offset : stdgo.GoUInt64);
        final _file = (_file : stdgo.GoString);
        final _buildID = (_buildID : stdgo.GoString);
        stdgo._internal.runtime.pprof.Pprof_t_profilebuilder_static_extension.T_profileBuilder_static_extension._addMappingEntry(_b, _lo, _hi, _offset, _file, _buildID, _fake);
    }
    static public function _addMapping(_b:T_profileBuilder, _lo:haxe.UInt64, _hi:haxe.UInt64, _offset:haxe.UInt64, _file:String, _buildID:String):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder>);
        final _lo = (_lo : stdgo.GoUInt64);
        final _hi = (_hi : stdgo.GoUInt64);
        final _offset = (_offset : stdgo.GoUInt64);
        final _file = (_file : stdgo.GoString);
        final _buildID = (_buildID : stdgo.GoString);
        stdgo._internal.runtime.pprof.Pprof_t_profilebuilder_static_extension.T_profileBuilder_static_extension._addMapping(_b, _lo, _hi, _offset, _file, _buildID);
    }
    static public function _emitLocation(_b:T_profileBuilder):haxe.UInt64 {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder>);
        return stdgo._internal.runtime.pprof.Pprof_t_profilebuilder_static_extension.T_profileBuilder_static_extension._emitLocation(_b);
    }
    static public function _appendLocsForStack(_b:T_profileBuilder, _locs:Array<haxe.UInt64>, _stk:Array<stdgo.GoUIntptr>):Array<haxe.UInt64> {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder>);
        final _locs = ([for (i in _locs) (i : stdgo.GoUInt64)] : stdgo.Slice<stdgo.GoUInt64>);
        final _stk = ([for (i in _stk) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>);
        return [for (i in stdgo._internal.runtime.pprof.Pprof_t_profilebuilder_static_extension.T_profileBuilder_static_extension._appendLocsForStack(_b, _locs, _stk)) i];
    }
    static public function _build(_b:T_profileBuilder):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder>);
        stdgo._internal.runtime.pprof.Pprof_t_profilebuilder_static_extension.T_profileBuilder_static_extension._build(_b);
    }
    static public function _addCPUData(_b:T_profileBuilder, _data:Array<haxe.UInt64>, _tags:Array<stdgo._internal.unsafe.Unsafe.UnsafePointer>):stdgo.Error {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt64)] : stdgo.Slice<stdgo.GoUInt64>);
        final _tags = ([for (i in _tags) i] : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>);
        return stdgo._internal.runtime.pprof.Pprof_t_profilebuilder_static_extension.T_profileBuilder_static_extension._addCPUData(_b, _data, _tags);
    }
    static public function _pbMapping(_b:T_profileBuilder, _tag:StdTypes.Int, _id:haxe.UInt64, _base:haxe.UInt64, _limit:haxe.UInt64, _offset:haxe.UInt64, _file:String, _buildID:String, _hasFuncs:Bool):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder>);
        final _tag = (_tag : stdgo.GoInt);
        final _id = (_id : stdgo.GoUInt64);
        final _base = (_base : stdgo.GoUInt64);
        final _limit = (_limit : stdgo.GoUInt64);
        final _offset = (_offset : stdgo.GoUInt64);
        final _file = (_file : stdgo.GoString);
        final _buildID = (_buildID : stdgo.GoString);
        stdgo._internal.runtime.pprof.Pprof_t_profilebuilder_static_extension.T_profileBuilder_static_extension._pbMapping(_b, _tag, _id, _base, _limit, _offset, _file, _buildID, _hasFuncs);
    }
    static public function _pbLine(_b:T_profileBuilder, _tag:StdTypes.Int, _funcID:haxe.UInt64, _line:haxe.Int64):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder>);
        final _tag = (_tag : stdgo.GoInt);
        final _funcID = (_funcID : stdgo.GoUInt64);
        final _line = (_line : stdgo.GoInt64);
        stdgo._internal.runtime.pprof.Pprof_t_profilebuilder_static_extension.T_profileBuilder_static_extension._pbLine(_b, _tag, _funcID, _line);
    }
    static public function _pbLabel(_b:T_profileBuilder, _tag:StdTypes.Int, _key:String, _str:String, _num:haxe.Int64):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder>);
        final _tag = (_tag : stdgo.GoInt);
        final _key = (_key : stdgo.GoString);
        final _str = (_str : stdgo.GoString);
        final _num = (_num : stdgo.GoInt64);
        stdgo._internal.runtime.pprof.Pprof_t_profilebuilder_static_extension.T_profileBuilder_static_extension._pbLabel(_b, _tag, _key, _str, _num);
    }
    static public function _pbSample(_b:T_profileBuilder, _values:Array<haxe.Int64>, _locs:Array<haxe.UInt64>, _labels:() -> Void):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder>);
        final _values = ([for (i in _values) (i : stdgo.GoInt64)] : stdgo.Slice<stdgo.GoInt64>);
        final _locs = ([for (i in _locs) (i : stdgo.GoUInt64)] : stdgo.Slice<stdgo.GoUInt64>);
        final _labels = _labels;
        stdgo._internal.runtime.pprof.Pprof_t_profilebuilder_static_extension.T_profileBuilder_static_extension._pbSample(_b, _values, _locs, _labels);
    }
    static public function _pbValueType(_b:T_profileBuilder, _tag:StdTypes.Int, _typ:String, _unit:String):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder>);
        final _tag = (_tag : stdgo.GoInt);
        final _typ = (_typ : stdgo.GoString);
        final _unit = (_unit : stdgo.GoString);
        stdgo._internal.runtime.pprof.Pprof_t_profilebuilder_static_extension.T_profileBuilder_static_extension._pbValueType(_b, _tag, _typ, _unit);
    }
    static public function _flush(_b:T_profileBuilder):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder>);
        stdgo._internal.runtime.pprof.Pprof_t_profilebuilder_static_extension.T_profileBuilder_static_extension._flush(_b);
    }
    static public function _stringIndex(_b:T_profileBuilder, _s:String):haxe.Int64 {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder>);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.runtime.pprof.Pprof_t_profilebuilder_static_extension.T_profileBuilder_static_extension._stringIndex(_b, _s);
    }
}
@:structInit @:dox(hide) abstract T__emitLocation___localname___newFunc_20332(stdgo._internal.runtime.pprof.Pprof_t__emitlocation___localname___newfunc_20332.T__emitLocation___localname___newFunc_20332) from stdgo._internal.runtime.pprof.Pprof_t__emitlocation___localname___newfunc_20332.T__emitLocation___localname___newFunc_20332 to stdgo._internal.runtime.pprof.Pprof_t__emitlocation___localname___newfunc_20332.T__emitLocation___localname___newFunc_20332 {
    public var _id(get, set) : haxe.UInt64;
    function get__id():haxe.UInt64 return this._id;
    function set__id(v:haxe.UInt64):haxe.UInt64 {
        this._id = (v : stdgo.GoUInt64);
        return v;
    }
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _file(get, set) : String;
    function get__file():String return this._file;
    function set__file(v:String):String {
        this._file = (v : stdgo.GoString);
        return v;
    }
    public var _startLine(get, set) : haxe.Int64;
    function get__startLine():haxe.Int64 return this._startLine;
    function set__startLine(v:haxe.Int64):haxe.Int64 {
        this._startLine = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_id:haxe.UInt64, ?_name:String, ?_file:String, ?_startLine:haxe.Int64) this = new stdgo._internal.runtime.pprof.Pprof_t__emitlocation___localname___newfunc_20332.T__emitLocation___localname___newFunc_20332((_id : stdgo.GoUInt64), (_name : stdgo.GoString), (_file : stdgo.GoString), (_startLine : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_memMapPointer = stdgo._internal.runtime.pprof.Pprof_t_memmappointer.T_memMapPointer;
@:dox(hide) class T_memMap_static_extension {

}
@:dox(hide) typedef T_locInfoPointer = stdgo._internal.runtime.pprof.Pprof_t_locinfopointer.T_locInfoPointer;
@:dox(hide) class T_locInfo_static_extension {

}
@:dox(hide) typedef T_pcDeckPointer = stdgo._internal.runtime.pprof.Pprof_t_pcdeckpointer.T_pcDeckPointer;
@:dox(hide) class T_pcDeck_static_extension {
    static public function _tryAdd(_d:T_pcDeck, _pc:stdgo.GoUIntptr, _frames:Array<stdgo._internal.runtime.Runtime_frame.Frame>, _symbolizeResult:T_symbolizeFlag):Bool {
        final _d = (_d : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_pcdeck.T_pcDeck>);
        final _pc = (_pc : stdgo.GoUIntptr);
        final _frames = ([for (i in _frames) i] : stdgo.Slice<stdgo._internal.runtime.Runtime_frame.Frame>);
        return stdgo._internal.runtime.pprof.Pprof_t_pcdeck_static_extension.T_pcDeck_static_extension._tryAdd(_d, _pc, _frames, _symbolizeResult);
    }
    static public function _reset(_d:T_pcDeck):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_pcdeck.T_pcDeck>);
        stdgo._internal.runtime.pprof.Pprof_t_pcdeck_static_extension.T_pcDeck_static_extension._reset(_d);
    }
}
@:dox(hide) typedef T_protobufPointer = stdgo._internal.runtime.pprof.Pprof_t_protobufpointer.T_protobufPointer;
@:dox(hide) class T_protobuf_static_extension {
    static public function _endMessage(_b:T_protobuf, _tag:StdTypes.Int, _start:T_msgOffset):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf>);
        final _tag = (_tag : stdgo.GoInt);
        stdgo._internal.runtime.pprof.Pprof_t_protobuf_static_extension.T_protobuf_static_extension._endMessage(_b, _tag, _start);
    }
    static public function _startMessage(_b:T_protobuf):T_msgOffset {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf>);
        return stdgo._internal.runtime.pprof.Pprof_t_protobuf_static_extension.T_protobuf_static_extension._startMessage(_b);
    }
    static public function _boolOpt(_b:T_protobuf, _tag:StdTypes.Int, _x:Bool):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf>);
        final _tag = (_tag : stdgo.GoInt);
        stdgo._internal.runtime.pprof.Pprof_t_protobuf_static_extension.T_protobuf_static_extension._boolOpt(_b, _tag, _x);
    }
    static public function _bool(_b:T_protobuf, _tag:StdTypes.Int, _x:Bool):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf>);
        final _tag = (_tag : stdgo.GoInt);
        stdgo._internal.runtime.pprof.Pprof_t_protobuf_static_extension.T_protobuf_static_extension._bool(_b, _tag, _x);
    }
    static public function _stringOpt(_b:T_protobuf, _tag:StdTypes.Int, _x:String):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf>);
        final _tag = (_tag : stdgo.GoInt);
        final _x = (_x : stdgo.GoString);
        stdgo._internal.runtime.pprof.Pprof_t_protobuf_static_extension.T_protobuf_static_extension._stringOpt(_b, _tag, _x);
    }
    static public function _strings(_b:T_protobuf, _tag:StdTypes.Int, _x:Array<String>):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf>);
        final _tag = (_tag : stdgo.GoInt);
        final _x = ([for (i in _x) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.runtime.pprof.Pprof_t_protobuf_static_extension.T_protobuf_static_extension._strings(_b, _tag, _x);
    }
    static public function _string(_b:T_protobuf, _tag:StdTypes.Int, _x:String):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf>);
        final _tag = (_tag : stdgo.GoInt);
        final _x = (_x : stdgo.GoString);
        stdgo._internal.runtime.pprof.Pprof_t_protobuf_static_extension.T_protobuf_static_extension._string(_b, _tag, _x);
    }
    static public function _int64s(_b:T_protobuf, _tag:StdTypes.Int, _x:Array<haxe.Int64>):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf>);
        final _tag = (_tag : stdgo.GoInt);
        final _x = ([for (i in _x) (i : stdgo.GoInt64)] : stdgo.Slice<stdgo.GoInt64>);
        stdgo._internal.runtime.pprof.Pprof_t_protobuf_static_extension.T_protobuf_static_extension._int64s(_b, _tag, _x);
    }
    static public function _int64Opt(_b:T_protobuf, _tag:StdTypes.Int, _x:haxe.Int64):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf>);
        final _tag = (_tag : stdgo.GoInt);
        final _x = (_x : stdgo.GoInt64);
        stdgo._internal.runtime.pprof.Pprof_t_protobuf_static_extension.T_protobuf_static_extension._int64Opt(_b, _tag, _x);
    }
    static public function _int64(_b:T_protobuf, _tag:StdTypes.Int, _x:haxe.Int64):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf>);
        final _tag = (_tag : stdgo.GoInt);
        final _x = (_x : stdgo.GoInt64);
        stdgo._internal.runtime.pprof.Pprof_t_protobuf_static_extension.T_protobuf_static_extension._int64(_b, _tag, _x);
    }
    static public function _uint64Opt(_b:T_protobuf, _tag:StdTypes.Int, _x:haxe.UInt64):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf>);
        final _tag = (_tag : stdgo.GoInt);
        final _x = (_x : stdgo.GoUInt64);
        stdgo._internal.runtime.pprof.Pprof_t_protobuf_static_extension.T_protobuf_static_extension._uint64Opt(_b, _tag, _x);
    }
    static public function _uint64s(_b:T_protobuf, _tag:StdTypes.Int, _x:Array<haxe.UInt64>):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf>);
        final _tag = (_tag : stdgo.GoInt);
        final _x = ([for (i in _x) (i : stdgo.GoUInt64)] : stdgo.Slice<stdgo.GoUInt64>);
        stdgo._internal.runtime.pprof.Pprof_t_protobuf_static_extension.T_protobuf_static_extension._uint64s(_b, _tag, _x);
    }
    static public function _uint64(_b:T_protobuf, _tag:StdTypes.Int, _x:haxe.UInt64):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf>);
        final _tag = (_tag : stdgo.GoInt);
        final _x = (_x : stdgo.GoUInt64);
        stdgo._internal.runtime.pprof.Pprof_t_protobuf_static_extension.T_protobuf_static_extension._uint64(_b, _tag, _x);
    }
    static public function _length(_b:T_protobuf, _tag:StdTypes.Int, _len:StdTypes.Int):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf>);
        final _tag = (_tag : stdgo.GoInt);
        final _len = (_len : stdgo.GoInt);
        stdgo._internal.runtime.pprof.Pprof_t_protobuf_static_extension.T_protobuf_static_extension._length(_b, _tag, _len);
    }
    static public function _varint(_b:T_protobuf, _x:haxe.UInt64):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_protobuf.T_protobuf>);
        final _x = (_x : stdgo.GoUInt64);
        stdgo._internal.runtime.pprof.Pprof_t_protobuf_static_extension.T_protobuf_static_extension._varint(_b, _x);
    }
}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.runtime.pprof.Pprof_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
@:dox(hide) typedef T__struct_1PointerPointer = stdgo._internal.runtime.pprof.Pprof_t__struct_1pointerpointer.T__struct_1PointerPointer;
@:dox(hide) class T__struct_1Pointer_static_extension {

}
@:dox(hide) typedef T_labelMapPointer = stdgo._internal.runtime.pprof.Pprof_t_labelmappointer.T_labelMapPointer;
@:dox(hide) class T_labelMap_static_extension {
    static public function string(_l:T_labelMap):String {
        final _l = (_l : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap>);
        return stdgo._internal.runtime.pprof.Pprof_t_labelmap_static_extension.T_labelMap_static_extension.string(_l);
    }
}
@:dox(hide) typedef T_stackProfilePointer = stdgo._internal.runtime.pprof.Pprof_t_stackprofilepointer.T_stackProfilePointer;
@:dox(hide) class T_stackProfile_static_extension {
    static public function label(_x:T_stackProfile, _i:StdTypes.Int):T_labelMap {
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.runtime.pprof.Pprof_t_stackprofile_static_extension.T_stackProfile_static_extension.label(_x, _i);
    }
    static public function stack(_x:T_stackProfile, _i:StdTypes.Int):Array<stdgo.GoUIntptr> {
        final _i = (_i : stdgo.GoInt);
        return [for (i in stdgo._internal.runtime.pprof.Pprof_t_stackprofile_static_extension.T_stackProfile_static_extension.stack(_x, _i)) i];
    }
    static public function len(_x:T_stackProfile):StdTypes.Int {
        return stdgo._internal.runtime.pprof.Pprof_t_stackprofile_static_extension.T_stackProfile_static_extension.len(_x);
    }
}
@:dox(hide) typedef T_symbolizeFlagPointer = stdgo._internal.runtime.pprof.Pprof_t_symbolizeflagpointer.T_symbolizeFlagPointer;
@:dox(hide) class T_symbolizeFlag_static_extension {

}
@:dox(hide) typedef T_msgOffsetPointer = stdgo._internal.runtime.pprof.Pprof_t_msgoffsetpointer.T_msgOffsetPointer;
@:dox(hide) class T_msgOffset_static_extension {

}
/**
    * Package pprof writes runtime profiling data in the format expected
    * by the pprof visualization tool.
    * 
    * # Profiling a Go program
    * 
    * The first step to profiling a Go program is to enable profiling.
    * Support for profiling benchmarks built with the standard testing
    * package is built into go test. For example, the following command
    * runs benchmarks in the current directory and writes the CPU and
    * memory profiles to cpu.prof and mem.prof:
    * 
    * 	go test -cpuprofile cpu.prof -memprofile mem.prof -bench .
    * 
    * To add equivalent profiling support to a standalone program, add
    * code like the following to your main function:
    * 
    * 	var cpuprofile = flag.String("cpuprofile", "", "write cpu profile to `file`")
    * 	var memprofile = flag.String("memprofile", "", "write memory profile to `file`")
    * 
    * 	func main() {
    * 	    flag.Parse()
    * 	    if *cpuprofile != "" {
    * 	        f, err := os.Create(*cpuprofile)
    * 	        if err != nil {
    * 	            log.Fatal("could not create CPU profile: ", err)
    * 	        }
    * 	        defer f.Close() // error handling omitted for example
    * 	        if err := pprof.StartCPUProfile(f); err != nil {
    * 	            log.Fatal("could not start CPU profile: ", err)
    * 	        }
    * 	        defer pprof.StopCPUProfile()
    * 	    }
    * 
    * 	    // ... rest of the program ...
    * 
    * 	    if *memprofile != "" {
    * 	        f, err := os.Create(*memprofile)
    * 	        if err != nil {
    * 	            log.Fatal("could not create memory profile: ", err)
    * 	        }
    * 	        defer f.Close() // error handling omitted for example
    * 	        runtime.GC() // get up-to-date statistics
    * 	        if err := pprof.WriteHeapProfile(f); err != nil {
    * 	            log.Fatal("could not write memory profile: ", err)
    * 	        }
    * 	    }
    * 	}
    * 
    * There is also a standard HTTP interface to profiling data. Adding
    * the following line will install handlers under the /debug/pprof/
    * URL to download live profiles:
    * 
    * 	import _ "net/http/pprof"
    * 
    * See the net/http/pprof package for more details.
    * 
    * Profiles can then be visualized with the pprof tool:
    * 
    * 	go tool pprof cpu.prof
    * 
    * There are many commands available from the pprof command line.
    * Commonly used commands include "top", which prints a summary of the
    * top program hot-spots, and "web", which opens an interactive graph
    * of hot-spots and their call graphs. Use "help" for information on
    * all pprof commands.
    * 
    * For more information about pprof, see
    * https://github.com/google/pprof/blob/master/doc/README.md.
**/
class Pprof {
    /**
        * WithLabels returns a new context.Context with the given labels added.
        * A label overwrites a prior label with the same key.
    **/
    static public inline function withLabels(_ctx:stdgo._internal.context.Context_context.Context, _labels:LabelSet):stdgo._internal.context.Context_context.Context {
        return stdgo._internal.runtime.pprof.Pprof_withlabels.withLabels(_ctx, _labels);
    }
    /**
        * Labels takes an even number of strings representing key-value pairs
        * and makes a LabelSet containing them.
        * A label overwrites a prior label with the same key.
        * Currently only the CPU and goroutine profiles utilize any labels
        * information.
        * See https://golang.org/issue/23458 for details.
    **/
    static public inline function labels(_args:haxe.Rest<String>):LabelSet {
        return stdgo._internal.runtime.pprof.Pprof_labels.labels(...[for (i in _args) i]);
    }
    /**
        * Label returns the value of the label with the given key on ctx, and a boolean indicating
        * whether that label exists.
    **/
    static public inline function label(_ctx:stdgo._internal.context.Context_context.Context, _key:String):stdgo.Tuple<String, Bool> {
        final _key = (_key : stdgo.GoString);
        return {
            final obj = stdgo._internal.runtime.pprof.Pprof_label.label(_ctx, _key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * ForLabels invokes f with each label set on the context.
        * The function f should return true to continue iteration or false to stop iteration early.
    **/
    static public inline function forLabels(_ctx:stdgo._internal.context.Context_context.Context, _f:(String, String) -> Bool):Void {
        final _f = _f;
        stdgo._internal.runtime.pprof.Pprof_forlabels.forLabels(_ctx, _f);
    }
    /**
        * NewProfile creates a new profile with the given name.
        * If a profile with that name already exists, NewProfile panics.
        * The convention is to use a 'import/path.' prefix to create
        * separate name spaces for each package.
        * For compatibility with various tools that read pprof data,
        * profile names should not contain spaces.
    **/
    static public inline function newProfile(_name:String):Profile {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.runtime.pprof.Pprof_newprofile.newProfile(_name);
    }
    /**
        * Lookup returns the profile with the given name, or nil if no such profile exists.
    **/
    static public inline function lookup(_name:String):Profile {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.runtime.pprof.Pprof_lookup.lookup(_name);
    }
    /**
        * Profiles returns a slice of all the known profiles, sorted by name.
    **/
    static public inline function profiles():Array<Profile> {
        return [for (i in stdgo._internal.runtime.pprof.Pprof_profiles.profiles()) i];
    }
    /**
        * WriteHeapProfile is shorthand for Lookup("heap").WriteTo(w, 0).
        * It is preserved for backwards compatibility.
    **/
    static public inline function writeHeapProfile(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        return stdgo._internal.runtime.pprof.Pprof_writeheapprofile.writeHeapProfile(_w);
    }
    /**
        * StartCPUProfile enables CPU profiling for the current process.
        * While profiling, the profile will be buffered and written to w.
        * StartCPUProfile returns an error if profiling is already enabled.
        * 
        * On Unix-like systems, StartCPUProfile does not work by default for
        * Go code built with -buildmode=c-archive or -buildmode=c-shared.
        * StartCPUProfile relies on the SIGPROF signal, but that signal will
        * be delivered to the main program's SIGPROF signal handler (if any)
        * not to the one used by Go. To make it work, call os/signal.Notify
        * for syscall.SIGPROF, but note that doing so may break any profiling
        * being done by the main program.
    **/
    static public inline function startCPUProfile(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        return stdgo._internal.runtime.pprof.Pprof_startcpuprofile.startCPUProfile(_w);
    }
    /**
        * StopCPUProfile stops the current CPU profile, if any.
        * StopCPUProfile only returns after all the writes for the
        * profile have completed.
    **/
    static public inline function stopCPUProfile():Void {
        stdgo._internal.runtime.pprof.Pprof_stopcpuprofile.stopCPUProfile();
    }
    /**
        * SetGoroutineLabels sets the current goroutine's labels to match ctx.
        * A new goroutine inherits the labels of the goroutine that created it.
        * This is a lower-level API than Do, which should be used instead when possible.
    **/
    static public inline function setGoroutineLabels(_ctx:stdgo._internal.context.Context_context.Context):Void {
        stdgo._internal.runtime.pprof.Pprof_setgoroutinelabels.setGoroutineLabels(_ctx);
    }
    /**
        * Do calls f with a copy of the parent context with the
        * given labels added to the parent's label map.
        * Goroutines spawned while executing f will inherit the augmented label-set.
        * Each key/value pair in labels is inserted into the label map in the
        * order provided, overriding any previous value for the same key.
        * The augmented label map will be set for the duration of the call to f
        * and restored once f returns.
    **/
    static public inline function do_(_ctx:stdgo._internal.context.Context_context.Context, _labels:LabelSet, _f:stdgo._internal.context.Context_context.Context -> Void):Void {
        final _f = _f;
        stdgo._internal.runtime.pprof.Pprof_do_.do_(_ctx, _labels, _f);
    }
}
