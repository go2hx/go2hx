package stdgo.internal.profile;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
typedef T_message = StructType & {
    public function _decoder():Slice<T_decoder>;
    public function _encode(_0:Pointer<T_buffer>):Void;
};
@:named class TagMatch {
    public var __t__ : (GoString, GoString, GoInt64) -> Bool;
    public function new(?t:(GoString, GoString, GoInt64) -> Bool) {
        __t__ = t == null ? null : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new TagMatch(__t__);
}
@:named class T_sectionType {
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_sectionType(__t__);
}
@:structInit class T_profileMerger {
    public function _mapFunction(_src:Pointer<Function>):Pointer<Function> {
        var _pm = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_src == null || _src.isNil()) {
            return new Pointer<Function>().nil();
        };
        {
            var __tmp__ = _pm.value._functionsByID.exists(_src.value.id) ? { value : _pm.value._functionsByID[_src.value.id], ok : true } : { value : _pm.value._functionsByID.defaultValue(), ok : false }, _f:Pointer<Function> = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (_ok) {
                return _f;
            };
        };
        var _k:T_functionKey = _src.value._key().__copy__();
        {
            var __tmp__ = _pm.value._functions.exists(_k) ? { value : _pm.value._functions[_k], ok : true } : { value : _pm.value._functions.defaultValue(), ok : false }, _f:Pointer<Function> = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (_ok) {
                _pm.value._functionsByID[_src.value.id] = _f;
                return _f;
            };
        };
        var _f:Pointer<Function> = Go.pointer((({ id : (((_pm.value._p.value.function_.length + ((1 : GoInt))) : GoUInt64)), name : _src.value.name, systemName : _src.value.systemName, filename : _src.value.filename, startLine : _src.value.startLine, _nameX : 0, _systemNameX : 0, _filenameX : 0 } : Function)));
        _pm.value._functions[_k.__copy__()] = _f;
        _pm.value._functionsByID[_src.value.id] = _f;
        _pm.value._p.value.function_ = _pm.value._p.value.function_.__append__(_f);
        return _f;
    }
    public function _mapLine(_src:Line):Line {
        var _pm = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _ln:Line = (({ function_ : _pm.value._mapFunction(_src.function_), line : _src.line, _functionIDX : 0 } : Line)).__copy__();
        return _ln.__copy__();
    }
    public function _mapMapping(_src:Pointer<Mapping>):T_mapInfo {
        var _pm = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_src == null || _src.isNil()) {
            return new T_mapInfo().__copy__();
        };
        {
            var __tmp__ = _pm.value._mappingsByID.exists(_src.value.id) ? { value : _pm.value._mappingsByID[_src.value.id], ok : true } : { value : _pm.value._mappingsByID.defaultValue(), ok : false }, _mi:T_mapInfo = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (_ok) {
                return _mi.__copy__();
            };
        };
        var _mk:T_mappingKey = _src.value._key().__copy__();
        {
            var __tmp__ = _pm.value._mappings.exists(_mk) ? { value : _pm.value._mappings[_mk], ok : true } : { value : _pm.value._mappings.defaultValue(), ok : false }, _m:Pointer<Mapping> = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (_ok) {
                var _mi:T_mapInfo = new T_mapInfo(_m, ((_m.value.start : GoInt64)) - ((_src.value.start : GoInt64))).__copy__();
                _pm.value._mappingsByID[_src.value.id] = _mi.__copy__();
                return _mi.__copy__();
            };
        };
        var _m:Pointer<Mapping> = Go.pointer((({ id : (((_pm.value._p.value.mapping.length + ((1 : GoInt))) : GoUInt64)), start : _src.value.start, limit : _src.value.limit, offset : _src.value.offset, file : _src.value.file, buildID : _src.value.buildID, hasFunctions : _src.value.hasFunctions, hasFilenames : _src.value.hasFilenames, hasLineNumbers : _src.value.hasLineNumbers, hasInlineFrames : _src.value.hasInlineFrames, _fileX : 0, _buildIDX : 0 } : Mapping)));
        _pm.value._p.value.mapping = _pm.value._p.value.mapping.__append__(_m);
        _pm.value._mappings[_mk.__copy__()] = _m;
        var _mi:T_mapInfo = new T_mapInfo(_m, ((0 : GoInt64))).__copy__();
        _pm.value._mappingsByID[_src.value.id] = _mi.__copy__();
        return _mi.__copy__();
    }
    public function _mapLocation(_src:Pointer<Location>):Pointer<Location> {
        var _pm = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_src == null || _src.isNil()) {
            return new Pointer<Location>().nil();
        };
        {
            var __tmp__ = _pm.value._locationsByID.exists(_src.value.id) ? { value : _pm.value._locationsByID[_src.value.id], ok : true } : { value : _pm.value._locationsByID.defaultValue(), ok : false }, _l:Pointer<Location> = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (_ok) {
                _pm.value._locationsByID[_src.value.id] = _l;
                return _l;
            };
        };
        var _mi:T_mapInfo = _pm.value._mapMapping(_src.value.mapping).__copy__();
        var _l:Pointer<Location> = Go.pointer((({ id : (((_pm.value._p.value.location.length + ((1 : GoInt))) : GoUInt64)), mapping : _mi._m, address : (((((_src.value.address : GoInt64)) + _mi._offset) : GoUInt64)), line : new Slice<Line>(...[for (i in 0 ... ((_src.value.line.length : GoInt)).toBasic()) new Line()]), isFolded : _src.value.isFolded, _mappingIDX : 0 } : Location)));
        {
            var _i;
            var _ln;
            for (_obj in _src.value.line.keyValueIterator()) {
                _i = _obj.key;
                _ln = _obj.value;
                _l.value.line[_i] = _pm.value._mapLine(_ln.__copy__()).__copy__();
            };
        };
        var _k:T_locationKey = _l.value._key().__copy__();
        {
            var __tmp__ = _pm.value._locations.exists(_k) ? { value : _pm.value._locations[_k], ok : true } : { value : _pm.value._locations.defaultValue(), ok : false }, _ll:Pointer<Location> = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (_ok) {
                _pm.value._locationsByID[_src.value.id] = _ll;
                return _ll;
            };
        };
        _pm.value._locationsByID[_src.value.id] = _l;
        _pm.value._locations[_k.__copy__()] = _l;
        _pm.value._p.value.location = _pm.value._p.value.location.__append__(_l);
        return _l;
    }
    public function _mapSample(_src:Pointer<Sample>):Pointer<Sample> {
        var _pm = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _s:Pointer<Sample> = Go.pointer((({ location : new Slice<Pointer<Location>>(...[for (i in 0 ... ((_src.value.location.length : GoInt)).toBasic()) new Pointer<Location>().nil()]), value : new Slice<GoInt64>(...[for (i in 0 ... ((_src.value.value.length : GoInt)).toBasic()) ((0 : GoInt64))]), label : new GoMap<GoString, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))), numLabel : new GoMap<GoString, Slice<GoInt64>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int64_kind))))), numUnit : new GoMap<GoString, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))), _locationIDX : new Slice<GoUInt64>().nil(), _labelX : new Slice<Label>().nil() } : Sample)));
        {
            var _i;
            var _l;
            for (_obj in _src.value.location.keyValueIterator()) {
                _i = _obj.key;
                _l = _obj.value;
                _s.value.location[_i] = _pm.value._mapLocation(_l);
            };
        };
        {
            var _k;
            var _v;
            for (_obj in _src.value.label.keyValueIterator()) {
                _k = _obj.key;
                _v = _obj.value;
                var _vv:Slice<GoString> = new Slice<GoString>(...[for (i in 0 ... ((_v.length : GoInt)).toBasic()) (("" : GoString))]);
                Go.copy(_vv, _v);
                _s.value.label[_k] = _vv;
            };
        };
        {
            var _k;
            var _v;
            for (_obj in _src.value.numLabel.keyValueIterator()) {
                _k = _obj.key;
                _v = _obj.value;
                var _u:Slice<GoString> = _src.value.numUnit[_k];
                var _vv:Slice<GoInt64> = new Slice<GoInt64>(...[for (i in 0 ... ((_v.length : GoInt)).toBasic()) ((0 : GoInt64))]);
                var _uu:Slice<GoString> = new Slice<GoString>(...[for (i in 0 ... ((_u.length : GoInt)).toBasic()) (("" : GoString))]);
                Go.copy(_vv, _v);
                Go.copy(_uu, _u);
                _s.value.numLabel[_k] = _vv;
                _s.value.numUnit[_k] = _uu;
            };
        };
        var _k:T_sampleKey = _s.value._key().__copy__();
        {
            var __tmp__ = _pm.value._samples.exists(_k) ? { value : _pm.value._samples[_k], ok : true } : { value : _pm.value._samples.defaultValue(), ok : false }, _ss:Pointer<Sample> = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (_ok) {
                {
                    var _i;
                    var _v;
                    for (_obj in _src.value.value.keyValueIterator()) {
                        _i = _obj.key;
                        _v = _obj.value;
                        _ss.value.value[_i] = _ss.value.value[_i] + (_v);
                    };
                };
                return _ss;
            };
        };
        Go.copy(_s.value.value, _src.value.value);
        _pm.value._samples[_k.__copy__()] = _s;
        _pm.value._p.value.sample = _pm.value._p.value.sample.__append__(_s);
        return _s;
    }
    public var _p : Pointer<Profile> = new Pointer<Profile>().nil();
    public var _locationsByID : GoMap<GoUInt64, Pointer<Location>> = new GoMap<GoUInt64, Pointer<Location>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "mapping", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "limit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "file", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "buildID", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "hasFunctions", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasFilenames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasLineNumbers", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasInlineFrames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_fileX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_buildIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))) }, { name : "address", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("internal/profile.Line", [], stdgo.reflect.Reflect.GoType.structType([{ name : "function_", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Function", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "systemName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "filename", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_nameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_systemNameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_filenameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_functionIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }]))) }, { name : "isFolded", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_mappingIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }])))))).nil();
    public var _functionsByID : GoMap<GoUInt64, Pointer<Function>> = new GoMap<GoUInt64, Pointer<Function>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Function", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "systemName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "filename", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_nameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_systemNameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_filenameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }])))))).nil();
    public var _mappingsByID : GoMap<GoUInt64, T_mapInfo> = new GoMap<GoUInt64, T_mapInfo>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.named("internal/profile.mapInfo", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_m", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "limit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "file", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "buildID", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "hasFunctions", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasFilenames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasLineNumbers", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasInlineFrames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_fileX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_buildIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))) }, { name : "_offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))))).nil();
    public var _samples : GoMap<T_sampleKey, Pointer<Sample>> = new GoMap<T_sampleKey, Pointer<Sample>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("internal/profile.sampleKey", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_locations", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_labels", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_numlabels", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }])), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Sample", [], stdgo.reflect.Reflect.GoType.structType([{ name : "location", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "mapping", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "limit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "file", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "buildID", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "hasFunctions", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasFilenames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasLineNumbers", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasInlineFrames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_fileX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_buildIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))) }, { name : "address", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("internal/profile.Line", [], stdgo.reflect.Reflect.GoType.structType([{ name : "function_", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Function", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "systemName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "filename", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_nameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_systemNameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_filenameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_functionIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }]))) }, { name : "isFolded", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_mappingIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }])))) }, { name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int64_kind)) }, { name : "label", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))) }, { name : "numLabel", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int64_kind))) }, { name : "numUnit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))) }, { name : "_locationIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint64_kind)) }, { name : "_labelX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("internal/profile.Label", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_keyX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_strX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_numX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))) }])))))).nil();
    public var _locations : GoMap<T_locationKey, Pointer<Location>> = new GoMap<T_locationKey, Pointer<Location>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("internal/profile.locationKey", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_addr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "_mappingID", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "_lines", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_isFolded", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }])), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "mapping", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "limit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "file", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "buildID", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "hasFunctions", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasFilenames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasLineNumbers", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasInlineFrames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_fileX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_buildIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))) }, { name : "address", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("internal/profile.Line", [], stdgo.reflect.Reflect.GoType.structType([{ name : "function_", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Function", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "systemName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "filename", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_nameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_systemNameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_filenameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_functionIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }]))) }, { name : "isFolded", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_mappingIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }])))))).nil();
    public var _functions : GoMap<T_functionKey, Pointer<Function>> = new GoMap<T_functionKey, Pointer<Function>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("internal/profile.functionKey", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_systemName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_fileName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }])), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Function", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "systemName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "filename", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_nameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_systemNameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_filenameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }])))))).nil();
    public var _mappings : GoMap<T_mappingKey, Pointer<Mapping>> = new GoMap<T_mappingKey, Pointer<Mapping>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("internal/profile.mappingKey", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_size", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "_offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "_buildIDOrFile", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }])), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "limit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "file", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "buildID", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "hasFunctions", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasFilenames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasLineNumbers", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasInlineFrames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_fileX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_buildIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }])))))).nil();
    public function new(?_p:Pointer<Profile>, ?_locationsByID:GoMap<GoUInt64, Pointer<Location>>, ?_functionsByID:GoMap<GoUInt64, Pointer<Function>>, ?_mappingsByID:GoMap<GoUInt64, T_mapInfo>, ?_samples:GoMap<T_sampleKey, Pointer<Sample>>, ?_locations:GoMap<T_locationKey, Pointer<Location>>, ?_functions:GoMap<T_functionKey, Pointer<Function>>, ?_mappings:GoMap<T_mappingKey, Pointer<Mapping>>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_p) + " " + Go.string(_locationsByID) + " " + Go.string(_functionsByID) + " " + Go.string(_mappingsByID) + " " + Go.string(_samples) + " " + Go.string(_locations) + " " + Go.string(_functions) + " " + Go.string(_mappings) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_profileMerger(_p, _locationsByID, _functionsByID, _mappingsByID, _samples, _locations, _functions, _mappings);
    }
    public function __set__(__tmp__) {
        this._p = __tmp__._p;
        this._locationsByID = __tmp__._locationsByID;
        this._functionsByID = __tmp__._functionsByID;
        this._mappingsByID = __tmp__._mappingsByID;
        this._samples = __tmp__._samples;
        this._locations = __tmp__._locations;
        this._functions = __tmp__._functions;
        this._mappings = __tmp__._mappings;
        return this;
    }
}
@:structInit class T_mapInfo {
    public var _m : Pointer<Mapping> = new Pointer<Mapping>().nil();
    public var _offset : GoInt64 = ((0 : GoInt64));
    public function new(?_m:Pointer<Mapping>, ?_offset:GoInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_m) + " " + Go.string(_offset) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_mapInfo(_m, _offset);
    }
    public function __set__(__tmp__) {
        this._m = __tmp__._m;
        this._offset = __tmp__._offset;
        return this;
    }
}
@:structInit class T_sampleKey {
    public var _locations : GoString = (("" : GoString));
    public var _labels : GoString = (("" : GoString));
    public var _numlabels : GoString = (("" : GoString));
    public function new(?_locations:GoString, ?_labels:GoString, ?_numlabels:GoString) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_locations) + " " + Go.string(_labels) + " " + Go.string(_numlabels) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_sampleKey(_locations, _labels, _numlabels);
    }
    public function __set__(__tmp__) {
        this._locations = __tmp__._locations;
        this._labels = __tmp__._labels;
        this._numlabels = __tmp__._numlabels;
        return this;
    }
}
@:structInit class T_locationKey {
    public var _addr : GoUInt64 = ((0 : GoUInt64));
    public var _mappingID : GoUInt64 = ((0 : GoUInt64));
    public var _lines : GoString = (("" : GoString));
    public var _isFolded : Bool = false;
    public function new(?_addr:GoUInt64, ?_mappingID:GoUInt64, ?_lines:GoString, ?_isFolded:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_addr) + " " + Go.string(_mappingID) + " " + Go.string(_lines) + " " + Go.string(_isFolded) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_locationKey(_addr, _mappingID, _lines, _isFolded);
    }
    public function __set__(__tmp__) {
        this._addr = __tmp__._addr;
        this._mappingID = __tmp__._mappingID;
        this._lines = __tmp__._lines;
        this._isFolded = __tmp__._isFolded;
        return this;
    }
}
@:structInit class T_mappingKey {
    public var _size : GoUInt64 = ((0 : GoUInt64));
    public var _offset : GoUInt64 = ((0 : GoUInt64));
    public var _buildIDOrFile : GoString = (("" : GoString));
    public function new(?_size:GoUInt64, ?_offset:GoUInt64, ?_buildIDOrFile:GoString) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_size) + " " + Go.string(_offset) + " " + Go.string(_buildIDOrFile) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_mappingKey(_size, _offset, _buildIDOrFile);
    }
    public function __set__(__tmp__) {
        this._size = __tmp__._size;
        this._offset = __tmp__._offset;
        this._buildIDOrFile = __tmp__._buildIDOrFile;
        return this;
    }
}
@:structInit class T_functionKey {
    public var _startLine : GoInt64 = ((0 : GoInt64));
    public var _name : GoString = (("" : GoString));
    public var _systemName : GoString = (("" : GoString));
    public var _fileName : GoString = (("" : GoString));
    public function new(?_startLine:GoInt64, ?_name:GoString, ?_systemName:GoString, ?_fileName:GoString) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_startLine) + " " + Go.string(_name) + " " + Go.string(_systemName) + " " + Go.string(_fileName) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_functionKey(_startLine, _name, _systemName, _fileName);
    }
    public function __set__(__tmp__) {
        this._startLine = __tmp__._startLine;
        this._name = __tmp__._name;
        this._systemName = __tmp__._systemName;
        this._fileName = __tmp__._fileName;
        return this;
    }
}
@:structInit class Profile {
    public function removeUninteresting():Error {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _keep:Pointer<stdgo.regexp.Regexp.Regexp> = new Pointer<stdgo.regexp.Regexp.Regexp>().nil(), _drop:Pointer<stdgo.regexp.Regexp.Regexp> = new Pointer<stdgo.regexp.Regexp.Regexp>().nil();
        var _err:Error = ((null : stdgo.Error));
        if (_p.value.dropFrames != (("" : GoString))) {
            {
                {
                    var __tmp__ = stdgo.regexp.Regexp.compile((("^(" : GoString)) + _p.value.dropFrames + ((")$" : GoString)));
                    _drop = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return stdgo.fmt.Fmt.errorf("failed to compile regexp %s: %v", Go.toInterface(_p.value.dropFrames), Go.toInterface(_err));
                };
            };
            if (_p.value.keepFrames != (("" : GoString))) {
                {
                    {
                        var __tmp__ = stdgo.regexp.Regexp.compile((("^(" : GoString)) + _p.value.keepFrames + ((")$" : GoString)));
                        _keep = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return stdgo.fmt.Fmt.errorf("failed to compile regexp %s: %v", Go.toInterface(_p.value.keepFrames), Go.toInterface(_err));
                    };
                };
            };
            _p.value.prune(_drop, _keep);
        };
        return ((null : stdgo.Error));
    }
    public function prune(_dropRx:Pointer<stdgo.regexp.Regexp.Regexp>, _keepRx:Pointer<stdgo.regexp.Regexp.Regexp>):Void {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _prune:GoMap<GoUInt64, Bool> = new GoMap<GoUInt64, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind))));
        var _pruneBeneath:GoMap<GoUInt64, Bool> = new GoMap<GoUInt64, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind))));
        for (_loc in _p.value.location) {
            var _i:GoInt = ((0 : GoInt));
            {
                _i = _loc.value.line.length - ((1 : GoInt));
                Go.cfor(_i >= ((0 : GoInt)), _i--, {
                    {
                        var _fn:Pointer<Function> = _loc.value.line[_i].function_;
                        if (_fn != null && !_fn.isNil() && _fn.value.name != (("" : GoString))) {
                            var _funcName:GoString = _fn.value.name;
                            if (_funcName[((0 : GoInt))] == ((".".code : GoRune))) {
                                _funcName = _funcName.__slice__(((1 : GoInt)));
                            };
                            if (_dropRx.value.matchString(_funcName)) {
                                if (_keepRx == null || _keepRx.isNil() || !_keepRx.value.matchString(_funcName)) {
                                    break;
                                };
                            };
                        };
                    };
                });
            };
            if (_i >= ((0 : GoInt))) {
                _pruneBeneath[_loc.value.id] = true;
                if (_i == _loc.value.line.length - ((1 : GoInt))) {
                    _prune[_loc.value.id] = true;
                } else {
                    _loc.value.line = _loc.value.line.__slice__(_i + ((1 : GoInt)));
                };
            };
        };
        for (_sample in _p.value.sample) {
            var _foundUser:Bool = false;
            {
                var _i:GoInt = _sample.value.location.length - ((1 : GoInt));
                Go.cfor(_i >= ((0 : GoInt)), _i--, {
                    var _id:GoUInt64 = _sample.value.location[_i].value.id;
                    if (!_prune[_id] && !_pruneBeneath[_id]) {
                        _foundUser = true;
                        continue;
                    };
                    if (!_foundUser) {
                        continue;
                    };
                    if (_prune[_id]) {
                        _sample.value.location = _sample.value.location.__slice__(_i + ((1 : GoInt)));
                        break;
                    };
                    if (_pruneBeneath[_id]) {
                        _sample.value.location = _sample.value.location.__slice__(_i);
                        break;
                    };
                });
            };
        };
    }
    public function scaleN(_ratios:Slice<GoFloat64>):Error {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_p.value.sampleType.length != _ratios.length) {
            return stdgo.fmt.Fmt.errorf("mismatched scale ratios, got %d, want %d", Go.toInterface(_ratios.length), Go.toInterface(_p.value.sampleType.length));
        };
        var _allOnes:Bool = true;
        for (_r in _ratios) {
            if (_r != ((1 : GoFloat64))) {
                _allOnes = false;
                break;
            };
        };
        if (_allOnes) {
            return ((null : stdgo.Error));
        };
        for (_s in _p.value.sample) {
            {
                var _i;
                var _v;
                for (_obj in _s.value.value.keyValueIterator()) {
                    _i = _obj.key;
                    _v = _obj.value;
                    if (_ratios[_i] != ((1 : GoFloat64))) {
                        _s.value.value[_i] = (((((_v : GoFloat64)) * _ratios[_i]) : GoInt64));
                    };
                };
            };
        };
        return ((null : stdgo.Error));
    }
    public function scale(_ratio:GoFloat64):Void {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_ratio == ((1 : GoFloat64))) {
            return;
        };
        var _ratios:Slice<GoFloat64> = new Slice<GoFloat64>(...[for (i in 0 ... ((_p.value.sampleType.length : GoInt)).toBasic()) ((0 : GoFloat64))]);
        {
            var _i;
            for (_obj in _p.value.sampleType.keyValueIterator()) {
                _i = _obj.key;
                _ratios[_i] = _ratio;
            };
        };
        _p.value.scaleN(_ratios);
    }
    public function empty():Bool {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _p.value.sample.length == ((0 : GoInt));
    }
    public function demangle(_d:Demangler):Error {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _names:Slice<GoString> = new Slice<GoString>().nil();
        for (_fn in _p.value.function_) {
            _names = _names.__append__(_fn.value.systemName);
        };
        var __tmp__ = _d.__t__(_names), _demangled:GoMap<GoString, GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        for (_fn in _p.value.function_) {
            {
                var __tmp__ = _demangled.exists(_fn.value.systemName) ? { value : _demangled[_fn.value.systemName], ok : true } : { value : _demangled.defaultValue(), ok : false }, _dd:GoString = __tmp__.value, _ok:Bool = __tmp__.ok;
                if (_ok) {
                    _fn.value.name = _dd;
                };
            };
        };
        return ((null : stdgo.Error));
    }
    public function copy():Pointer<Profile> {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _p.value._preEncode();
        var _b:Slice<GoUInt8> = _marshal(_p.value);
        var _pp:Pointer<Profile> = Go.pointer(new Profile());
        {
            var _err:stdgo.Error = _unmarshal(_b, _pp.value);
            if (_err != null) {
                throw _err;
            };
        };
        {
            var _err:stdgo.Error = _pp.value._postDecode();
            if (_err != null) {
                throw _err;
            };
        };
        return _pp;
    }
    public function hasFileLines():Bool {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        for (_l in _p.value.location) {
            if (_l.value.mapping == null || _l.value.mapping.isNil() || (!_l.value.mapping.value.hasFilenames || !_l.value.mapping.value.hasLineNumbers)) {
                return false;
            };
        };
        return true;
    }
    public function hasFunctions():Bool {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        for (_l in _p.value.location) {
            if (_l.value.mapping == null || _l.value.mapping.isNil() || !_l.value.mapping.value.hasFunctions) {
                return false;
            };
        };
        return true;
    }
    public function compatible(_pb:Pointer<Profile>):Error {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (!_compatibleValueTypes(_p.value.periodType, _pb.value.periodType)) {
            return stdgo.fmt.Fmt.errorf("incompatible period types %v and %v", Go.toInterface(_p.value.periodType), Go.toInterface(_pb.value.periodType));
        };
        if (_p.value.sampleType.length != _pb.value.sampleType.length) {
            return stdgo.fmt.Fmt.errorf("incompatible sample types %v and %v", Go.toInterface(_p.value.sampleType), Go.toInterface(_pb.value.sampleType));
        };
        {
            var _i;
            for (_obj in _p.value.sampleType.keyValueIterator()) {
                _i = _obj.key;
                if (!_compatibleValueTypes(_p.value.sampleType[_i], _pb.value.sampleType[_i])) {
                    return stdgo.fmt.Fmt.errorf("incompatible sample types %v and %v", Go.toInterface(_p.value.sampleType), Go.toInterface(_pb.value.sampleType));
                };
            };
        };
        return ((null : stdgo.Error));
    }
    public function merge(_pb:Pointer<Profile>, _r:GoFloat64):Error {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _err:stdgo.Error = _p.value.compatible(_pb);
            if (_err != null) {
                return _err;
            };
        };
        _pb = _pb.value.copy();
        if (_pb.value.period > _p.value.period) {
            _p.value.period = _pb.value.period;
        };
        _p.value.durationNanos = _p.value.durationNanos + (_pb.value.durationNanos);
        _p.value.mapping = _p.value.mapping.__append__(..._pb.value.mapping.toArray());
        {
            var _i;
            var _m;
            for (_obj in _p.value.mapping.keyValueIterator()) {
                _i = _obj.key;
                _m = _obj.value;
                _m.value.id = (((_i + ((1 : GoInt))) : GoUInt64));
            };
        };
        _p.value.location = _p.value.location.__append__(..._pb.value.location.toArray());
        {
            var _i;
            var _l;
            for (_obj in _p.value.location.keyValueIterator()) {
                _i = _obj.key;
                _l = _obj.value;
                _l.value.id = (((_i + ((1 : GoInt))) : GoUInt64));
            };
        };
        _p.value.function_ = _p.value.function_.__append__(..._pb.value.function_.toArray());
        {
            var _i;
            var _f;
            for (_obj in _p.value.function_.keyValueIterator()) {
                _i = _obj.key;
                _f = _obj.value;
                _f.value.id = (((_i + ((1 : GoInt))) : GoUInt64));
            };
        };
        if (_r != ((1 : GoFloat64))) {
            for (_s in _pb.value.sample) {
                {
                    var _i;
                    var _v;
                    for (_obj in _s.value.value.keyValueIterator()) {
                        _i = _obj.key;
                        _v = _obj.value;
                        _s.value.value[_i] = (((((_v : GoFloat64)) * _r) : GoInt64));
                    };
                };
            };
        };
        _p.value.sample = _p.value.sample.__append__(..._pb.value.sample.toArray());
        return _p.value.checkValid();
    }
    public function toString():GoString {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _ss:Slice<GoString> = new Slice<GoString>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) (("" : GoString))]).setCap(((_p.value.sample.length + _p.value.mapping.length + _p.value.location.length : GoInt)).toBasic());
        {
            var _pt:Pointer<ValueType_> = _p.value.periodType;
            if (_pt != null && !_pt.isNil()) {
                _ss = _ss.__append__(stdgo.fmt.Fmt.sprintf("PeriodType: %s %s", Go.toInterface(_pt.value.type), Go.toInterface(_pt.value.unit)));
            };
        };
        _ss = _ss.__append__(stdgo.fmt.Fmt.sprintf("Period: %d", Go.toInterface(_p.value.period)));
        if (_p.value.timeNanos != ((0 : GoInt64))) {
            _ss = _ss.__append__(stdgo.fmt.Fmt.sprintf("Time: %v", Go.toInterface(stdgo.time.Time.unix(((0 : GoInt64)), _p.value.timeNanos).__copy__())));
        };
        if (_p.value.durationNanos != ((0 : GoInt64))) {
            _ss = _ss.__append__(stdgo.fmt.Fmt.sprintf("Duration: %v", Go.toInterface(new stdgo.time.Time.Duration(_p.value.durationNanos))));
        };
        _ss = _ss.__append__("Samples:");
        var _sh1:GoString = (("" : GoString));
        for (_s in _p.value.sampleType) {
            _sh1 = _sh1 + stdgo.fmt.Fmt.sprintf("%s/%s ", Go.toInterface(_s.value.type), Go.toInterface(_s.value.unit));
        };
        _ss = _ss.__append__(stdgo.strings.Strings.trimSpace(_sh1));
        for (_s in _p.value.sample) {
            var _sv:GoString = (("" : GoString));
            for (_v in _s.value.value) {
                _sv = stdgo.fmt.Fmt.sprintf("%s %10d", Go.toInterface(_sv), Go.toInterface(_v));
            };
            _sv = _sv + ((": " : GoString));
            for (_l in _s.value.location) {
                _sv = _sv + stdgo.fmt.Fmt.sprintf("%d ", Go.toInterface(_l.value.id));
            };
            _ss = _ss.__append__(_sv);
            final _labelHeader:GoString = "                ";
            if ((_s.value.label == null ? 0 : _s.value.label.length) > ((0 : GoInt))) {
                var _ls:GoString = _labelHeader;
                {
                    var _k;
                    var _v;
                    for (_obj in _s.value.label.keyValueIterator()) {
                        _k = _obj.key;
                        _v = _obj.value;
                        _ls = _ls + stdgo.fmt.Fmt.sprintf("%s:%v ", Go.toInterface(_k), Go.toInterface(_v));
                    };
                };
                _ss = _ss.__append__(_ls);
            };
            if ((_s.value.numLabel == null ? 0 : _s.value.numLabel.length) > ((0 : GoInt))) {
                var _ls:GoString = _labelHeader;
                {
                    var _k;
                    var _v;
                    for (_obj in _s.value.numLabel.keyValueIterator()) {
                        _k = _obj.key;
                        _v = _obj.value;
                        _ls = _ls + stdgo.fmt.Fmt.sprintf("%s:%v ", Go.toInterface(_k), Go.toInterface(_v));
                    };
                };
                _ss = _ss.__append__(_ls);
            };
        };
        _ss = _ss.__append__("Locations");
        for (_l in _p.value.location) {
            var _locStr:GoString = stdgo.fmt.Fmt.sprintf("%6d: %#x ", Go.toInterface(_l.value.id), Go.toInterface(_l.value.address));
            {
                var _m:Pointer<Mapping> = _l.value.mapping;
                if (_m != null && !_m.isNil()) {
                    _locStr = _locStr + stdgo.fmt.Fmt.sprintf("M=%d ", Go.toInterface(_m.value.id));
                };
            };
            if (_l.value.line.length == ((0 : GoInt))) {
                _ss = _ss.__append__(_locStr);
            };
            {
                var _li;
                for (_obj in _l.value.line.keyValueIterator()) {
                    _li = _obj.key;
                    var _lnStr:GoString = "??";
                    {
                        var _fn:Pointer<Function> = _l.value.line[_li].function_;
                        if (_fn != null && !_fn.isNil()) {
                            _lnStr = stdgo.fmt.Fmt.sprintf("%s %s:%d s=%d", Go.toInterface(_fn.value.name), Go.toInterface(_fn.value.filename), Go.toInterface(_l.value.line[_li].line), Go.toInterface(_fn.value.startLine));
                            if (_fn.value.name != _fn.value.systemName) {
                                _lnStr = _lnStr + (("(" : GoString)) + _fn.value.systemName + ((")" : GoString));
                            };
                        };
                    };
                    _ss = _ss.__append__(_locStr + _lnStr);
                    _locStr = "             ";
                };
            };
        };
        _ss = _ss.__append__("Mappings");
        for (_m in _p.value.mapping) {
            var _bits:GoString = "";
            if (_m.value.hasFunctions) {
                _bits = _bits + ("[FN]");
            };
            if (_m.value.hasFilenames) {
                _bits = _bits + ("[FL]");
            };
            if (_m.value.hasLineNumbers) {
                _bits = _bits + ("[LN]");
            };
            if (_m.value.hasInlineFrames) {
                _bits = _bits + ("[IN]");
            };
            _ss = _ss.__append__(stdgo.fmt.Fmt.sprintf("%d: %#x/%#x/%#x %s %s %s", Go.toInterface(_m.value.id), Go.toInterface(_m.value.start), Go.toInterface(_m.value.limit), Go.toInterface(_m.value.offset), Go.toInterface(_m.value.file), Go.toInterface(_m.value.buildID), Go.toInterface(_bits)));
        };
        return stdgo.strings.Strings.join(_ss, "\n") + (("\n" : GoString));
    }
    public function aggregate(_inlineFrame:Bool, _function:Bool, _filename:Bool, _linenumber:Bool, _address:Bool):Error {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        for (_m in _p.value.mapping) {
            _m.value.hasInlineFrames = _m.value.hasInlineFrames && _inlineFrame;
            _m.value.hasFunctions = _m.value.hasFunctions && _function;
            _m.value.hasFilenames = _m.value.hasFilenames && _filename;
            _m.value.hasLineNumbers = _m.value.hasLineNumbers && _linenumber;
        };
        if (!_function || !_filename) {
            for (_f in _p.value.function_) {
                if (!_function) {
                    _f.value.name = "";
                    _f.value.systemName = "";
                };
                if (!_filename) {
                    _f.value.filename = "";
                };
            };
        };
        if (!_inlineFrame || !_address || !_linenumber) {
            for (_l in _p.value.location) {
                if (!_inlineFrame && _l.value.line.length > ((1 : GoInt))) {
                    _l.value.line = _l.value.line.__slice__(_l.value.line.length - ((1 : GoInt)));
                };
                if (!_linenumber) {
                    {
                        var _i;
                        for (_obj in _l.value.line.keyValueIterator()) {
                            _i = _obj.key;
                            _l.value.line[_i].line = ((0 : GoInt64));
                        };
                    };
                };
                if (!_address) {
                    _l.value.address = ((0 : GoUInt64));
                };
            };
        };
        return _p.value.checkValid();
    }
    public function checkValid():Error {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _sampleLen:GoInt = _p.value.sampleType.length;
        if (_sampleLen == ((0 : GoInt)) && _p.value.sample.length != ((0 : GoInt))) {
            return stdgo.fmt.Fmt.errorf("missing sample type information");
        };
        for (_s in _p.value.sample) {
            if (_s.value.value.length != _sampleLen) {
                return stdgo.fmt.Fmt.errorf("mismatch: sample has: %d values vs. %d types", Go.toInterface(_s.value.value.length), Go.toInterface(_p.value.sampleType.length));
            };
        };
        var _mappings:GoMap<GoUInt64, Pointer<Mapping>> = new GoMap<GoUInt64, Pointer<Mapping>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "limit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "file", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "buildID", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "hasFunctions", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasFilenames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasLineNumbers", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasInlineFrames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_fileX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_buildIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }])))))));
        for (_m in _p.value.mapping) {
            if (_m.value.id == ((0 : GoUInt64))) {
                return stdgo.fmt.Fmt.errorf("found mapping with reserved ID=0");
            };
            if (_mappings[_m.value.id] != null && !_mappings[_m.value.id].isNil()) {
                return stdgo.fmt.Fmt.errorf("multiple mappings with same id: %d", Go.toInterface(_m.value.id));
            };
            _mappings[_m.value.id] = _m;
        };
        var _functions:GoMap<GoUInt64, Pointer<Function>> = new GoMap<GoUInt64, Pointer<Function>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Function", [], stdgo.reflect.Reflect.GoType.named("internal/profile.Function", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "systemName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "filename", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_nameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_systemNameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_filenameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }])))))));
        for (_f in _p.value.function_) {
            if (_f.value.id == ((0 : GoUInt64))) {
                return stdgo.fmt.Fmt.errorf("found function with reserved ID=0");
            };
            if (_functions[_f.value.id] != null && !_functions[_f.value.id].isNil()) {
                return stdgo.fmt.Fmt.errorf("multiple functions with same id: %d", Go.toInterface(_f.value.id));
            };
            _functions[_f.value.id] = _f;
        };
        var _locations:GoMap<GoUInt64, Pointer<Location>> = new GoMap<GoUInt64, Pointer<Location>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Location", [], stdgo.reflect.Reflect.GoType.named("internal/profile.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "mapping", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "limit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "file", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "buildID", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "hasFunctions", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasFilenames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasLineNumbers", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasInlineFrames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_fileX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_buildIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }])))) }, { name : "address", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("internal/profile.Line", [], stdgo.reflect.Reflect.GoType.structType([{ name : "function_", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Function", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "systemName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "filename", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_nameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_systemNameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_filenameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_functionIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }]))) }, { name : "isFolded", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_mappingIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }])))))));
        for (_l in _p.value.location) {
            if (_l.value.id == ((0 : GoUInt64))) {
                return stdgo.fmt.Fmt.errorf("found location with reserved id=0");
            };
            if (_locations[_l.value.id] != null && !_locations[_l.value.id].isNil()) {
                return stdgo.fmt.Fmt.errorf("multiple locations with same id: %d", Go.toInterface(_l.value.id));
            };
            _locations[_l.value.id] = _l;
            {
                var _m:Pointer<Mapping> = _l.value.mapping;
                if (_m != null && !_m.isNil()) {
                    if (_m.value.id == ((0 : GoUInt64)) || _mappings[_m.value.id] != _m) {
                        return stdgo.fmt.Fmt.errorf("inconsistent mapping %p: %d", Go.toInterface(_m), Go.toInterface(_m.value.id));
                    };
                };
            };
            for (_ln in _l.value.line) {
                {
                    var _f:Pointer<Function> = _ln.function_;
                    if (_f != null && !_f.isNil()) {
                        if (_f.value.id == ((0 : GoUInt64)) || _functions[_f.value.id] != _f) {
                            return stdgo.fmt.Fmt.errorf("inconsistent function %p: %d", Go.toInterface(_f), Go.toInterface(_f.value.id));
                        };
                    };
                };
            };
        };
        return ((null : stdgo.Error));
    }
    public function write(_w:stdgo.io.Io.Writer):Error {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _p.value._preEncode();
        try {
            var _b:Slice<GoUInt8> = _marshal(_p.value);
            var _zw:Pointer<stdgo.compress.gzip.Gzip.Writer> = stdgo.compress.gzip.Gzip.newWriter(_w);
            deferstack.unshift(() -> _zw.value.close());
            var __tmp__ = _zw.value.write(_b), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            {
                for (defer in deferstack) {
                    defer();
                };
                return _err;
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return ((null : stdgo.Error));
            };
        };
    }
    public function _setMain():Void {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _p.value.mapping.length, _i++, {
                var _file:GoString = stdgo.strings.Strings.trimSpace(stdgo.strings.Strings.replaceAll(_p.value.mapping[_i].value.file, "(deleted)", ""));
                if (_file.length == ((0 : GoInt))) {
                    continue;
                };
                if (_libRx.value.findStringSubmatch(_file).length > ((0 : GoInt))) {
                    continue;
                };
                if (stdgo.strings.Strings.hasPrefix(_file, "[")) {
                    continue;
                };
                {
                    final __tmp__0 = _p.value.mapping[((0 : GoInt))];
                    final __tmp__1 = _p.value.mapping[_i];
                    _p.value.mapping[_i] = __tmp__0;
                    _p.value.mapping[((0 : GoInt))] = __tmp__1;
                };
                break;
            });
        };
    }
    public function _compatible(_pb:Pointer<Profile>):Error {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (!_equalValueType(_p.value.periodType, _pb.value.periodType)) {
            return stdgo.fmt.Fmt.errorf("incompatible period types %v and %v", Go.toInterface(_p.value.periodType), Go.toInterface(_pb.value.periodType));
        };
        if (_p.value.sampleType.length != _pb.value.sampleType.length) {
            return stdgo.fmt.Fmt.errorf("incompatible sample types %v and %v", Go.toInterface(_p.value.sampleType), Go.toInterface(_pb.value.sampleType));
        };
        {
            var _i;
            for (_obj in _p.value.sampleType.keyValueIterator()) {
                _i = _obj.key;
                if (!_equalValueType(_p.value.sampleType[_i], _pb.value.sampleType[_i])) {
                    return stdgo.fmt.Fmt.errorf("incompatible sample types %v and %v", Go.toInterface(_p.value.sampleType), Go.toInterface(_pb.value.sampleType));
                };
            };
        };
        return ((null : stdgo.Error));
    }
    public function normalize(_pb:Pointer<Profile>):Error {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _err:stdgo.Error = _p.value._compatible(_pb);
            if (_err != null) {
                return _err;
            };
        };
        var _baseVals:Slice<GoInt64> = new Slice<GoInt64>(...[for (i in 0 ... ((_p.value.sampleType.length : GoInt)).toBasic()) ((0 : GoInt64))]);
        for (_s in _pb.value.sample) {
            {
                var _i;
                var _v;
                for (_obj in _s.value.value.keyValueIterator()) {
                    _i = _obj.key;
                    _v = _obj.value;
                    _baseVals[_i] = _baseVals[_i] + (_v);
                };
            };
        };
        var _srcVals:Slice<GoInt64> = new Slice<GoInt64>(...[for (i in 0 ... ((_p.value.sampleType.length : GoInt)).toBasic()) ((0 : GoInt64))]);
        for (_s in _p.value.sample) {
            {
                var _i;
                var _v;
                for (_obj in _s.value.value.keyValueIterator()) {
                    _i = _obj.key;
                    _v = _obj.value;
                    _srcVals[_i] = _srcVals[_i] + (_v);
                };
            };
        };
        var _normScale:Slice<GoFloat64> = new Slice<GoFloat64>(...[for (i in 0 ... ((_baseVals.length : GoInt)).toBasic()) ((0 : GoFloat64))]);
        {
            var _i;
            for (_obj in _baseVals.keyValueIterator()) {
                _i = _obj.key;
                if (_srcVals[_i] == ((0 : GoInt64))) {
                    _normScale[_i] = ((0 : GoFloat64));
                } else {
                    _normScale[_i] = ((_baseVals[_i] : GoFloat64)) / ((_srcVals[_i] : GoFloat64));
                };
            };
        };
        _p.value.scaleN(_normScale);
        return ((null : stdgo.Error));
    }
    public function _addLegacyFrameInfo():Void {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_isProfileType(_p, _heapzSampleTypes) || _isProfileType(_p, _heapzInUseSampleTypes) || _isProfileType(_p, _heapzAllocSampleTypes)) {
            {
                final __tmp__0 = _allocRxStr;
                final __tmp__1 = _allocSkipRxStr;
                _p.value.dropFrames = __tmp__0;
                _p.value.keepFrames = __tmp__1;
            };
        } else if (_isProfileType(_p, _contentionzSampleTypes)) {
            {
                final __tmp__0 = _lockRxStr;
                final __tmp__1 = "";
                _p.value.dropFrames = __tmp__0;
                _p.value.keepFrames = __tmp__1;
            };
        } else {
            {
                final __tmp__0 = _cpuProfilerRxStr;
                final __tmp__1 = "";
                _p.value.dropFrames = __tmp__0;
                _p.value.keepFrames = __tmp__1;
            };
        };
    }
    public function parseMemoryMap(_rd:stdgo.io.Io.Reader):Error {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _b:Pointer<bufio.Bufio.Reader> = bufio.Bufio.newReader(_rd);
        var _attrs:Slice<GoString> = new Slice<GoString>().nil();
        var _r:Pointer<stdgo.strings.Strings.Replacer> = new Pointer<stdgo.strings.Strings.Replacer>().nil();
        final _delimiter:GoString = "=";
        while (true) {
            var __tmp__ = _b.value.readString((("\n".code : GoRune))), _l:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof)) {
                    return _err;
                };
                if (_l == (("" : GoString))) {
                    break;
                };
            };
            {
                _l = stdgo.strings.Strings.trimSpace(_l);
                if (_l == (("" : GoString))) {
                    continue;
                };
            };
            if (_r != null && !_r.isNil()) {
                _l = _r.value.replace(_l);
            };
            var __tmp__ = _parseMappingEntry(_l), _m:Pointer<Mapping> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (Go.toInterface(_err) == Go.toInterface(_errUnrecognized)) {
                    {
                        var _attr:Slice<GoString> = stdgo.strings.Strings.splitN(_l, _delimiter, ((2 : GoInt)));
                        if (_attr.length == ((2 : GoInt))) {
                            _attrs = _attrs.__append__((("$" : GoString)) + stdgo.strings.Strings.trimSpace(_attr[((0 : GoInt))]), stdgo.strings.Strings.trimSpace(_attr[((1 : GoInt))]));
                            _r = stdgo.strings.Strings.newReplacer(..._attrs.toArray());
                        };
                    };
                    continue;
                };
                return _err;
            };
            if (_m == null || _m.isNil() || (_m.value.file == (("" : GoString)) && _p.value.mapping.length != ((0 : GoInt)))) {
                continue;
            };
            if (_p.value.mapping.length == ((1 : GoInt)) && _p.value.mapping[((0 : GoInt))].value.file == (("" : GoString))) {
                _p.value.mapping[((0 : GoInt))].value.file = _m.value.file;
                continue;
            };
            _p.value.mapping = _p.value.mapping.__append__(_m);
        };
        _p.value._remapLocationIDs();
        _p.value._remapFunctionIDs();
        _p.value._remapMappingIDs();
        return ((null : stdgo.Error));
    }
    public function _remapMappingIDs():Void {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_p.value.mapping.length == ((0 : GoInt))) {
            return;
        };
        {
            var _m:Pointer<Mapping> = _p.value.mapping[((0 : GoInt))];
            if (stdgo.strings.Strings.hasPrefix(_m.value.file, "/anon_hugepage")) {
                if (_p.value.mapping.length > ((1 : GoInt)) && _m.value.limit == _p.value.mapping[((1 : GoInt))].value.start) {
                    _p.value.mapping = _p.value.mapping.__slice__(((1 : GoInt)));
                };
            };
        };
        final _expectedStart:GoUnTypedInt = ((4194304 : GoUnTypedInt));
        {
            var _m:Pointer<Mapping> = _p.value.mapping[((0 : GoInt))];
            if (_m.value.start - _m.value.offset == _expectedStart) {
                _m.value.start = _expectedStart;
                _m.value.offset = ((0 : GoUInt64));
            };
        };
        for (_l in _p.value.location) {
            {
                var _a:GoUInt64 = _l.value.address;
                if (_a != ((0 : GoUInt64))) {
                    for (_m in _p.value.mapping) {
                        if (_m.value.start <= _a && _a < _m.value.limit) {
                            _l.value.mapping = _m;
                            break;
                        };
                    };
                };
            };
        };
        {
            var _i;
            var _m;
            for (_obj in _p.value.mapping.keyValueIterator()) {
                _i = _obj.key;
                _m = _obj.value;
                _m.value.id = (((_i + ((1 : GoInt))) : GoUInt64));
            };
        };
    }
    public function _remapFunctionIDs():Void {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _seen:GoMap<Pointer<Function>, Bool> = new GoMap<Pointer<Function>, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Function", [], stdgo.reflect.Reflect.GoType.named("internal/profile.Function", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "systemName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "filename", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_nameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_systemNameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_filenameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }])))), stdgo.reflect.Reflect.GoType.basic(bool_kind))));
        var _fns:Slice<Pointer<Function>> = new Slice<Pointer<Function>>().nil();
        for (_l in _p.value.location) {
            for (_ln in _l.value.line) {
                var _fn:Pointer<Function> = _ln.function_;
                if (_fn == null || _fn.isNil() || _seen[_fn]) {
                    continue;
                };
                _fn.value.id = (((_fns.length + ((1 : GoInt))) : GoUInt64));
                _fns = _fns.__append__(_fn);
                _seen[_fn] = true;
            };
        };
        _p.value.function_ = _fns;
    }
    public function _remapLocationIDs():Void {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _seen:GoMap<Pointer<Location>, Bool> = new GoMap<Pointer<Location>, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Location", [], stdgo.reflect.Reflect.GoType.named("internal/profile.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "mapping", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "limit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "file", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "buildID", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "hasFunctions", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasFilenames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasLineNumbers", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasInlineFrames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_fileX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_buildIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }])))) }, { name : "address", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("internal/profile.Line", [], stdgo.reflect.Reflect.GoType.structType([{ name : "function_", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Function", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "systemName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "filename", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_nameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_systemNameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_filenameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_functionIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }]))) }, { name : "isFolded", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_mappingIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }])))), stdgo.reflect.Reflect.GoType.basic(bool_kind))));
        var _locs:Slice<Pointer<Location>> = new Slice<Pointer<Location>>().nil();
        for (_s in _p.value.sample) {
            for (_l in _s.value.location) {
                if (_seen[_l]) {
                    continue;
                };
                _l.value.id = (((_locs.length + ((1 : GoInt))) : GoUInt64));
                _locs = _locs.__append__(_l);
                _seen[_l] = true;
            };
        };
        _p.value.location = _locs;
    }
    public function filterSamplesByTag(_focus:TagMatch, _ignore:TagMatch):{ var _0 : Bool; var _1 : Bool; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _fm:Bool = false, _im:Bool = false;
        var _samples:Slice<Pointer<Sample>> = new Slice<Pointer<Sample>>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new Pointer<Sample>().nil()]).setCap(((_p.value.sample.length : GoInt)).toBasic());
        for (_s in _p.value.sample) {
            var __tmp__ = _focusedSample(_s, _focus.__copy__(), _ignore.__copy__()), _focused:Bool = __tmp__._0, _ignored:Bool = __tmp__._1;
            _fm = _fm || _focused;
            _im = _im || _ignored;
            if (_focused && !_ignored) {
                _samples = _samples.__append__(_s);
            };
        };
        _p.value.sample = _samples;
        return { _0 : _fm, _1 : _im };
    }
    public function filterSamplesByName(_focus:Pointer<stdgo.regexp.Regexp.Regexp>, _ignore:Pointer<stdgo.regexp.Regexp.Regexp>, _hide:Pointer<stdgo.regexp.Regexp.Regexp>):{ var _0 : Bool; var _1 : Bool; var _2 : Bool; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _fm:Bool = false, _im:Bool = false, _hm:Bool = false;
        var _focusOrIgnore:GoMap<GoUInt64, Bool> = new GoMap<GoUInt64, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind))));
        var _hidden:GoMap<GoUInt64, Bool> = new GoMap<GoUInt64, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind))));
        for (_l in _p.value.location) {
            if (_ignore != null && !_ignore.isNil() && _l.value._matchesName(_ignore)) {
                _im = true;
                _focusOrIgnore[_l.value.id] = false;
            } else if (_focus == null || _focus.isNil() || _l.value._matchesName(_focus)) {
                _fm = true;
                _focusOrIgnore[_l.value.id] = true;
            };
            if (_hide != null && !_hide.isNil() && _l.value._matchesName(_hide)) {
                _hm = true;
                _l.value.line = _l.value._unmatchedLines(_hide);
                if (_l.value.line.length == ((0 : GoInt))) {
                    _hidden[_l.value.id] = true;
                };
            };
        };
        var _s:Slice<Pointer<Sample>> = new Slice<Pointer<Sample>>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new Pointer<Sample>().nil()]).setCap(((_p.value.sample.length : GoInt)).toBasic());
        for (_sample in _p.value.sample) {
            if (_focusedAndNotIgnored(_sample.value.location, _focusOrIgnore)) {
                if ((_hidden == null ? 0 : _hidden.length) > ((0 : GoInt))) {
                    var _locs:Slice<Pointer<Location>> = new Slice<Pointer<Location>>().nil();
                    for (_loc in _sample.value.location) {
                        if (!_hidden[_loc.value.id]) {
                            _locs = _locs.__append__(_loc);
                        };
                    };
                    if (_locs.length == ((0 : GoInt))) {
                        continue;
                    };
                    _sample.value.location = _locs;
                };
                _s = _s.__append__(_sample);
            };
        };
        _p.value.sample = _s;
        return { _0 : _fm, _1 : _im, _2 : _hm };
    }
    public function _postDecode():Error {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _err:Error = ((null : stdgo.Error));
        var _mappings:GoMap<GoUInt64, Pointer<Mapping>> = new GoMap<GoUInt64, Pointer<Mapping>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "limit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "file", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "buildID", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "hasFunctions", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasFilenames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasLineNumbers", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasInlineFrames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_fileX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_buildIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }])))))));
        for (_m in _p.value.mapping) {
            {
                var __tmp__ = _getString(_p.value._stringTable, Go.pointer(_m.value._fileX), _err);
                _m.value.file = __tmp__._0;
                _err = __tmp__._1;
            };
            {
                var __tmp__ = _getString(_p.value._stringTable, Go.pointer(_m.value._buildIDX), _err);
                _m.value.buildID = __tmp__._0;
                _err = __tmp__._1;
            };
            _mappings[_m.value.id] = _m;
        };
        var _functions:GoMap<GoUInt64, Pointer<Function>> = new GoMap<GoUInt64, Pointer<Function>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Function", [], stdgo.reflect.Reflect.GoType.named("internal/profile.Function", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "systemName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "filename", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_nameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_systemNameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_filenameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }])))))));
        for (_f in _p.value.function_) {
            {
                var __tmp__ = _getString(_p.value._stringTable, Go.pointer(_f.value._nameX), _err);
                _f.value.name = __tmp__._0;
                _err = __tmp__._1;
            };
            {
                var __tmp__ = _getString(_p.value._stringTable, Go.pointer(_f.value._systemNameX), _err);
                _f.value.systemName = __tmp__._0;
                _err = __tmp__._1;
            };
            {
                var __tmp__ = _getString(_p.value._stringTable, Go.pointer(_f.value._filenameX), _err);
                _f.value.filename = __tmp__._0;
                _err = __tmp__._1;
            };
            _functions[_f.value.id] = _f;
        };
        var _locations:GoMap<GoUInt64, Pointer<Location>> = new GoMap<GoUInt64, Pointer<Location>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Location", [], stdgo.reflect.Reflect.GoType.named("internal/profile.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "mapping", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "limit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "file", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "buildID", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "hasFunctions", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasFilenames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasLineNumbers", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasInlineFrames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_fileX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_buildIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }])))) }, { name : "address", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("internal/profile.Line", [], stdgo.reflect.Reflect.GoType.structType([{ name : "function_", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Function", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "systemName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "filename", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_nameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_systemNameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_filenameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_functionIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }]))) }, { name : "isFolded", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_mappingIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }])))))));
        for (_l in _p.value.location) {
            _l.value.mapping = _mappings[_l.value._mappingIDX];
            _l.value._mappingIDX = ((0 : GoUInt64));
            {
                var _i;
                var _ln;
                for (_obj in _l.value.line.keyValueIterator()) {
                    _i = _obj.key;
                    _ln = _obj.value;
                    {
                        var _id:GoUInt64 = _ln._functionIDX;
                        if (_id != ((0 : GoUInt64))) {
                            _l.value.line[_i].function_ = _functions[_id];
                            if (_l.value.line[_i].function_ == null || _l.value.line[_i].function_.isNil()) {
                                return stdgo.fmt.Fmt.errorf("Function ID %d not found", Go.toInterface(_id));
                            };
                            _l.value.line[_i]._functionIDX = ((0 : GoUInt64));
                        };
                    };
                };
            };
            _locations[_l.value.id] = _l;
        };
        for (_st in _p.value.sampleType) {
            {
                var __tmp__ = _getString(_p.value._stringTable, Go.pointer(_st.value._typeX), _err);
                _st.value.type = __tmp__._0;
                _err = __tmp__._1;
            };
            {
                var __tmp__ = _getString(_p.value._stringTable, Go.pointer(_st.value._unitX), _err);
                _st.value.unit = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        for (_s in _p.value.sample) {
            var _labels:GoMap<GoString, Slice<GoString>> = new GoMap<GoString, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)))));
            var _numLabels:GoMap<GoString, Slice<GoInt64>> = new GoMap<GoString, Slice<GoInt64>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int64_kind)))));
            for (_l in _s.value._labelX) {
                var _key:GoString = (("" : GoString)), _value:GoString = (("" : GoString));
                {
                    var __tmp__ = _getString(_p.value._stringTable, Go.pointer(_l._keyX), _err);
                    _key = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_l._strX != ((0 : GoInt64))) {
                    {
                        var __tmp__ = _getString(_p.value._stringTable, Go.pointer(_l._strX), _err);
                        _value = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    _labels[_key] = _labels[_key].__append__(_value);
                } else {
                    _numLabels[_key] = _numLabels[_key].__append__(_l._numX);
                };
            };
            if ((_labels == null ? 0 : _labels.length) > ((0 : GoInt))) {
                _s.value.label = _labels;
            };
            if ((_numLabels == null ? 0 : _numLabels.length) > ((0 : GoInt))) {
                _s.value.numLabel = _numLabels;
            };
            _s.value.location = new Slice<Pointer<Location>>().nil();
            for (_lid in _s.value._locationIDX) {
                _s.value.location = _s.value.location.__append__(_locations[_lid]);
            };
            _s.value._locationIDX = new Slice<GoUInt64>().nil();
        };
        {
            var __tmp__ = _getString(_p.value._stringTable, Go.pointer(_p.value._dropFramesX), _err);
            _p.value.dropFrames = __tmp__._0;
            _err = __tmp__._1;
        };
        {
            var __tmp__ = _getString(_p.value._stringTable, Go.pointer(_p.value._keepFramesX), _err);
            _p.value.keepFrames = __tmp__._0;
            _err = __tmp__._1;
        };
        {
            var _pt:Pointer<ValueType_> = _p.value.periodType;
            if (_pt == null || _pt.isNil()) {
                _p.value.periodType = Go.pointer(new ValueType_());
            };
        };
        {
            var _pt:Pointer<ValueType_> = _p.value.periodType;
            if (_pt != null && !_pt.isNil()) {
                {
                    var __tmp__ = _getString(_p.value._stringTable, Go.pointer(_pt.value._typeX), _err);
                    _pt.value.type = __tmp__._0;
                    _err = __tmp__._1;
                };
                {
                    var __tmp__ = _getString(_p.value._stringTable, Go.pointer(_pt.value._unitX), _err);
                    _pt.value.unit = __tmp__._0;
                    _err = __tmp__._1;
                };
            };
        };
        for (_i in _p.value._commentX) {
            var _c:GoString = (("" : GoString));
            {
                var __tmp__ = _getString(_p.value._stringTable, Go.pointer(_i), _err);
                _c = __tmp__._0;
                _err = __tmp__._1;
            };
            _p.value.comments = _p.value.comments.__append__(_c);
        };
        _p.value._commentX = new Slice<GoInt64>().nil();
        {
            var __tmp__ = _getString(_p.value._stringTable, Go.pointer(_p.value._defaultSampleTypeX), _err);
            _p.value.defaultSampleType = __tmp__._0;
            _err = __tmp__._1;
        };
        _p.value._stringTable = new Slice<GoString>().nil();
        return ((null : stdgo.Error));
    }
    public function _encode(_b:Pointer<T_buffer>):Void {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        for (_x in _p.value.sampleType) {
            _encodeMessage(_b, ((1 : GoInt)), _x.value);
        };
        for (_x in _p.value.sample) {
            _encodeMessage(_b, ((2 : GoInt)), _x.value);
        };
        for (_x in _p.value.mapping) {
            _encodeMessage(_b, ((3 : GoInt)), _x.value);
        };
        for (_x in _p.value.location) {
            _encodeMessage(_b, ((4 : GoInt)), _x.value);
        };
        for (_x in _p.value.function_) {
            _encodeMessage(_b, ((5 : GoInt)), _x.value);
        };
        _encodeStrings(_b, ((6 : GoInt)), _p.value._stringTable);
        _encodeInt64Opt(_b, ((7 : GoInt)), _p.value._dropFramesX);
        _encodeInt64Opt(_b, ((8 : GoInt)), _p.value._keepFramesX);
        _encodeInt64Opt(_b, ((9 : GoInt)), _p.value.timeNanos);
        _encodeInt64Opt(_b, ((10 : GoInt)), _p.value.durationNanos);
        {
            var _pt:Pointer<ValueType_> = _p.value.periodType;
            if (_pt != null && !_pt.isNil() && (_pt.value._typeX != ((0 : GoInt64)) || _pt.value._unitX != ((0 : GoInt64)))) {
                _encodeMessage(_b, ((11 : GoInt)), _p.value.periodType.value);
            };
        };
        _encodeInt64Opt(_b, ((12 : GoInt)), _p.value.period);
    }
    public function _preEncode():Void {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _strings:GoMap<GoString, GoInt> = new GoMap<GoString, GoInt>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(int_kind))));
        _addString(_strings, "");
        for (_st in _p.value.sampleType) {
            _st.value._typeX = _addString(_strings, _st.value.type);
            _st.value._unitX = _addString(_strings, _st.value.unit);
        };
        for (_s in _p.value.sample) {
            _s.value._labelX = new Slice<Label>().nil();
            var _keys:Slice<GoString> = new Slice<GoString>().nil();
            {
                var _k;
                for (_obj in _s.value.label.keyValueIterator()) {
                    _k = _obj.key;
                    _keys = _keys.__append__(_k);
                };
            };
            stdgo.sort.Sort.strings(_keys);
            for (_k in _keys) {
                var _vs:Slice<GoString> = _s.value.label[_k];
                for (_v in _vs) {
                    _s.value._labelX = _s.value._labelX.__append__((({ _keyX : _addString(_strings, _k), _strX : _addString(_strings, _v), _numX : 0 } : Label)).__copy__());
                };
            };
            var _numKeys:Slice<GoString> = new Slice<GoString>().nil();
            {
                var _k;
                for (_obj in _s.value.numLabel.keyValueIterator()) {
                    _k = _obj.key;
                    _numKeys = _numKeys.__append__(_k);
                };
            };
            stdgo.sort.Sort.strings(_numKeys);
            for (_k in _numKeys) {
                var _vs:Slice<GoInt64> = _s.value.numLabel[_k];
                for (_v in _vs) {
                    _s.value._labelX = _s.value._labelX.__append__((({ _keyX : _addString(_strings, _k), _numX : _v, _strX : 0 } : Label)).__copy__());
                };
            };
            _s.value._locationIDX = new Slice<GoUInt64>().nil();
            for (_l in _s.value.location) {
                _s.value._locationIDX = _s.value._locationIDX.__append__(_l.value.id);
            };
        };
        for (_m in _p.value.mapping) {
            _m.value._fileX = _addString(_strings, _m.value.file);
            _m.value._buildIDX = _addString(_strings, _m.value.buildID);
        };
        for (_l in _p.value.location) {
            {
                var _i;
                var _ln;
                for (_obj in _l.value.line.keyValueIterator()) {
                    _i = _obj.key;
                    _ln = _obj.value;
                    if (_ln.function_ != null && !_ln.function_.isNil()) {
                        _l.value.line[_i]._functionIDX = _ln.function_.value.id;
                    } else {
                        _l.value.line[_i]._functionIDX = ((0 : GoUInt64));
                    };
                };
            };
            if (_l.value.mapping != null && !_l.value.mapping.isNil()) {
                _l.value._mappingIDX = _l.value.mapping.value.id;
            } else {
                _l.value._mappingIDX = ((0 : GoUInt64));
            };
        };
        for (_f in _p.value.function_) {
            _f.value._nameX = _addString(_strings, _f.value.name);
            _f.value._systemNameX = _addString(_strings, _f.value.systemName);
            _f.value._filenameX = _addString(_strings, _f.value.filename);
        };
        _p.value._dropFramesX = _addString(_strings, _p.value.dropFrames);
        _p.value._keepFramesX = _addString(_strings, _p.value.keepFrames);
        {
            var _pt:Pointer<ValueType_> = _p.value.periodType;
            if (_pt != null && !_pt.isNil()) {
                _pt.value._typeX = _addString(_strings, _pt.value.type);
                _pt.value._unitX = _addString(_strings, _pt.value.unit);
            };
        };
        _p.value._stringTable = new Slice<GoString>(...[for (i in 0 ... (((_strings == null ? 0 : _strings.length) : GoInt)).toBasic()) (("" : GoString))]);
        {
            var _s;
            var _i;
            for (_obj in _strings.keyValueIterator()) {
                _s = _obj.key;
                _i = _obj.value;
                _p.value._stringTable[_i] = _s;
            };
        };
    }
    public function _decoder():Slice<T_decoder> {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _profileDecoder;
    }
    public var sampleType : Slice<Pointer<ValueType_>> = new Slice<Pointer<ValueType_>>().nil();
    public var defaultSampleType : GoString = (("" : GoString));
    public var sample : Slice<Pointer<Sample>> = new Slice<Pointer<Sample>>().nil();
    public var mapping : Slice<Pointer<Mapping>> = new Slice<Pointer<Mapping>>().nil();
    public var location : Slice<Pointer<Location>> = new Slice<Pointer<Location>>().nil();
    public var function_ : Slice<Pointer<Function>> = new Slice<Pointer<Function>>().nil();
    public var comments : Slice<GoString> = new Slice<GoString>().nil();
    public var dropFrames : GoString = (("" : GoString));
    public var keepFrames : GoString = (("" : GoString));
    public var timeNanos : GoInt64 = ((0 : GoInt64));
    public var durationNanos : GoInt64 = ((0 : GoInt64));
    public var periodType : Pointer<ValueType_> = new Pointer<ValueType_>().nil();
    public var period : GoInt64 = ((0 : GoInt64));
    public var _commentX : Slice<GoInt64> = new Slice<GoInt64>().nil();
    public var _dropFramesX : GoInt64 = ((0 : GoInt64));
    public var _keepFramesX : GoInt64 = ((0 : GoInt64));
    public var _stringTable : Slice<GoString> = new Slice<GoString>().nil();
    public var _defaultSampleTypeX : GoInt64 = ((0 : GoInt64));
    public function new(?sampleType:Slice<Pointer<ValueType_>>, ?defaultSampleType:GoString, ?sample:Slice<Pointer<Sample>>, ?mapping:Slice<Pointer<Mapping>>, ?location:Slice<Pointer<Location>>, ?function_:Slice<Pointer<Function>>, ?comments:Slice<GoString>, ?dropFrames:GoString, ?keepFrames:GoString, ?timeNanos:GoInt64, ?durationNanos:GoInt64, ?periodType:Pointer<ValueType_>, ?period:GoInt64, ?_commentX:Slice<GoInt64>, ?_dropFramesX:GoInt64, ?_keepFramesX:GoInt64, ?_stringTable:Slice<GoString>, ?_defaultSampleTypeX:GoInt64) stdgo.internal.Macro.initLocals();
    public function __underlying__():AnyInterface return Go.toInterface(this);
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
    public function __set__(__tmp__) {
        this.sampleType = __tmp__.sampleType;
        this.defaultSampleType = __tmp__.defaultSampleType;
        this.sample = __tmp__.sample;
        this.mapping = __tmp__.mapping;
        this.location = __tmp__.location;
        this.function_ = __tmp__.function_;
        this.comments = __tmp__.comments;
        this.dropFrames = __tmp__.dropFrames;
        this.keepFrames = __tmp__.keepFrames;
        this.timeNanos = __tmp__.timeNanos;
        this.durationNanos = __tmp__.durationNanos;
        this.periodType = __tmp__.periodType;
        this.period = __tmp__.period;
        this._commentX = __tmp__._commentX;
        this._dropFramesX = __tmp__._dropFramesX;
        this._keepFramesX = __tmp__._keepFramesX;
        this._stringTable = __tmp__._stringTable;
        this._defaultSampleTypeX = __tmp__._defaultSampleTypeX;
        return this;
    }
}
@:structInit class ValueType_ {
    public function _encode(_b:Pointer<T_buffer>):Void {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _encodeInt64Opt(_b, ((1 : GoInt)), _p.value._typeX);
        _encodeInt64Opt(_b, ((2 : GoInt)), _p.value._unitX);
    }
    public function _decoder():Slice<T_decoder> {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _valueTypeDecoder;
    }
    public var type : GoString = (("" : GoString));
    public var unit : GoString = (("" : GoString));
    public var _typeX : GoInt64 = ((0 : GoInt64));
    public var _unitX : GoInt64 = ((0 : GoInt64));
    public function new(?type:GoString, ?unit:GoString, ?_typeX:GoInt64, ?_unitX:GoInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(type) + " " + Go.string(unit) + " " + Go.string(_typeX) + " " + Go.string(_unitX) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ValueType_(type, unit, _typeX, _unitX);
    }
    public function __set__(__tmp__) {
        this.type = __tmp__.type;
        this.unit = __tmp__.unit;
        this._typeX = __tmp__._typeX;
        this._unitX = __tmp__._unitX;
        return this;
    }
}
@:structInit class Sample {
    public function _key():T_sampleKey {
        var _sample = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _ids:Slice<GoString> = new Slice<GoString>(...[for (i in 0 ... ((_sample.value.location.length : GoInt)).toBasic()) (("" : GoString))]);
        {
            var _i;
            var _l;
            for (_obj in _sample.value.location.keyValueIterator()) {
                _i = _obj.key;
                _l = _obj.value;
                _ids[_i] = stdgo.strconv.Strconv.formatUint(_l.value.id, ((16 : GoInt)));
            };
        };
        var _labels:Slice<GoString> = new Slice<GoString>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) (("" : GoString))]).setCap((((_sample.value.label == null ? 0 : _sample.value.label.length) : GoInt)).toBasic());
        {
            var _k;
            var _v;
            for (_obj in _sample.value.label.keyValueIterator()) {
                _k = _obj.key;
                _v = _obj.value;
                _labels = _labels.__append__(stdgo.fmt.Fmt.sprintf("%q%q", Go.toInterface(_k), Go.toInterface(_v)));
            };
        };
        stdgo.sort.Sort.strings(_labels);
        var _numlabels:Slice<GoString> = new Slice<GoString>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) (("" : GoString))]).setCap((((_sample.value.numLabel == null ? 0 : _sample.value.numLabel.length) : GoInt)).toBasic());
        {
            var _k;
            var _v;
            for (_obj in _sample.value.numLabel.keyValueIterator()) {
                _k = _obj.key;
                _v = _obj.value;
                _numlabels = _numlabels.__append__(stdgo.fmt.Fmt.sprintf("%q%x%x", Go.toInterface(_k), Go.toInterface(_v), Go.toInterface(_sample.value.numUnit[_k])));
            };
        };
        stdgo.sort.Sort.strings(_numlabels);
        return new T_sampleKey(stdgo.strings.Strings.join(_ids, "|"), stdgo.strings.Strings.join(_labels, ""), stdgo.strings.Strings.join(_numlabels, "")).__copy__();
    }
    public function _encode(_b:Pointer<T_buffer>):Void {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _encodeUint64s(_b, ((1 : GoInt)), _p.value._locationIDX);
        for (_x in _p.value.value) {
            _encodeInt64(_b, ((2 : GoInt)), _x);
        };
        for (_x in _p.value._labelX) {
            _encodeMessage(_b, ((3 : GoInt)), _x.__copy__());
        };
    }
    public function _decoder():Slice<T_decoder> {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _sampleDecoder;
    }
    public var location : Slice<Pointer<Location>> = new Slice<Pointer<Location>>().nil();
    public var value : Slice<GoInt64> = new Slice<GoInt64>().nil();
    public var label : GoMap<GoString, Slice<GoString>> = new GoMap<GoString, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))).nil();
    public var numLabel : GoMap<GoString, Slice<GoInt64>> = new GoMap<GoString, Slice<GoInt64>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int64_kind))))).nil();
    public var numUnit : GoMap<GoString, Slice<GoString>> = new GoMap<GoString, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))).nil();
    public var _locationIDX : Slice<GoUInt64> = new Slice<GoUInt64>().nil();
    public var _labelX : Slice<Label> = new Slice<Label>().nil();
    public function new(?location:Slice<Pointer<Location>>, ?value:Slice<GoInt64>, ?label:GoMap<GoString, Slice<GoString>>, ?numLabel:GoMap<GoString, Slice<GoInt64>>, ?numUnit:GoMap<GoString, Slice<GoString>>, ?_locationIDX:Slice<GoUInt64>, ?_labelX:Slice<Label>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(location) + " " + Go.string(value) + " " + Go.string(label) + " " + Go.string(numLabel) + " " + Go.string(numUnit) + " " + Go.string(_locationIDX) + " " + Go.string(_labelX) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Sample(location, value, label, numLabel, numUnit, _locationIDX, _labelX);
    }
    public function __set__(__tmp__) {
        this.location = __tmp__.location;
        this.value = __tmp__.value;
        this.label = __tmp__.label;
        this.numLabel = __tmp__.numLabel;
        this.numUnit = __tmp__.numUnit;
        this._locationIDX = __tmp__._locationIDX;
        this._labelX = __tmp__._labelX;
        return this;
    }
}
@:structInit class Label {
    public function _encode(_b:Pointer<T_buffer>):Void {
        var _p = this.__copy__();
        _encodeInt64Opt(_b, ((1 : GoInt)), _p._keyX);
        _encodeInt64Opt(_b, ((2 : GoInt)), _p._strX);
        _encodeInt64Opt(_b, ((3 : GoInt)), _p._numX);
    }
    public function _decoder():Slice<T_decoder> {
        var _p = this.__copy__();
        return _labelDecoder;
    }
    public var _keyX : GoInt64 = ((0 : GoInt64));
    public var _strX : GoInt64 = ((0 : GoInt64));
    public var _numX : GoInt64 = ((0 : GoInt64));
    public function new(?_keyX:GoInt64, ?_strX:GoInt64, ?_numX:GoInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_keyX) + " " + Go.string(_strX) + " " + Go.string(_numX) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Label(_keyX, _strX, _numX);
    }
    public function __set__(__tmp__) {
        this._keyX = __tmp__._keyX;
        this._strX = __tmp__._strX;
        this._numX = __tmp__._numX;
        return this;
    }
}
@:structInit class Mapping {
    public function _key():T_mappingKey {
        var _m = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        final _mapsizeRounding:GoUnTypedInt = ((4096 : GoUnTypedInt));
        var _size:GoUInt64 = _m.value.limit - _m.value.start;
        _size = _size + _mapsizeRounding - ((1 : GoUInt64));
        _size = _size - (_size % _mapsizeRounding);
        var _key:T_mappingKey = (({ _size : _size, _offset : _m.value.offset, _buildIDOrFile : "" } : T_mappingKey)).__copy__();
        if (_m.value.buildID != (("" : GoString))) {
            _key._buildIDOrFile = _m.value.buildID;
        } else if (_m.value.file != (("" : GoString))) {
            _key._buildIDOrFile = _m.value.file;
        } else {};
        return _key.__copy__();
    }
    public function _encode(_b:Pointer<T_buffer>):Void {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _encodeUint64Opt(_b, ((1 : GoInt)), _p.value.id);
        _encodeUint64Opt(_b, ((2 : GoInt)), _p.value.start);
        _encodeUint64Opt(_b, ((3 : GoInt)), _p.value.limit);
        _encodeUint64Opt(_b, ((4 : GoInt)), _p.value.offset);
        _encodeInt64Opt(_b, ((5 : GoInt)), _p.value._fileX);
        _encodeInt64Opt(_b, ((6 : GoInt)), _p.value._buildIDX);
        _encodeBoolOpt(_b, ((7 : GoInt)), _p.value.hasFunctions);
        _encodeBoolOpt(_b, ((8 : GoInt)), _p.value.hasFilenames);
        _encodeBoolOpt(_b, ((9 : GoInt)), _p.value.hasLineNumbers);
        _encodeBoolOpt(_b, ((10 : GoInt)), _p.value.hasInlineFrames);
    }
    public function _decoder():Slice<T_decoder> {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _mappingDecoder;
    }
    public var id : GoUInt64 = ((0 : GoUInt64));
    public var start : GoUInt64 = ((0 : GoUInt64));
    public var limit : GoUInt64 = ((0 : GoUInt64));
    public var offset : GoUInt64 = ((0 : GoUInt64));
    public var file : GoString = (("" : GoString));
    public var buildID : GoString = (("" : GoString));
    public var hasFunctions : Bool = false;
    public var hasFilenames : Bool = false;
    public var hasLineNumbers : Bool = false;
    public var hasInlineFrames : Bool = false;
    public var _fileX : GoInt64 = ((0 : GoInt64));
    public var _buildIDX : GoInt64 = ((0 : GoInt64));
    public function new(?id:GoUInt64, ?start:GoUInt64, ?limit:GoUInt64, ?offset:GoUInt64, ?file:GoString, ?buildID:GoString, ?hasFunctions:Bool, ?hasFilenames:Bool, ?hasLineNumbers:Bool, ?hasInlineFrames:Bool, ?_fileX:GoInt64, ?_buildIDX:GoInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(id) + " " + Go.string(start) + " " + Go.string(limit) + " " + Go.string(offset) + " " + Go.string(file) + " " + Go.string(buildID) + " " + Go.string(hasFunctions) + " " + Go.string(hasFilenames) + " " + Go.string(hasLineNumbers) + " " + Go.string(hasInlineFrames) + " " + Go.string(_fileX) + " " + Go.string(_buildIDX) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Mapping(
id,
start,
limit,
offset,
file,
buildID,
hasFunctions,
hasFilenames,
hasLineNumbers,
hasInlineFrames,
_fileX,
_buildIDX);
    }
    public function __set__(__tmp__) {
        this.id = __tmp__.id;
        this.start = __tmp__.start;
        this.limit = __tmp__.limit;
        this.offset = __tmp__.offset;
        this.file = __tmp__.file;
        this.buildID = __tmp__.buildID;
        this.hasFunctions = __tmp__.hasFunctions;
        this.hasFilenames = __tmp__.hasFilenames;
        this.hasLineNumbers = __tmp__.hasLineNumbers;
        this.hasInlineFrames = __tmp__.hasInlineFrames;
        this._fileX = __tmp__._fileX;
        this._buildIDX = __tmp__._buildIDX;
        return this;
    }
}
@:structInit class Location {
    public function _key():T_locationKey {
        var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _key:T_locationKey = (({ _addr : _l.value.address, _isFolded : _l.value.isFolded, _mappingID : 0, _lines : "" } : T_locationKey)).__copy__();
        if (_l.value.mapping != null && !_l.value.mapping.isNil()) {
            _key._addr = _key._addr - (_l.value.mapping.value.start);
            _key._mappingID = _l.value.mapping.value.id;
        };
        var _lines:Slice<GoString> = new Slice<GoString>(...[for (i in 0 ... ((_l.value.line.length * ((2 : GoInt)) : GoInt)).toBasic()) (("" : GoString))]);
        {
            var _i;
            var _line;
            for (_obj in _l.value.line.keyValueIterator()) {
                _i = _obj.key;
                _line = _obj.value;
                if (_line.function_ != null && !_line.function_.isNil()) {
                    _lines[_i * ((2 : GoInt))] = stdgo.strconv.Strconv.formatUint(_line.function_.value.id, ((16 : GoInt)));
                };
                _lines[_i * ((2 : GoInt)) + ((1 : GoInt))] = stdgo.strconv.Strconv.formatInt(_line.line, ((16 : GoInt)));
            };
        };
        _key._lines = stdgo.strings.Strings.join(_lines, "|");
        return _key.__copy__();
    }
    public function _unmatchedLines(_re:Pointer<stdgo.regexp.Regexp.Regexp>):Slice<Line> {
        var _loc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _lines:Slice<Line> = new Slice<Line>().nil();
        for (_ln in _loc.value.line) {
            {
                var _fn:Pointer<Function> = _ln.function_;
                if (_fn != null && !_fn.isNil()) {
                    if (_re.value.matchString(_fn.value.name)) {
                        continue;
                    };
                    if (_re.value.matchString(_fn.value.filename)) {
                        continue;
                    };
                };
            };
            _lines = _lines.__append__(_ln.__copy__());
        };
        return _lines;
    }
    public function _matchesName(_re:Pointer<stdgo.regexp.Regexp.Regexp>):Bool {
        var _loc = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        for (_ln in _loc.value.line) {
            {
                var _fn:Pointer<Function> = _ln.function_;
                if (_fn != null && !_fn.isNil()) {
                    if (_re.value.matchString(_fn.value.name)) {
                        return true;
                    };
                    if (_re.value.matchString(_fn.value.filename)) {
                        return true;
                    };
                };
            };
        };
        return false;
    }
    public function _encode(_b:Pointer<T_buffer>):Void {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _encodeUint64Opt(_b, ((1 : GoInt)), _p.value.id);
        _encodeUint64Opt(_b, ((2 : GoInt)), _p.value._mappingIDX);
        _encodeUint64Opt(_b, ((3 : GoInt)), _p.value.address);
        {
            var _i;
            for (_obj in _p.value.line.keyValueIterator()) {
                _i = _obj.key;
                _encodeMessage(_b, ((4 : GoInt)), Go.pointer(_p.value.line[_i]).value);
            };
        };
    }
    public function _decoder():Slice<T_decoder> {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _locationDecoder;
    }
    public var id : GoUInt64 = ((0 : GoUInt64));
    public var mapping : Pointer<Mapping> = new Pointer<Mapping>().nil();
    public var address : GoUInt64 = ((0 : GoUInt64));
    public var line : Slice<Line> = new Slice<Line>().nil();
    public var isFolded : Bool = false;
    public var _mappingIDX : GoUInt64 = ((0 : GoUInt64));
    public function new(?id:GoUInt64, ?mapping:Pointer<Mapping>, ?address:GoUInt64, ?line:Slice<Line>, ?isFolded:Bool, ?_mappingIDX:GoUInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(id) + " " + Go.string(mapping) + " " + Go.string(address) + " " + Go.string(line) + " " + Go.string(isFolded) + " " + Go.string(_mappingIDX) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Location(id, mapping, address, line, isFolded, _mappingIDX);
    }
    public function __set__(__tmp__) {
        this.id = __tmp__.id;
        this.mapping = __tmp__.mapping;
        this.address = __tmp__.address;
        this.line = __tmp__.line;
        this.isFolded = __tmp__.isFolded;
        this._mappingIDX = __tmp__._mappingIDX;
        return this;
    }
}
@:structInit class Line {
    public function _encode(_b:Pointer<T_buffer>):Void {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _encodeUint64Opt(_b, ((1 : GoInt)), _p.value._functionIDX);
        _encodeInt64Opt(_b, ((2 : GoInt)), _p.value.line);
    }
    public function _decoder():Slice<T_decoder> {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _lineDecoder;
    }
    public var function_ : Pointer<Function> = new Pointer<Function>().nil();
    public var line : GoInt64 = ((0 : GoInt64));
    public var _functionIDX : GoUInt64 = ((0 : GoUInt64));
    public function new(?function_:Pointer<Function>, ?line:GoInt64, ?_functionIDX:GoUInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(function_) + " " + Go.string(line) + " " + Go.string(_functionIDX) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Line(function_, line, _functionIDX);
    }
    public function __set__(__tmp__) {
        this.function_ = __tmp__.function_;
        this.line = __tmp__.line;
        this._functionIDX = __tmp__._functionIDX;
        return this;
    }
}
@:structInit class Function {
    public function _key():T_functionKey {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return new T_functionKey(_f.value.startLine, _f.value.name, _f.value.systemName, _f.value.filename).__copy__();
    }
    public function _encode(_b:Pointer<T_buffer>):Void {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _encodeUint64Opt(_b, ((1 : GoInt)), _p.value.id);
        _encodeInt64Opt(_b, ((2 : GoInt)), _p.value._nameX);
        _encodeInt64Opt(_b, ((3 : GoInt)), _p.value._systemNameX);
        _encodeInt64Opt(_b, ((4 : GoInt)), _p.value._filenameX);
        _encodeInt64Opt(_b, ((5 : GoInt)), _p.value.startLine);
    }
    public function _decoder():Slice<T_decoder> {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _functionDecoder;
    }
    public var id : GoUInt64 = ((0 : GoUInt64));
    public var name : GoString = (("" : GoString));
    public var systemName : GoString = (("" : GoString));
    public var filename : GoString = (("" : GoString));
    public var startLine : GoInt64 = ((0 : GoInt64));
    public var _nameX : GoInt64 = ((0 : GoInt64));
    public var _systemNameX : GoInt64 = ((0 : GoInt64));
    public var _filenameX : GoInt64 = ((0 : GoInt64));
    public function new(?id:GoUInt64, ?name:GoString, ?systemName:GoString, ?filename:GoString, ?startLine:GoInt64, ?_nameX:GoInt64, ?_systemNameX:GoInt64, ?_filenameX:GoInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(id) + " " + Go.string(name) + " " + Go.string(systemName) + " " + Go.string(filename) + " " + Go.string(startLine) + " " + Go.string(_nameX) + " " + Go.string(_systemNameX) + " " + Go.string(_filenameX) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Function(id, name, systemName, filename, startLine, _nameX, _systemNameX, _filenameX);
    }
    public function __set__(__tmp__) {
        this.id = __tmp__.id;
        this.name = __tmp__.name;
        this.systemName = __tmp__.systemName;
        this.filename = __tmp__.filename;
        this.startLine = __tmp__.startLine;
        this._nameX = __tmp__._nameX;
        this._systemNameX = __tmp__._systemNameX;
        this._filenameX = __tmp__._filenameX;
        return this;
    }
}
@:named class Demangler {
    public var __t__ : Slice<GoString> -> { var _0 : GoMap<GoString, GoString>; var _1 : stdgo.Error; };
    public function new(?t:Slice<GoString> -> { var _0 : GoMap<GoString, GoString>; var _1 : stdgo.Error; }) {
        __t__ = t == null ? null : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new Demangler(__t__);
}
@:structInit class T_buffer {
    public var _field : GoInt = ((0 : GoInt));
    public var _typ : GoInt = ((0 : GoInt));
    public var _u64 : GoUInt64 = ((0 : GoUInt64));
    public var _data : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _tmp : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
    public function new(?_field:GoInt, ?_typ:GoInt, ?_u64:GoUInt64, ?_data:Slice<GoUInt8>, ?_tmp:GoArray<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_field) + " " + Go.string(_typ) + " " + Go.string(_u64) + " " + Go.string(_data) + " " + Go.string(_tmp) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_buffer(_field, _typ, _u64, _data, _tmp);
    }
    public function __set__(__tmp__) {
        this._field = __tmp__._field;
        this._typ = __tmp__._typ;
        this._u64 = __tmp__._u64;
        this._data = __tmp__._data;
        this._tmp = __tmp__._tmp;
        return this;
    }
}
@:named class T_decoder {
    public var __t__ : (Pointer<T_buffer>, T_message) -> stdgo.Error;
    public function new(?t:(Pointer<T_buffer>, T_message) -> stdgo.Error) {
        __t__ = t == null ? null : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_decoder(__t__);
}
var _countRE : Pointer<stdgo.regexp.Regexp.Regexp> = stdgo.regexp.Regexp.mustCompile("\A(\d+) @(( 0x[0-9a-f]+)+)\n\z");
var _errMalformed : stdgo.Error = stdgo.fmt.Fmt.errorf("malformed profile format");
var _contentionzSampleTypes : Slice<GoString> = new Slice<GoString>("contentions", "delay");
var _heapzSampleTypes : Slice<GoString> = new Slice<GoString>("allocations", "size");
var _fragmentationHeaderRE : Pointer<stdgo.regexp.Regexp.Regexp> = stdgo.regexp.Regexp.mustCompile("heap profile: *(\d+): *(\d+) *\[ *(\d+): *(\d+) *\] @ fragmentationz");
var _mappingDecoder : Slice<T_decoder> = new Slice<T_decoder>(
new T_decoder(),
new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        return _decodeUint64(_b, Go.pointer(((_m.__underlying__().value : Mapping)).value.id));
    }),
new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        return _decodeUint64(_b, Go.pointer(((_m.__underlying__().value : Mapping)).value.start));
    }),
new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        return _decodeUint64(_b, Go.pointer(((_m.__underlying__().value : Mapping)).value.limit));
    }),
new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        return _decodeUint64(_b, Go.pointer(((_m.__underlying__().value : Mapping)).value.offset));
    }),
new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        return _decodeInt64(_b, Go.pointer(((_m.__underlying__().value : Mapping)).value._fileX));
    }),
new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        return _decodeInt64(_b, Go.pointer(((_m.__underlying__().value : Mapping)).value._buildIDX));
    }),
new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        return _decodeBool(_b, Go.pointer(((_m.__underlying__().value : Mapping)).value.hasFunctions));
    }),
new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        return _decodeBool(_b, Go.pointer(((_m.__underlying__().value : Mapping)).value.hasFilenames));
    }),
new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        return _decodeBool(_b, Go.pointer(((_m.__underlying__().value : Mapping)).value.hasLineNumbers));
    }),
new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        return _decodeBool(_b, Go.pointer(((_m.__underlying__().value : Mapping)).value.hasInlineFrames));
    }));
var _valueTypeDecoder : Slice<T_decoder> = new Slice<T_decoder>(new T_decoder(), new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        return _decodeInt64(_b, Go.pointer(((_m.__underlying__().value : ValueType_)).value._typeX));
    }), new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        return _decodeInt64(_b, Go.pointer(((_m.__underlying__().value : ValueType_)).value._unitX));
    }));
var _lineDecoder : Slice<T_decoder> = new Slice<T_decoder>(new T_decoder(), new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        return _decodeUint64(_b, Go.pointer(((_m.__underlying__().value : Line)).value._functionIDX));
    }), new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        return _decodeInt64(_b, Go.pointer(((_m.__underlying__().value : Line)).value.line));
    }));
final _unrecognizedSection : T_sectionType = new T_sectionType((0 : GoUnTypedInt));
var _cpuProfilerRxStr : GoString = stdgo.strings.Strings.join(new Slice<GoString>("ProfileData::Add", "ProfileData::prof_handler", "CpuProfiler::prof_handler", "__pthread_sighandler", "__restore"), "|");
var _threadStartRE : Pointer<stdgo.regexp.Regexp.Regexp> = stdgo.regexp.Regexp.mustCompile("--- Thread ([[:xdigit:]]+) \(name: (.*)/(\d+)\) stack: ---");
var _procMapsRE : Pointer<stdgo.regexp.Regexp.Regexp> = stdgo.regexp.Regexp.mustCompile("([[:xdigit:]]+)-([[:xdigit:]]+)\s+([-rwxp]+)\s+([[:xdigit:]]+)\s+([[:xdigit:]]+):([[:xdigit:]]+)\s+([[:digit:]]+)\s*(\S+)?");
var _briefMapsRE : Pointer<stdgo.regexp.Regexp.Regexp> = stdgo.regexp.Regexp.mustCompile("\s*([[:xdigit:]]+)-([[:xdigit:]]+):\s*(\S+)(\s.*@)?([[:xdigit:]]+)?");
var _sampleDecoder : Slice<T_decoder> = new Slice<T_decoder>(new T_decoder(), new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        return _decodeUint64s(_b, Go.pointer(((_m.__underlying__().value : Sample)).value._locationIDX));
    }), new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        return _decodeInt64s(_b, Go.pointer(((_m.__underlying__().value : Sample)).value.value));
    }), new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        var _s:Pointer<Sample> = ((_m.__underlying__().value : Sample));
        var _n:GoInt = _s.value._labelX.length;
        _s.value._labelX = _s.value._labelX.__append__(new Label().__copy__());
        return _decodeMessage(_b, Go.pointer(_s.value._labelX[_n]).value);
    }));
var _libRx : Pointer<stdgo.regexp.Regexp.Regexp> = stdgo.regexp.Regexp.mustCompile("([.]so$|[.]so[._][0-9]+)");
var _memoryMapTriggers : Slice<GoString> = new Slice<GoString>("--- Memory map: ---", "MAPPED_LIBRARIES:");
var _profileDecoder : Slice<T_decoder> = new Slice<T_decoder>(
new T_decoder(),
new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        var _x:Pointer<ValueType_> = Go.pointer(new ValueType_());
        var _pp:Pointer<Profile> = ((_m.__underlying__().value : Profile));
        _pp.value.sampleType = _pp.value.sampleType.__append__(_x);
        return _decodeMessage(_b, _x.value);
    }),
new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        var _x:Pointer<Sample> = Go.pointer(new Sample());
        var _pp:Pointer<Profile> = ((_m.__underlying__().value : Profile));
        _pp.value.sample = _pp.value.sample.__append__(_x);
        return _decodeMessage(_b, _x.value);
    }),
new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        var _x:Pointer<Mapping> = Go.pointer(new Mapping());
        var _pp:Pointer<Profile> = ((_m.__underlying__().value : Profile));
        _pp.value.mapping = _pp.value.mapping.__append__(_x);
        return _decodeMessage(_b, _x.value);
    }),
new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        var _x:Pointer<Location> = Go.pointer(new Location());
        var _pp:Pointer<Profile> = ((_m.__underlying__().value : Profile));
        _pp.value.location = _pp.value.location.__append__(_x);
        return _decodeMessage(_b, _x.value);
    }),
new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        var _x:Pointer<Function> = Go.pointer(new Function());
        var _pp:Pointer<Profile> = ((_m.__underlying__().value : Profile));
        _pp.value.function_ = _pp.value.function_.__append__(_x);
        return _decodeMessage(_b, _x.value);
    }),
new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        var _err:stdgo.Error = _decodeStrings(_b, Go.pointer(((_m.__underlying__().value : Profile)).value._stringTable));
        if (_err != null) {
            return _err;
        };
        if (Go.pointer(((_m.__underlying__().value : Profile)).value._stringTable[((0 : GoInt))]).value != (("" : GoString))) {
            return stdgo.errors.Errors.new_("string_table[0] must be \'\'");
        };
        return ((null : stdgo.Error));
    }),
new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        return _decodeInt64(_b, Go.pointer(((_m.__underlying__().value : Profile)).value._dropFramesX));
    }),
new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        return _decodeInt64(_b, Go.pointer(((_m.__underlying__().value : Profile)).value._keepFramesX));
    }),
new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        return _decodeInt64(_b, Go.pointer(((_m.__underlying__().value : Profile)).value.timeNanos));
    }),
new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        return _decodeInt64(_b, Go.pointer(((_m.__underlying__().value : Profile)).value.durationNanos));
    }),
new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        var _x:Pointer<ValueType_> = Go.pointer(new ValueType_());
        var _pp:Pointer<Profile> = ((_m.__underlying__().value : Profile));
        _pp.value.periodType = _x;
        return _decodeMessage(_b, _x.value);
    }),
new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        return _decodeInt64(_b, Go.pointer(((_m.__underlying__().value : Profile)).value.period));
    }),
new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        return _decodeInt64s(_b, Go.pointer(((_m.__underlying__().value : Profile)).value._commentX));
    }),
new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        return _decodeInt64(_b, Go.pointer(((_m.__underlying__().value : Profile)).value._defaultSampleTypeX));
    }));
var _errUnrecognized : stdgo.Error = stdgo.fmt.Fmt.errorf("unrecognized profile format");
var _cpuInts : Slice<Slice<GoUInt8> -> { var _0 : GoUInt64; var _1 : Slice<GoUInt8>; }> = new Slice<Slice<GoUInt8> -> { var _0 : GoUInt64; var _1 : Slice<GoUInt8>; }>(_get32l, _get32b, _get64l, _get64b);
var _labelDecoder : Slice<T_decoder> = new Slice<T_decoder>(new T_decoder(), new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        return _decodeInt64(_b, Go.pointer(((_m.__underlying__().value : Label)).value._keyX));
    }), new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        return _decodeInt64(_b, Go.pointer(((_m.__underlying__().value : Label)).value._strX));
    }), new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        return _decodeInt64(_b, Go.pointer(((_m.__underlying__().value : Label)).value._numX));
    }));
final _memoryMapSection : T_sectionType = new T_sectionType((1 : GoUnTypedInt));
var _lockRxStr : GoString = stdgo.strings.Strings.join(new Slice<GoString>(
"RecordLockProfileData",
"(base::)?RecordLockProfileData.*",
"(base::)?SubmitMutexProfileData.*",
"(base::)?SubmitSpinLockProfileData.*",
"(Mutex::)?AwaitCommon.*",
"(Mutex::)?Unlock.*",
"(Mutex::)?UnlockSlow.*",
"(Mutex::)?ReaderUnlock.*",
"(MutexLock::)?~MutexLock.*",
"(SpinLock::)?Unlock.*",
"(SpinLock::)?SlowUnlock.*",
"(SpinLockHolder::)?~SpinLockHolder.*"), "|");
var _allocRxStr : GoString = stdgo.strings.Strings.join(new Slice<GoString>(
"calloc",
"cfree",
"malloc",
"free",
"memalign",
"do_memalign",
"(__)?posix_memalign",
"pvalloc",
"valloc",
"realloc",
"tcmalloc::.*",
"tc_calloc",
"tc_cfree",
"tc_malloc",
"tc_free",
"tc_memalign",
"tc_posix_memalign",
"tc_pvalloc",
"tc_valloc",
"tc_realloc",
"tc_new",
"tc_delete",
"tc_newarray",
"tc_deletearray",
"tc_new_nothrow",
"tc_newarray_nothrow",
"malloc_zone_malloc",
"malloc_zone_calloc",
"malloc_zone_valloc",
"malloc_zone_realloc",
"malloc_zone_memalign",
"malloc_zone_free",
"runtime\..*",
"BaseArena::.*",
"(::)?do_malloc_no_errno",
"(::)?do_malloc_pages",
"(::)?do_malloc",
"DoSampledAllocation",
"MallocedMemBlock::MallocedMemBlock",
"_M_allocate",
"__builtin_(vec_)?delete",
"__builtin_(vec_)?new",
"__gnu_cxx::new_allocator::allocate",
"__libc_malloc",
"__malloc_alloc_template::allocate",
"allocate",
"cpp_alloc",
"operator new(\[\])?",
"simple_alloc::allocate"), "|");
var _growthHeaderRE : Pointer<stdgo.regexp.Regexp.Regexp> = stdgo.regexp.Regexp.mustCompile("heap profile: *(\d+): *(\d+) *\[ *(\d+): *(\d+) *\] @ growthz");
var _heapSampleRE : Pointer<stdgo.regexp.Regexp.Regexp> = stdgo.regexp.Regexp.mustCompile("(-?\d+): *(-?\d+) *\[ *(\d+): *(\d+) *] @([ x0-9a-f]*)");
var _heapzAllocSampleTypes : Slice<GoString> = new Slice<GoString>("alloc_objects", "alloc_space");
var _locationDecoder : Slice<T_decoder> = new Slice<T_decoder>(new T_decoder(), new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        return _decodeUint64(_b, Go.pointer(((_m.__underlying__().value : Location)).value.id));
    }), new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        return _decodeUint64(_b, Go.pointer(((_m.__underlying__().value : Location)).value._mappingIDX));
    }), new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        return _decodeUint64(_b, Go.pointer(((_m.__underlying__().value : Location)).value.address));
    }), new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        var _pp:Pointer<Location> = ((_m.__underlying__().value : Location));
        var _n:GoInt = _pp.value.line.length;
        _pp.value.line = _pp.value.line.__append__(new Line().__copy__());
        return _decodeMessage(_b, Go.pointer(_pp.value.line[_n]).value);
    }));
var _heapHeaderRE : Pointer<stdgo.regexp.Regexp.Regexp> = stdgo.regexp.Regexp.mustCompile("heap profile: *(\d+): *(\d+) *\[ *(\d+): *(\d+) *\] *@ *(heap[_a-z0-9]*)/?(\d*)");
var legacyHeapAllocated : Bool = false;
var _functionDecoder : Slice<T_decoder> = new Slice<T_decoder>(new T_decoder(), new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        return _decodeUint64(_b, Go.pointer(((_m.__underlying__().value : Function)).value.id));
    }), new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        return _decodeInt64(_b, Go.pointer(((_m.__underlying__().value : Function)).value._nameX));
    }), new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        return _decodeInt64(_b, Go.pointer(((_m.__underlying__().value : Function)).value._systemNameX));
    }), new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        return _decodeInt64(_b, Go.pointer(((_m.__underlying__().value : Function)).value._filenameX));
    }), new T_decoder(function(_b:Pointer<T_buffer>, _m:T_message):Error {
        return _decodeInt64(_b, Go.pointer(((_m.__underlying__().value : Function)).value.startLine));
    }));
var _allocSkipRxStr : GoString = stdgo.strings.Strings.join(new Slice<GoString>("runtime\.panic", "runtime\.reflectcall", "runtime\.call[0-9]*"), "|");
var _hexNumberRE : Pointer<stdgo.regexp.Regexp.Regexp> = stdgo.regexp.Regexp.mustCompile("0x[0-9a-f]+");
var _threadzStartRE : Pointer<stdgo.regexp.Regexp.Regexp> = stdgo.regexp.Regexp.mustCompile("--- threadz \d+ ---");
var _contentionSampleRE : Pointer<stdgo.regexp.Regexp.Regexp> = stdgo.regexp.Regexp.mustCompile("(\d+) *(\d+) @([ x0-9a-f]*)");
var _countStartRE : Pointer<stdgo.regexp.Regexp.Regexp> = stdgo.regexp.Regexp.mustCompile("\A(\w+) profile: total \d+\n\z");
var _heapzInUseSampleTypes : Slice<GoString> = new Slice<GoString>("inuse_objects", "inuse_space");
function _addString(_strings:GoMap<GoString, GoInt>, _s:GoString):GoInt64 {
        var __tmp__ = _strings.exists(_s) ? { value : _strings[_s], ok : true } : { value : _strings.defaultValue(), ok : false }, _i:GoInt = __tmp__.value, _ok:Bool = __tmp__.ok;
        if (!_ok) {
            _i = (_strings == null ? 0 : _strings.length);
            _strings[_s] = _i;
        };
        return ((_i : GoInt64));
    }
function _getString(_strings:Slice<GoString>, _strng:Pointer<GoInt64>, _err:Error):{ var _0 : GoString; var _1 : Error; } {
        if (_err != null) {
            return { _0 : "", _1 : _err };
        };
        var _s:GoInt = ((_strng.value : GoInt));
        if (_s < ((0 : GoInt)) || _s >= _strings.length) {
            return { _0 : "", _1 : _errMalformed };
        };
        _strng.value = ((0 : GoInt64));
        return { _0 : _strings[_s], _1 : ((null : stdgo.Error)) };
    }
/**
    // focusedAndNotIgnored looks up a slice of ids against a map of
    // focused/ignored locations. The map only contains locations that are
    // explicitly focused or ignored. Returns whether there is at least
    // one focused location but no ignored locations.
**/
function _focusedAndNotIgnored(_locs:Slice<Pointer<Location>>, _m:GoMap<GoUInt64, Bool>):Bool {
        var _f:Bool = false;
        for (_loc in _locs) {
            {
                var __tmp__ = _m.exists(_loc.value.id) ? { value : _m[_loc.value.id], ok : true } : { value : _m.defaultValue(), ok : false }, _focus:Bool = __tmp__.value, _focusOrIgnore:Bool = __tmp__.ok;
                if (_focusOrIgnore) {
                    if (_focus) {
                        _f = true;
                    } else {
                        return false;
                    };
                };
            };
        };
        return _f;
    }
/**
    // focusedTag checks a sample against focus and ignore regexps.
    // Returns whether the focus/ignore regexps match any tags
**/
function _focusedSample(_s:Pointer<Sample>, _focus:TagMatch, _ignore:TagMatch):{ var _0 : Bool; var _1 : Bool; } {
        var _fm:Bool = false, _im:Bool = false;
        _fm = _focus.__t__ == null;
        {
            var _key;
            var _vals;
            for (_obj in _s.value.label.keyValueIterator()) {
                _key = _obj.key;
                _vals = _obj.value;
                for (_val in _vals) {
                    if (_ignore.__t__ != null && _ignore.__t__(_key, _val, ((0 : GoInt64)))) {
                        _im = true;
                    };
                    if (!_fm && _focus.__t__(_key, _val, ((0 : GoInt64)))) {
                        _fm = true;
                    };
                };
            };
        };
        {
            var _key;
            var _vals;
            for (_obj in _s.value.numLabel.keyValueIterator()) {
                _key = _obj.key;
                _vals = _obj.value;
                for (_val in _vals) {
                    if (_ignore.__t__ != null && _ignore.__t__(_key, "", _val)) {
                        _im = true;
                    };
                    if (!_fm && _focus.__t__(_key, "", _val)) {
                        _fm = true;
                    };
                };
            };
        };
        return { _0 : _fm, _1 : _im };
    }
function _isSpaceOrComment(_line:GoString):Bool {
        var _trimmed:GoString = stdgo.strings.Strings.trimSpace(_line);
        return _trimmed.length == ((0 : GoInt)) || _trimmed[((0 : GoInt))] == (("#".code : GoRune));
    }
/**
    // parseGoCount parses a Go count profile (e.g., threadcreate or
    // goroutine) and returns a new Profile.
**/
function _parseGoCount(_b:Slice<GoByte>):{ var _0 : Pointer<Profile>; var _1 : Error; } {
        var _r:Pointer<stdgo.bytes.Bytes.Buffer> = stdgo.bytes.Bytes.newBuffer(_b);
        var _line:GoString = (("" : GoString));
        var _err:Error = ((null : stdgo.Error));
        while (true) {
            {
                var __tmp__ = _r.value.readString((("\n".code : GoRune)));
                _line = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : new Pointer<Profile>().nil(), _1 : _err };
            };
            if (!_isSpaceOrComment(_line)) {
                break;
            };
        };
        var _m:Slice<GoString> = _countStartRE.value.findStringSubmatch(_line);
        if (_m == null || _m.isNil()) {
            return { _0 : new Pointer<Profile>().nil(), _1 : _errUnrecognized };
        };
        var _profileType:GoString = _m[((1 : GoInt))];
        var _p:Pointer<Profile> = Go.pointer((({ periodType : Go.pointer((({ type : _profileType, unit : "count", _typeX : 0, _unitX : 0 } : ValueType_))), period : ((1 : GoInt64)), sampleType : new Slice<Pointer<ValueType_>>(Go.pointer((({ type : _profileType, unit : "count", _typeX : 0, _unitX : 0 } : ValueType_)))), defaultSampleType : "", sample : new Slice<Pointer<Sample>>().nil(), mapping : new Slice<Pointer<Mapping>>().nil(), location : new Slice<Pointer<Location>>().nil(), function_ : new Slice<Pointer<Function>>().nil(), comments : new Slice<GoString>().nil(), dropFrames : "", keepFrames : "", timeNanos : 0, durationNanos : 0, _commentX : new Slice<GoInt64>().nil(), _dropFramesX : 0, _keepFramesX : 0, _stringTable : new Slice<GoString>().nil(), _defaultSampleTypeX : 0 } : Profile)));
        var _locations:GoMap<GoUInt64, Pointer<Location>> = new GoMap<GoUInt64, Pointer<Location>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Location", [], stdgo.reflect.Reflect.GoType.named("internal/profile.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "mapping", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "limit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "file", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "buildID", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "hasFunctions", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasFilenames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasLineNumbers", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasInlineFrames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_fileX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_buildIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }])))) }, { name : "address", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("internal/profile.Line", [], stdgo.reflect.Reflect.GoType.structType([{ name : "function_", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Function", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "systemName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "filename", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_nameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_systemNameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_filenameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_functionIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }]))) }, { name : "isFolded", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_mappingIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }])))))));
        while (true) {
            {
                var __tmp__ = _r.value.readString((("\n".code : GoRune)));
                _line = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
                    break;
                };
                return { _0 : new Pointer<Profile>().nil(), _1 : _err };
            };
            if (_isSpaceOrComment(_line)) {
                continue;
            };
            if (stdgo.strings.Strings.hasPrefix(_line, "---")) {
                break;
            };
            var _m:Slice<GoString> = _countRE.value.findStringSubmatch(_line);
            if (_m == null || _m.isNil()) {
                return { _0 : new Pointer<Profile>().nil(), _1 : _errMalformed };
            };
            var __tmp__ = stdgo.strconv.Strconv.parseInt(_m[((1 : GoInt))], ((0 : GoInt)), ((64 : GoInt))), _n:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : new Pointer<Profile>().nil(), _1 : _errMalformed };
            };
            var _fields:Slice<GoString> = stdgo.strings.Strings.fields(_m[((2 : GoInt))]);
            var _locs:Slice<Pointer<Location>> = new Slice<Pointer<Location>>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new Pointer<Location>().nil()]).setCap(((_fields.length : GoInt)).toBasic());
            for (_stk in _fields) {
                var __tmp__ = stdgo.strconv.Strconv.parseUint(_stk, ((0 : GoInt)), ((64 : GoInt))), _addr:GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : new Pointer<Profile>().nil(), _1 : _errMalformed };
                };
                _addr--;
                var _loc:Pointer<Location> = _locations[_addr];
                if (_loc == null || _loc.isNil()) {
                    _loc = Go.pointer((({ address : _addr, id : 0, mapping : new Pointer<Mapping>().nil(), line : new Slice<Line>().nil(), isFolded : false, _mappingIDX : 0 } : Location)));
                    _locations[_addr] = _loc;
                    _p.value.location = _p.value.location.__append__(_loc);
                };
                _locs = _locs.__append__(_loc);
            };
            _p.value.sample = _p.value.sample.__append__(Go.pointer((({ location : _locs, value : new Slice<GoInt64>(_n), label : new GoMap<GoString, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))).nil(), numLabel : new GoMap<GoString, Slice<GoInt64>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int64_kind))))).nil(), numUnit : new GoMap<GoString, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))).nil(), _locationIDX : new Slice<GoUInt64>().nil(), _labelX : new Slice<Label>().nil() } : Sample))));
        };
        {
            _err = _parseAdditionalSections(stdgo.strings.Strings.trimSpace(_line), _r, _p);
            if (_err != null) {
                return { _0 : new Pointer<Profile>().nil(), _1 : _err };
            };
        };
        return { _0 : _p, _1 : ((null : stdgo.Error)) };
    }
function _get32l(_b:Slice<GoByte>):{ var _0 : GoUInt64; var _1 : Slice<GoByte>; } {
        if (_b.length < ((4 : GoInt))) {
            return { _0 : ((0 : GoUInt64)), _1 : new Slice<GoUInt8>().nil() };
        };
        return { _0 : ((_b[((0 : GoInt))] : GoUInt64)) | (((_b[((1 : GoInt))] : GoUInt64)) << ((8 : GoUnTypedInt))) | (((_b[((2 : GoInt))] : GoUInt64)) << ((16 : GoUnTypedInt))) | (((_b[((3 : GoInt))] : GoUInt64)) << ((24 : GoUnTypedInt))), _1 : _b.__slice__(((4 : GoInt))) };
    }
function _get32b(_b:Slice<GoByte>):{ var _0 : GoUInt64; var _1 : Slice<GoByte>; } {
        if (_b.length < ((4 : GoInt))) {
            return { _0 : ((0 : GoUInt64)), _1 : new Slice<GoUInt8>().nil() };
        };
        return { _0 : ((_b[((3 : GoInt))] : GoUInt64)) | (((_b[((2 : GoInt))] : GoUInt64)) << ((8 : GoUnTypedInt))) | (((_b[((1 : GoInt))] : GoUInt64)) << ((16 : GoUnTypedInt))) | (((_b[((0 : GoInt))] : GoUInt64)) << ((24 : GoUnTypedInt))), _1 : _b.__slice__(((4 : GoInt))) };
    }
function _get64l(_b:Slice<GoByte>):{ var _0 : GoUInt64; var _1 : Slice<GoByte>; } {
        if (_b.length < ((8 : GoInt))) {
            return { _0 : ((0 : GoUInt64)), _1 : new Slice<GoUInt8>().nil() };
        };
        return { _0 : ((_b[((0 : GoInt))] : GoUInt64)) | (((_b[((1 : GoInt))] : GoUInt64)) << ((8 : GoUnTypedInt))) | (((_b[((2 : GoInt))] : GoUInt64)) << ((16 : GoUnTypedInt))) | (((_b[((3 : GoInt))] : GoUInt64)) << ((24 : GoUnTypedInt))) | (((_b[((4 : GoInt))] : GoUInt64)) << ((32 : GoUnTypedInt))) | (((_b[((5 : GoInt))] : GoUInt64)) << ((40 : GoUnTypedInt))) | (((_b[((6 : GoInt))] : GoUInt64)) << ((48 : GoUnTypedInt))) | (((_b[((7 : GoInt))] : GoUInt64)) << ((56 : GoUnTypedInt))), _1 : _b.__slice__(((8 : GoInt))) };
    }
function _get64b(_b:Slice<GoByte>):{ var _0 : GoUInt64; var _1 : Slice<GoByte>; } {
        if (_b.length < ((8 : GoInt))) {
            return { _0 : ((0 : GoUInt64)), _1 : new Slice<GoUInt8>().nil() };
        };
        return { _0 : ((_b[((7 : GoInt))] : GoUInt64)) | (((_b[((6 : GoInt))] : GoUInt64)) << ((8 : GoUnTypedInt))) | (((_b[((5 : GoInt))] : GoUInt64)) << ((16 : GoUnTypedInt))) | (((_b[((4 : GoInt))] : GoUInt64)) << ((24 : GoUnTypedInt))) | (((_b[((3 : GoInt))] : GoUInt64)) << ((32 : GoUnTypedInt))) | (((_b[((2 : GoInt))] : GoUInt64)) << ((40 : GoUnTypedInt))) | (((_b[((1 : GoInt))] : GoUInt64)) << ((48 : GoUnTypedInt))) | (((_b[((0 : GoInt))] : GoUInt64)) << ((56 : GoUnTypedInt))), _1 : _b.__slice__(((8 : GoInt))) };
    }
/**
    // ParseTracebacks parses a set of tracebacks and returns a newly
    // populated profile. It will accept any text file and generate a
    // Profile out of it with any hex addresses it can identify, including
    // a process map if it can recognize one. Each sample will include a
    // tag "source" with the addresses recognized in string format.
**/
function parseTracebacks(_b:Slice<GoByte>):{ var _0 : Pointer<Profile>; var _1 : Error; } {
        var _r:Pointer<stdgo.bytes.Bytes.Buffer> = stdgo.bytes.Bytes.newBuffer(_b);
        var _p:Pointer<Profile> = Go.pointer((({ periodType : Go.pointer((({ type : "trace", unit : "count", _typeX : 0, _unitX : 0 } : ValueType_))), period : ((1 : GoInt64)), sampleType : new Slice<Pointer<ValueType_>>(Go.pointer((({ type : "trace", unit : "count", _typeX : 0, _unitX : 0 } : ValueType_)))), defaultSampleType : "", sample : new Slice<Pointer<Sample>>().nil(), mapping : new Slice<Pointer<Mapping>>().nil(), location : new Slice<Pointer<Location>>().nil(), function_ : new Slice<Pointer<Function>>().nil(), comments : new Slice<GoString>().nil(), dropFrames : "", keepFrames : "", timeNanos : 0, durationNanos : 0, _commentX : new Slice<GoInt64>().nil(), _dropFramesX : 0, _keepFramesX : 0, _stringTable : new Slice<GoString>().nil(), _defaultSampleTypeX : 0 } : Profile)));
        var _sources:Slice<GoString> = new Slice<GoString>().nil();
        var _sloc:Slice<Pointer<Location>> = new Slice<Pointer<Location>>().nil();
        var _locs:GoMap<GoUInt64, Pointer<Location>> = new GoMap<GoUInt64, Pointer<Location>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Location", [], stdgo.reflect.Reflect.GoType.named("internal/profile.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "mapping", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "limit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "file", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "buildID", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "hasFunctions", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasFilenames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasLineNumbers", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasInlineFrames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_fileX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_buildIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }])))) }, { name : "address", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("internal/profile.Line", [], stdgo.reflect.Reflect.GoType.structType([{ name : "function_", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Function", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "systemName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "filename", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_nameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_systemNameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_filenameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_functionIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }]))) }, { name : "isFolded", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_mappingIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }])))))));
        while (true) {
            var __tmp__ = _r.value.readString((("\n".code : GoRune))), _l:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof)) {
                    return { _0 : new Pointer<Profile>().nil(), _1 : _err };
                };
                if (_l == (("" : GoString))) {
                    break;
                };
            };
            if (_sectionTrigger(_l).__t__ == _memoryMapSection.__t__) {
                break;
            };
            {
                var __tmp__ = _extractHexAddresses(_l), _s:Slice<GoString> = __tmp__._0, _addrs:Slice<GoUInt64> = __tmp__._1;
                if (_s.length > ((0 : GoInt))) {
                    for (_addr in _addrs) {
                        _addr--;
                        var _loc:Pointer<Location> = _locs[_addr];
                        if (_locs[_addr] == null || _locs[_addr].isNil()) {
                            _loc = Go.pointer((({ address : _addr, id : 0, mapping : new Pointer<Mapping>().nil(), line : new Slice<Line>().nil(), isFolded : false, _mappingIDX : 0 } : Location)));
                            _p.value.location = _p.value.location.__append__(_loc);
                            _locs[_addr] = _loc;
                        };
                        _sloc = _sloc.__append__(_loc);
                    };
                    _sources = _sources.__append__(..._s.toArray());
                } else {
                    if (_sources.length > ((0 : GoInt)) || _sloc.length > ((0 : GoInt))) {
                        _addTracebackSample(_sloc, _sources, _p);
                        {
                            final __tmp__0 = new Slice<Pointer<Location>>().nil();
                            final __tmp__1 = new Slice<GoString>().nil();
                            _sloc = __tmp__0;
                            _sources = __tmp__1;
                        };
                    };
                };
            };
        };
        if (_sources.length > ((0 : GoInt)) || _sloc.length > ((0 : GoInt))) {
            _addTracebackSample(_sloc, _sources, _p);
        };
        {
            var _err:stdgo.Error = _p.value.parseMemoryMap(_r.value);
            if (_err != null) {
                return { _0 : new Pointer<Profile>().nil(), _1 : _err };
            };
        };
        return { _0 : _p, _1 : ((null : stdgo.Error)) };
    }
function _addTracebackSample(_l:Slice<Pointer<Location>>, _s:Slice<GoString>, _p:Pointer<Profile>):Void {
        _p.value.sample = _p.value.sample.__append__(Go.pointer((({ value : new Slice<GoInt64>(((1 : GoInt64))), location : _l, label : new GoMap<GoString, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)))), { key : "source", value : _s }), numLabel : new GoMap<GoString, Slice<GoInt64>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int64_kind))))).nil(), numUnit : new GoMap<GoString, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))).nil(), _locationIDX : new Slice<GoUInt64>().nil(), _labelX : new Slice<Label>().nil() } : Sample))));
    }
/**
    // parseCPU parses a profilez legacy profile and returns a newly
    // populated Profile.
    //
    // The general format for profilez samples is a sequence of words in
    // binary format. The first words are a header with the following data:
    //   1st word -- 0
    //   2nd word -- 3
    //   3rd word -- 0 if a c++ application, 1 if a java application.
    //   4th word -- Sampling period (in microseconds).
    //   5th word -- Padding.
**/
function _parseCPU(_b:Slice<GoByte>):{ var _0 : Pointer<Profile>; var _1 : Error; } {
        var _parse:Slice<GoByte> -> { var _0 : GoUInt64; var _1 : Slice<GoByte>; } = null;
        var _n1:GoUInt64 = ((0 : GoUInt64)), _n2:GoUInt64 = ((0 : GoUInt64)), _n3:GoUInt64 = ((0 : GoUInt64)), _n4:GoUInt64 = ((0 : GoUInt64)), _n5:GoUInt64 = ((0 : GoUInt64));
        for (_obj in _cpuInts) {
            _parse = _obj.value;
            var _tmp:Slice<GoByte> = new Slice<GoUInt8>().nil();
            {
                var __tmp__ = _parse(_b);
                _n1 = __tmp__._0;
                _tmp = __tmp__._1;
            };
            {
                var __tmp__ = _parse(_tmp);
                _n2 = __tmp__._0;
                _tmp = __tmp__._1;
            };
            {
                var __tmp__ = _parse(_tmp);
                _n3 = __tmp__._0;
                _tmp = __tmp__._1;
            };
            {
                var __tmp__ = _parse(_tmp);
                _n4 = __tmp__._0;
                _tmp = __tmp__._1;
            };
            {
                var __tmp__ = _parse(_tmp);
                _n5 = __tmp__._0;
                _tmp = __tmp__._1;
            };
            if (_tmp != null && !_tmp.isNil() && _n1 == ((0 : GoUInt64)) && _n2 == ((3 : GoUInt64)) && _n3 == ((0 : GoUInt64)) && _n4 > ((0 : GoUInt64)) && _n5 == ((0 : GoUInt64))) {
                _b = _tmp;
                return _cpuProfile(_b, ((_n4 : GoInt64)), _parse);
            };
        };
        return { _0 : new Pointer<Profile>().nil(), _1 : _errUnrecognized };
    }
/**
    // cpuProfile returns a new Profile from C++ profilez data.
    // b is the profile bytes after the header, period is the profiling
    // period, and parse is a function to parse 8-byte chunks from the
    // profile in its native endianness.
**/
function _cpuProfile(_b:Slice<GoByte>, _period:GoInt64, _parse:(_b:Slice<GoByte>) -> { var _0 : GoUInt64; var _1 : Slice<GoByte>; }):{ var _0 : Pointer<Profile>; var _1 : Error; } {
        var _p:Pointer<Profile> = Go.pointer((({ period : _period * ((1000 : GoInt64)), periodType : Go.pointer((({ type : "cpu", unit : "nanoseconds", _typeX : 0, _unitX : 0 } : ValueType_))), sampleType : new Slice<Pointer<ValueType_>>(Go.pointer((({ type : "samples", unit : "count", _typeX : 0, _unitX : 0 } : ValueType_))), Go.pointer((({ type : "cpu", unit : "nanoseconds", _typeX : 0, _unitX : 0 } : ValueType_)))), defaultSampleType : "", sample : new Slice<Pointer<Sample>>().nil(), mapping : new Slice<Pointer<Mapping>>().nil(), location : new Slice<Pointer<Location>>().nil(), function_ : new Slice<Pointer<Function>>().nil(), comments : new Slice<GoString>().nil(), dropFrames : "", keepFrames : "", timeNanos : 0, durationNanos : 0, _commentX : new Slice<GoInt64>().nil(), _dropFramesX : 0, _keepFramesX : 0, _stringTable : new Slice<GoString>().nil(), _defaultSampleTypeX : 0 } : Profile)));
        var _err:Error = ((null : stdgo.Error));
        {
            {
                var __tmp__ = _parseCPUSamples(_b, _parse, true, _p);
                _b = __tmp__._0;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : new Pointer<Profile>().nil(), _1 : _err };
            };
        };
        if (_p.value.sample.length > ((1 : GoInt)) && _p.value.sample[((0 : GoInt))].value.location.length > ((1 : GoInt))) {
            var _allSame:Bool = true;
            var _id1:GoUInt64 = _p.value.sample[((0 : GoInt))].value.location[((1 : GoInt))].value.address;
            for (_s in _p.value.sample) {
                if (_s.value.location.length < ((2 : GoInt)) || _id1 != _s.value.location[((1 : GoInt))].value.address) {
                    _allSame = false;
                    break;
                };
            };
            if (_allSame) {
                for (_s in _p.value.sample) {
                    _s.value.location = _s.value.location.__slice__(0, ((1 : GoInt))).__append__(..._s.value.location.__slice__(((2 : GoInt))).toArray());
                };
            };
        };
        {
            var _err:stdgo.Error = _p.value.parseMemoryMap(stdgo.bytes.Bytes.newBuffer(_b).value);
            if (_err != null) {
                return { _0 : new Pointer<Profile>().nil(), _1 : _err };
            };
        };
        return { _0 : _p, _1 : ((null : stdgo.Error)) };
    }
/**
    // parseCPUSamples parses a collection of profilez samples from a
    // profile.
    //
    // profilez samples are a repeated sequence of stack frames of the
    // form:
    //    1st word -- The number of times this stack was encountered.
    //    2nd word -- The size of the stack (StackSize).
    //    3rd word -- The first address on the stack.
    //    ...
    //    StackSize + 2 -- The last address on the stack
    // The last stack trace is of the form:
    //   1st word -- 0
    //   2nd word -- 1
    //   3rd word -- 0
    //
    // Addresses from stack traces may point to the next instruction after
    // each call. Optionally adjust by -1 to land somewhere on the actual
    // call (except for the leaf, which is not a call).
**/
function _parseCPUSamples(_b:Slice<GoByte>, _parse:(_b:Slice<GoByte>) -> { var _0 : GoUInt64; var _1 : Slice<GoByte>; }, _adjust:Bool, _p:Pointer<Profile>):{ var _0 : Slice<GoByte>; var _1 : GoMap<GoUInt64, Pointer<Location>>; var _2 : Error; } {
        var _locs:GoMap<GoUInt64, Pointer<Location>> = new GoMap<GoUInt64, Pointer<Location>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Location", [], stdgo.reflect.Reflect.GoType.named("internal/profile.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "mapping", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "limit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "file", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "buildID", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "hasFunctions", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasFilenames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasLineNumbers", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasInlineFrames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_fileX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_buildIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }])))) }, { name : "address", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("internal/profile.Line", [], stdgo.reflect.Reflect.GoType.structType([{ name : "function_", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Function", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "systemName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "filename", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_nameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_systemNameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_filenameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_functionIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }]))) }, { name : "isFolded", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_mappingIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }])))))));
        while (_b.length > ((0 : GoInt))) {
            var _count:GoUInt64 = ((0 : GoUInt64)), _nstk:GoUInt64 = ((0 : GoUInt64));
            {
                var __tmp__ = _parse(_b);
                _count = __tmp__._0;
                _b = __tmp__._1;
            };
            {
                var __tmp__ = _parse(_b);
                _nstk = __tmp__._0;
                _b = __tmp__._1;
            };
            if (_b == null || _b.isNil() || _nstk > (((_b.length / ((4 : GoInt))) : GoUInt64))) {
                return { _0 : new Slice<GoUInt8>().nil(), _1 : new GoMap<GoUInt64, Pointer<Location>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Location", [], stdgo.reflect.Reflect.GoType.named("internal/profile.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "mapping", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "limit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "file", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "buildID", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "hasFunctions", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasFilenames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasLineNumbers", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasInlineFrames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_fileX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_buildIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }])))) }, { name : "address", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("internal/profile.Line", [], stdgo.reflect.Reflect.GoType.structType([{ name : "function_", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Function", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "systemName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "filename", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_nameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_systemNameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_filenameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_functionIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }]))) }, { name : "isFolded", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_mappingIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }]))))))).nil(), _2 : _errUnrecognized };
            };
            var _sloc:Slice<Pointer<Location>> = new Slice<Pointer<Location>>().nil();
            var _addrs:Slice<GoUInt64> = new Slice<GoUInt64>(...[for (i in 0 ... ((_nstk : GoInt)).toBasic()) ((0 : GoUInt64))]);
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((_nstk : GoInt)), _i++, {
                    {
                        var __tmp__ = _parse(_b);
                        _addrs[_i] = __tmp__._0;
                        _b = __tmp__._1;
                    };
                });
            };
            if (_count == ((0 : GoUInt64)) && _nstk == ((1 : GoUInt64)) && _addrs[((0 : GoInt))] == ((0 : GoUInt64))) {
                break;
            };
            {
                var _i;
                var _addr;
                for (_obj in _addrs.keyValueIterator()) {
                    _i = _obj.key;
                    _addr = _obj.value;
                    if (_adjust && _i > ((0 : GoInt))) {
                        _addr--;
                    };
                    var _loc:Pointer<Location> = _locs[_addr];
                    if (_loc == null || _loc.isNil()) {
                        _loc = Go.pointer((({ address : _addr, id : 0, mapping : new Pointer<Mapping>().nil(), line : new Slice<Line>().nil(), isFolded : false, _mappingIDX : 0 } : Location)));
                        _locs[_addr] = _loc;
                        _p.value.location = _p.value.location.__append__(_loc);
                    };
                    _sloc = _sloc.__append__(_loc);
                };
            };
            _p.value.sample = _p.value.sample.__append__(Go.pointer((({ value : new Slice<GoInt64>(((_count : GoInt64)), ((_count : GoInt64)) * _p.value.period), location : _sloc, label : new GoMap<GoString, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))).nil(), numLabel : new GoMap<GoString, Slice<GoInt64>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int64_kind))))).nil(), numUnit : new GoMap<GoString, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))).nil(), _locationIDX : new Slice<GoUInt64>().nil(), _labelX : new Slice<Label>().nil() } : Sample))));
        };
        return { _0 : _b, _1 : _locs, _2 : ((null : stdgo.Error)) };
    }
/**
    // parseHeap parses a heapz legacy or a growthz profile and
    // returns a newly populated Profile.
**/
function _parseHeap(_b:Slice<GoByte>):{ var _0 : Pointer<Profile>; var _1 : Error; } {
        var _p:Pointer<Profile> = new Pointer<Profile>().nil(), _err:Error = ((null : stdgo.Error));
        var _r:Pointer<stdgo.bytes.Bytes.Buffer> = stdgo.bytes.Bytes.newBuffer(_b);
        var __tmp__ = _r.value.readString((("\n".code : GoRune))), _l:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<Profile>().nil(), _1 : _errUnrecognized };
        };
        var _sampling:GoString = "";
        {
            var _header:Slice<GoString> = _heapHeaderRE.value.findStringSubmatch(_l);
            if (_header != null && !_header.isNil()) {
                _p = Go.pointer((({ sampleType : new Slice<Pointer<ValueType_>>(Go.pointer((({ type : "objects", unit : "count", _typeX : 0, _unitX : 0 } : ValueType_))), Go.pointer((({ type : "space", unit : "bytes", _typeX : 0, _unitX : 0 } : ValueType_)))), periodType : Go.pointer((({ type : "objects", unit : "bytes", _typeX : 0, _unitX : 0 } : ValueType_))), defaultSampleType : "", sample : new Slice<Pointer<Sample>>().nil(), mapping : new Slice<Pointer<Mapping>>().nil(), location : new Slice<Pointer<Location>>().nil(), function_ : new Slice<Pointer<Function>>().nil(), comments : new Slice<GoString>().nil(), dropFrames : "", keepFrames : "", timeNanos : 0, durationNanos : 0, period : 0, _commentX : new Slice<GoInt64>().nil(), _dropFramesX : 0, _keepFramesX : 0, _stringTable : new Slice<GoString>().nil(), _defaultSampleTypeX : 0 } : Profile)));
                var _period:GoInt64 = ((0 : GoInt64));
                if (_header[((6 : GoInt))].length > ((0 : GoInt))) {
                    {
                        {
                            var __tmp__ = stdgo.strconv.Strconv.parseInt(_header[((6 : GoInt))], ((10 : GoInt)), ((64 : GoInt)));
                            _period = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            return { _0 : new Pointer<Profile>().nil(), _1 : _errUnrecognized };
                        };
                    };
                };
                if (_header[((5 : GoInt))] == (("heapz_v2" : GoString)) || _header[((5 : GoInt))] == (("heap_v2" : GoString))) {
                    {
                        final __tmp__0 = "v2";
                        final __tmp__1 = _period;
                        _sampling = __tmp__0;
                        _p.value.period = __tmp__1;
                    };
                } else if (_header[((5 : GoInt))] == (("heapprofile" : GoString))) {
                    {
                        final __tmp__0 = "";
                        final __tmp__1 = ((1 : GoInt64));
                        _sampling = __tmp__0;
                        _p.value.period = __tmp__1;
                    };
                } else if (_header[((5 : GoInt))] == (("heap" : GoString))) {
                    {
                        final __tmp__0 = "v2";
                        final __tmp__1 = _period / ((2 : GoInt64));
                        _sampling = __tmp__0;
                        _p.value.period = __tmp__1;
                    };
                } else {
                    return { _0 : new Pointer<Profile>().nil(), _1 : _errUnrecognized };
                };
            } else {
                _header = _growthHeaderRE.value.findStringSubmatch(_l);
                if (_header != null && !_header.isNil()) {
                    _p = Go.pointer((({ sampleType : new Slice<Pointer<ValueType_>>(Go.pointer((({ type : "objects", unit : "count", _typeX : 0, _unitX : 0 } : ValueType_))), Go.pointer((({ type : "space", unit : "bytes", _typeX : 0, _unitX : 0 } : ValueType_)))), periodType : Go.pointer((({ type : "heapgrowth", unit : "count", _typeX : 0, _unitX : 0 } : ValueType_))), period : ((1 : GoInt64)), defaultSampleType : "", sample : new Slice<Pointer<Sample>>().nil(), mapping : new Slice<Pointer<Mapping>>().nil(), location : new Slice<Pointer<Location>>().nil(), function_ : new Slice<Pointer<Function>>().nil(), comments : new Slice<GoString>().nil(), dropFrames : "", keepFrames : "", timeNanos : 0, durationNanos : 0, _commentX : new Slice<GoInt64>().nil(), _dropFramesX : 0, _keepFramesX : 0, _stringTable : new Slice<GoString>().nil(), _defaultSampleTypeX : 0 } : Profile)));
                } else {
                    _header = _fragmentationHeaderRE.value.findStringSubmatch(_l);
                    if (_header != null && !_header.isNil()) {
                        _p = Go.pointer((({ sampleType : new Slice<Pointer<ValueType_>>(Go.pointer((({ type : "objects", unit : "count", _typeX : 0, _unitX : 0 } : ValueType_))), Go.pointer((({ type : "space", unit : "bytes", _typeX : 0, _unitX : 0 } : ValueType_)))), periodType : Go.pointer((({ type : "allocations", unit : "count", _typeX : 0, _unitX : 0 } : ValueType_))), period : ((1 : GoInt64)), defaultSampleType : "", sample : new Slice<Pointer<Sample>>().nil(), mapping : new Slice<Pointer<Mapping>>().nil(), location : new Slice<Pointer<Location>>().nil(), function_ : new Slice<Pointer<Function>>().nil(), comments : new Slice<GoString>().nil(), dropFrames : "", keepFrames : "", timeNanos : 0, durationNanos : 0, _commentX : new Slice<GoInt64>().nil(), _dropFramesX : 0, _keepFramesX : 0, _stringTable : new Slice<GoString>().nil(), _defaultSampleTypeX : 0 } : Profile)));
                    } else {
                        return { _0 : new Pointer<Profile>().nil(), _1 : _errUnrecognized };
                    };
                };
            };
        };
        if (legacyHeapAllocated) {
            for (_st in _p.value.sampleType) {
                _st.value.type = (("alloc_" : GoString)) + _st.value.type;
            };
        } else {
            for (_st in _p.value.sampleType) {
                _st.value.type = (("inuse_" : GoString)) + _st.value.type;
            };
        };
        var _locs:GoMap<GoUInt64, Pointer<Location>> = new GoMap<GoUInt64, Pointer<Location>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Location", [], stdgo.reflect.Reflect.GoType.named("internal/profile.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "mapping", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "limit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "file", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "buildID", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "hasFunctions", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasFilenames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasLineNumbers", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasInlineFrames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_fileX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_buildIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }])))) }, { name : "address", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("internal/profile.Line", [], stdgo.reflect.Reflect.GoType.structType([{ name : "function_", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Function", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "systemName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "filename", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_nameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_systemNameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_filenameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_functionIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }]))) }, { name : "isFolded", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_mappingIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }])))))));
        while (true) {
            {
                var __tmp__ = _r.value.readString((("\n".code : GoRune)));
                _l = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                if (Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof)) {
                    return { _0 : new Pointer<Profile>().nil(), _1 : _err };
                };
                if (_l == (("" : GoString))) {
                    break;
                };
            };
            if (_isSpaceOrComment(_l)) {
                continue;
            };
            _l = stdgo.strings.Strings.trimSpace(_l);
            if (_sectionTrigger(_l).__t__ != _unrecognizedSection.__t__) {
                break;
            };
            var __tmp__ = _parseHeapSample(_l, _p.value.period, _sampling), _value:Slice<GoInt64> = __tmp__._0, _blocksize:GoInt64 = __tmp__._1, _addrs:Slice<GoUInt64> = __tmp__._2, _err:stdgo.Error = __tmp__._3;
            if (_err != null) {
                return { _0 : new Pointer<Profile>().nil(), _1 : _err };
            };
            var _sloc:Slice<Pointer<Location>> = new Slice<Pointer<Location>>().nil();
            for (_addr in _addrs) {
                _addr--;
                var _loc:Pointer<Location> = _locs[_addr];
                if (_locs[_addr] == null || _locs[_addr].isNil()) {
                    _loc = Go.pointer((({ address : _addr, id : 0, mapping : new Pointer<Mapping>().nil(), line : new Slice<Line>().nil(), isFolded : false, _mappingIDX : 0 } : Location)));
                    _p.value.location = _p.value.location.__append__(_loc);
                    _locs[_addr] = _loc;
                };
                _sloc = _sloc.__append__(_loc);
            };
            _p.value.sample = _p.value.sample.__append__(Go.pointer((({ value : _value, location : _sloc, numLabel : new GoMap<GoString, Slice<GoInt64>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int64_kind)))), { key : "bytes", value : new Slice<GoInt64>(_blocksize) }), label : new GoMap<GoString, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))).nil(), numUnit : new GoMap<GoString, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))).nil(), _locationIDX : new Slice<GoUInt64>().nil(), _labelX : new Slice<Label>().nil() } : Sample))));
        };
        {
            _err = _parseAdditionalSections(_l, _r, _p);
            if (_err != null) {
                return { _0 : new Pointer<Profile>().nil(), _1 : _err };
            };
        };
        return { _0 : _p, _1 : ((null : stdgo.Error)) };
    }
/**
    // parseHeapSample parses a single row from a heap profile into a new Sample.
**/
function _parseHeapSample(_line:GoString, _rate:GoInt64, _sampling:GoString):{ var _0 : Slice<GoInt64>; var _1 : GoInt64; var _2 : Slice<GoUInt64>; var _3 : Error; } {
        var _value:Slice<GoInt64> = new Slice<GoInt64>().nil(), _blocksize:GoInt64 = ((0 : GoInt64)), _addrs:Slice<GoUInt64> = new Slice<GoUInt64>().nil(), _err:Error = ((null : stdgo.Error));
        var _sampleData:Slice<GoString> = _heapSampleRE.value.findStringSubmatch(_line);
        if (_sampleData.length != ((6 : GoInt))) {
            return { _0 : _value, _1 : _blocksize, _2 : _addrs, _3 : stdgo.fmt.Fmt.errorf("unexpected number of sample values: got %d, want 6", Go.toInterface(_sampleData.length)) };
        };
        var _valueIndex:GoInt = ((1 : GoInt));
        if (legacyHeapAllocated) {
            _valueIndex = ((3 : GoInt));
        };
        var _v1:GoInt64 = ((0 : GoInt64)), _v2:GoInt64 = ((0 : GoInt64));
        {
            {
                var __tmp__ = stdgo.strconv.Strconv.parseInt(_sampleData[_valueIndex], ((10 : GoInt)), ((64 : GoInt)));
                _v1 = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _value, _1 : _blocksize, _2 : _addrs, _3 : stdgo.fmt.Fmt.errorf("malformed sample: %s: %v", Go.toInterface(_line), Go.toInterface(_err)) };
            };
        };
        {
            {
                var __tmp__ = stdgo.strconv.Strconv.parseInt(_sampleData[_valueIndex + ((1 : GoInt))], ((10 : GoInt)), ((64 : GoInt)));
                _v2 = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _value, _1 : _blocksize, _2 : _addrs, _3 : stdgo.fmt.Fmt.errorf("malformed sample: %s: %v", Go.toInterface(_line), Go.toInterface(_err)) };
            };
        };
        if (_v1 == ((0 : GoInt64))) {
            if (_v2 != ((0 : GoInt64))) {
                return { _0 : _value, _1 : _blocksize, _2 : _addrs, _3 : stdgo.fmt.Fmt.errorf("allocation count was 0 but allocation bytes was %d", Go.toInterface(_v2)) };
            };
        } else {
            _blocksize = _v2 / _v1;
            if (_sampling == (("v2" : GoString))) {
                {
                    var __tmp__ = _scaleHeapSample(_v1, _v2, _rate);
                    _v1 = __tmp__._0;
                    _v2 = __tmp__._1;
                };
            };
        };
        _value = new Slice<GoInt64>(_v1, _v2);
        _addrs = _parseHexAddresses(_sampleData[((5 : GoInt))]);
        return { _0 : _value, _1 : _blocksize, _2 : _addrs, _3 : ((null : stdgo.Error)) };
    }
/**
    // extractHexAddresses extracts hex numbers from a string and returns
    // them, together with their numeric value, in a slice.
**/
function _extractHexAddresses(_s:GoString):{ var _0 : Slice<GoString>; var _1 : Slice<GoUInt64>; } {
        var _hexStrings:Slice<GoString> = _hexNumberRE.value.findAllString(_s, -((1 : GoUnTypedInt)));
        var _ids:Slice<GoUInt64> = new Slice<GoUInt64>().nil();
        for (_s in _hexStrings) {
            {
                var __tmp__ = stdgo.strconv.Strconv.parseUint(_s, ((0 : GoInt)), ((64 : GoInt))), _id:GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _ids = _ids.__append__(_id);
                } else {
                    throw (("failed to parse hex value:" : GoString)) + _s;
                };
            };
        };
        return { _0 : _hexStrings, _1 : _ids };
    }
/**
    // parseHexAddresses parses hex numbers from a string and returns them
    // in a slice.
**/
function _parseHexAddresses(_s:GoString):Slice<GoUInt64> {
        var __tmp__ = _extractHexAddresses(_s), _:Slice<GoString> = __tmp__._0, _ids:Slice<GoUInt64> = __tmp__._1;
        return _ids;
    }
/**
    // scaleHeapSample adjusts the data from a heapz Sample to
    // account for its probability of appearing in the collected
    // data. heapz profiles are a sampling of the memory allocations
    // requests in a program. We estimate the unsampled value by dividing
    // each collected sample by its probability of appearing in the
    // profile. heapz v2 profiles rely on a poisson process to determine
    // which samples to collect, based on the desired average collection
    // rate R. The probability of a sample of size S to appear in that
    // profile is 1-exp(-S/R).
**/
function _scaleHeapSample(_count:GoInt64, _size:GoInt64, _rate:GoInt64):{ var _0 : GoInt64; var _1 : GoInt64; } {
        if (_count == ((0 : GoInt64)) || _size == ((0 : GoInt64))) {
            return { _0 : ((0 : GoInt64)), _1 : ((0 : GoInt64)) };
        };
        if (_rate <= ((1 : GoInt64))) {
            return { _0 : _count, _1 : _size };
        };
        var _avgSize:GoFloat64 = ((_size : GoFloat64)) / ((_count : GoFloat64));
        var _scale:GoFloat64 = ((1 : GoFloat64)) / (((1 : GoFloat64)) - stdgo.math.Math.exp(-_avgSize / ((_rate : GoFloat64))));
        return { _0 : (((((_count : GoFloat64)) * _scale) : GoInt64)), _1 : (((((_size : GoFloat64)) * _scale) : GoInt64)) };
    }
/**
    // parseContention parses a mutex or contention profile. There are 2 cases:
    // "--- contentionz " for legacy C++ profiles (and backwards compatibility)
    // "--- mutex:" or "--- contention:" for profiles generated by the Go runtime.
    // This code converts the text output from runtime into a *Profile. (In the future
    // the runtime might write a serialized Profile directly making this unnecessary.)
**/
function _parseContention(_b:Slice<GoByte>):{ var _0 : Pointer<Profile>; var _1 : Error; } {
        var _r:Pointer<stdgo.bytes.Bytes.Buffer> = stdgo.bytes.Bytes.newBuffer(_b);
        var _l:GoString = (("" : GoString));
        var _err:Error = ((null : stdgo.Error));
        while (true) {
            {
                var __tmp__ = _r.value.readString((("\n".code : GoRune)));
                _l = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : new Pointer<Profile>().nil(), _1 : _err };
            };
            if (!_isSpaceOrComment(_l)) {
                break;
            };
        };
        if (stdgo.strings.Strings.hasPrefix(_l, "--- contentionz ")) {
            return _parseCppContention(_r);
        } else if (stdgo.strings.Strings.hasPrefix(_l, "--- mutex:")) {
            return _parseCppContention(_r);
        } else if (stdgo.strings.Strings.hasPrefix(_l, "--- contention:")) {
            return _parseCppContention(_r);
        };
        return { _0 : new Pointer<Profile>().nil(), _1 : _errUnrecognized };
    }
/**
    // parseCppContention parses the output from synchronization_profiling.cc
    // for backward compatibility, and the compatible (non-debug) block profile
    // output from the Go runtime.
**/
function _parseCppContention(_r:Pointer<stdgo.bytes.Bytes.Buffer>):{ var _0 : Pointer<Profile>; var _1 : Error; } {
        var _p:Pointer<Profile> = Go.pointer((({ periodType : Go.pointer((({ type : "contentions", unit : "count", _typeX : 0, _unitX : 0 } : ValueType_))), period : ((1 : GoInt64)), sampleType : new Slice<Pointer<ValueType_>>(Go.pointer((({ type : "contentions", unit : "count", _typeX : 0, _unitX : 0 } : ValueType_))), Go.pointer((({ type : "delay", unit : "nanoseconds", _typeX : 0, _unitX : 0 } : ValueType_)))), defaultSampleType : "", sample : new Slice<Pointer<Sample>>().nil(), mapping : new Slice<Pointer<Mapping>>().nil(), location : new Slice<Pointer<Location>>().nil(), function_ : new Slice<Pointer<Function>>().nil(), comments : new Slice<GoString>().nil(), dropFrames : "", keepFrames : "", timeNanos : 0, durationNanos : 0, _commentX : new Slice<GoInt64>().nil(), _dropFramesX : 0, _keepFramesX : 0, _stringTable : new Slice<GoString>().nil(), _defaultSampleTypeX : 0 } : Profile)));
        var _cpuHz:GoInt64 = ((0 : GoInt64));
        var _l:GoString = (("" : GoString));
        var _err:Error = ((null : stdgo.Error));
        final _delimiter:GoString = "=";
        while (true) {
            {
                var __tmp__ = _r.value.readString((("\n".code : GoRune)));
                _l = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                if (Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof)) {
                    return { _0 : new Pointer<Profile>().nil(), _1 : _err };
                };
                if (_l == (("" : GoString))) {
                    break;
                };
            };
            if (_isSpaceOrComment(_l)) {
                continue;
            };
            {
                _l = stdgo.strings.Strings.trimSpace(_l);
                if (_l == (("" : GoString))) {
                    continue;
                };
            };
            if (stdgo.strings.Strings.hasPrefix(_l, "---")) {
                break;
            };
            var _attr:Slice<GoString> = stdgo.strings.Strings.splitN(_l, _delimiter, ((2 : GoInt)));
            if (_attr.length != ((2 : GoInt))) {
                break;
            };
            var _key:GoString = stdgo.strings.Strings.trimSpace(_attr[((0 : GoInt))]), _val:GoString = stdgo.strings.Strings.trimSpace(_attr[((1 : GoInt))]);
            var _err:Error = ((null : stdgo.Error));
            if (_key == (("cycles/second" : GoString))) {
                {
                    {
                        var __tmp__ = stdgo.strconv.Strconv.parseInt(_val, ((0 : GoInt)), ((64 : GoInt)));
                        _cpuHz = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : new Pointer<Profile>().nil(), _1 : _errUnrecognized };
                    };
                };
            } else if (_key == (("sampling period" : GoString))) {
                {
                    {
                        var __tmp__ = stdgo.strconv.Strconv.parseInt(_val, ((0 : GoInt)), ((64 : GoInt)));
                        _p.value.period = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : new Pointer<Profile>().nil(), _1 : _errUnrecognized };
                    };
                };
            } else if (_key == (("ms since reset" : GoString))) {
                var __tmp__ = stdgo.strconv.Strconv.parseInt(_val, ((0 : GoInt)), ((64 : GoInt))), _ms:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : new Pointer<Profile>().nil(), _1 : _errUnrecognized };
                };
                _p.value.durationNanos = _ms * ((1000 : GoInt64)) * ((1000 : GoInt64));
            } else if (_key == (("format" : GoString))) {
                return { _0 : new Pointer<Profile>().nil(), _1 : _errUnrecognized };
            } else if (_key == (("resolution" : GoString))) {
                return { _0 : new Pointer<Profile>().nil(), _1 : _errUnrecognized };
            } else if (_key == (("discarded samples" : GoString))) {} else {
                return { _0 : new Pointer<Profile>().nil(), _1 : _errUnrecognized };
            };
        };
        var _locs:GoMap<GoUInt64, Pointer<Location>> = new GoMap<GoUInt64, Pointer<Location>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Location", [], stdgo.reflect.Reflect.GoType.named("internal/profile.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "mapping", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "limit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "file", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "buildID", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "hasFunctions", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasFilenames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasLineNumbers", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasInlineFrames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_fileX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_buildIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }])))) }, { name : "address", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("internal/profile.Line", [], stdgo.reflect.Reflect.GoType.structType([{ name : "function_", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Function", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "systemName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "filename", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_nameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_systemNameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_filenameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_functionIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }]))) }, { name : "isFolded", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_mappingIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }])))))));
        while (true) {
            if (!_isSpaceOrComment(_l)) {
                {
                    _l = stdgo.strings.Strings.trimSpace(_l);
                    if (stdgo.strings.Strings.hasPrefix(_l, "---")) {
                        break;
                    };
                };
                var __tmp__ = _parseContentionSample(_l, _p.value.period, _cpuHz), _value:Slice<GoInt64> = __tmp__._0, _addrs:Slice<GoUInt64> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    return { _0 : new Pointer<Profile>().nil(), _1 : _err };
                };
                var _sloc:Slice<Pointer<Location>> = new Slice<Pointer<Location>>().nil();
                for (_addr in _addrs) {
                    _addr--;
                    var _loc:Pointer<Location> = _locs[_addr];
                    if (_locs[_addr] == null || _locs[_addr].isNil()) {
                        _loc = Go.pointer((({ address : _addr, id : 0, mapping : new Pointer<Mapping>().nil(), line : new Slice<Line>().nil(), isFolded : false, _mappingIDX : 0 } : Location)));
                        _p.value.location = _p.value.location.__append__(_loc);
                        _locs[_addr] = _loc;
                    };
                    _sloc = _sloc.__append__(_loc);
                };
                _p.value.sample = _p.value.sample.__append__(Go.pointer((({ value : _value, location : _sloc, label : new GoMap<GoString, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))).nil(), numLabel : new GoMap<GoString, Slice<GoInt64>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int64_kind))))).nil(), numUnit : new GoMap<GoString, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))).nil(), _locationIDX : new Slice<GoUInt64>().nil(), _labelX : new Slice<Label>().nil() } : Sample))));
            };
            {
                {
                    var __tmp__ = _r.value.readString((("\n".code : GoRune)));
                    _l = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    if (Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof)) {
                        return { _0 : new Pointer<Profile>().nil(), _1 : _err };
                    };
                    if (_l == (("" : GoString))) {
                        break;
                    };
                };
            };
        };
        {
            _err = _parseAdditionalSections(_l, _r, _p);
            if (_err != null) {
                return { _0 : new Pointer<Profile>().nil(), _1 : _err };
            };
        };
        return { _0 : _p, _1 : ((null : stdgo.Error)) };
    }
/**
    // parseContentionSample parses a single row from a contention profile
    // into a new Sample.
**/
function _parseContentionSample(_line:GoString, _period:GoInt64, _cpuHz:GoInt64):{ var _0 : Slice<GoInt64>; var _1 : Slice<GoUInt64>; var _2 : Error; } {
        var _value:Slice<GoInt64> = new Slice<GoInt64>().nil(), _addrs:Slice<GoUInt64> = new Slice<GoUInt64>().nil(), _err:Error = ((null : stdgo.Error));
        var _sampleData:Slice<GoString> = _contentionSampleRE.value.findStringSubmatch(_line);
        if (_sampleData == null || _sampleData.isNil()) {
            return { _0 : _value, _1 : _addrs, _2 : _errUnrecognized };
        };
        var __tmp__ = stdgo.strconv.Strconv.parseInt(_sampleData[((1 : GoInt))], ((10 : GoInt)), ((64 : GoInt))), _v1:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _value, _1 : _addrs, _2 : stdgo.fmt.Fmt.errorf("malformed sample: %s: %v", Go.toInterface(_line), Go.toInterface(_err)) };
        };
        var __tmp__ = stdgo.strconv.Strconv.parseInt(_sampleData[((2 : GoInt))], ((10 : GoInt)), ((64 : GoInt))), _v2:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _value, _1 : _addrs, _2 : stdgo.fmt.Fmt.errorf("malformed sample: %s: %v", Go.toInterface(_line), Go.toInterface(_err)) };
        };
        if (_period > ((0 : GoInt64))) {
            if (_cpuHz > ((0 : GoInt64))) {
                var _cpuGHz:GoFloat64 = ((_cpuHz : GoFloat64)) / ((1e+09 : GoFloat64));
                _v1 = (((((_v1 : GoFloat64)) * ((_period : GoFloat64)) / _cpuGHz) : GoInt64));
            };
            _v2 = _v2 * _period;
        };
        _value = new Slice<GoInt64>(_v2, _v1);
        _addrs = _parseHexAddresses(_sampleData[((3 : GoInt))]);
        return { _0 : _value, _1 : _addrs, _2 : ((null : stdgo.Error)) };
    }
/**
    // parseThread parses a Threadz profile and returns a new Profile.
**/
function _parseThread(_b:Slice<GoByte>):{ var _0 : Pointer<Profile>; var _1 : Error; } {
        var _r:Pointer<stdgo.bytes.Bytes.Buffer> = stdgo.bytes.Bytes.newBuffer(_b);
        var _line:GoString = (("" : GoString));
        var _err:Error = ((null : stdgo.Error));
        while (true) {
            {
                var __tmp__ = _r.value.readString((("\n".code : GoRune)));
                _line = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : new Pointer<Profile>().nil(), _1 : _err };
            };
            if (!_isSpaceOrComment(_line)) {
                break;
            };
        };
        {
            var _m:Slice<GoString> = _threadzStartRE.value.findStringSubmatch(_line);
            if (_m != null && !_m.isNil()) {
                while (true) {
                    {
                        var __tmp__ = _r.value.readString((("\n".code : GoRune)));
                        _line = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        if (Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof)) {
                            return { _0 : new Pointer<Profile>().nil(), _1 : _err };
                        };
                        if (_line == (("" : GoString))) {
                            break;
                        };
                    };
                    if (_sectionTrigger(_line).__t__ != _unrecognizedSection.__t__ || _line[((0 : GoInt))] == (("-".code : GoRune))) {
                        break;
                    };
                };
            } else {
                var _t:Slice<GoString> = _threadStartRE.value.findStringSubmatch(_line);
                if (_t.length != ((4 : GoInt))) {
                    return { _0 : new Pointer<Profile>().nil(), _1 : _errUnrecognized };
                };
            };
        };
        var _p:Pointer<Profile> = Go.pointer((({ sampleType : new Slice<Pointer<ValueType_>>(Go.pointer((({ type : "thread", unit : "count", _typeX : 0, _unitX : 0 } : ValueType_)))), periodType : Go.pointer((({ type : "thread", unit : "count", _typeX : 0, _unitX : 0 } : ValueType_))), period : ((1 : GoInt64)), defaultSampleType : "", sample : new Slice<Pointer<Sample>>().nil(), mapping : new Slice<Pointer<Mapping>>().nil(), location : new Slice<Pointer<Location>>().nil(), function_ : new Slice<Pointer<Function>>().nil(), comments : new Slice<GoString>().nil(), dropFrames : "", keepFrames : "", timeNanos : 0, durationNanos : 0, _commentX : new Slice<GoInt64>().nil(), _dropFramesX : 0, _keepFramesX : 0, _stringTable : new Slice<GoString>().nil(), _defaultSampleTypeX : 0 } : Profile)));
        var _locs:GoMap<GoUInt64, Pointer<Location>> = new GoMap<GoUInt64, Pointer<Location>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Location", [], stdgo.reflect.Reflect.GoType.named("internal/profile.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "mapping", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "limit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "file", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "buildID", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "hasFunctions", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasFilenames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasLineNumbers", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasInlineFrames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_fileX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_buildIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }])))) }, { name : "address", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("internal/profile.Line", [], stdgo.reflect.Reflect.GoType.structType([{ name : "function_", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Function", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "systemName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "filename", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_nameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_systemNameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_filenameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_functionIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }]))) }, { name : "isFolded", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_mappingIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }])))))));
        while (_sectionTrigger(_line).__t__ == _unrecognizedSection.__t__) {
            if (stdgo.strings.Strings.hasPrefix(_line, "---- no stack trace for")) {
                _line = "";
                break;
            };
            {
                var _t:Slice<GoString> = _threadStartRE.value.findStringSubmatch(_line);
                if (_t.length != ((4 : GoInt))) {
                    return { _0 : new Pointer<Profile>().nil(), _1 : _errUnrecognized };
                };
            };
            var _addrs:Slice<GoUInt64> = new Slice<GoUInt64>().nil();
            {
                var __tmp__ = _parseThreadSample(_r);
                _line = __tmp__._0;
                _addrs = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : new Pointer<Profile>().nil(), _1 : _errUnrecognized };
            };
            if (_addrs.length == ((0 : GoInt))) {
                if (_p.value.sample.length > ((0 : GoInt))) {
                    var _s:Pointer<Sample> = _p.value.sample[_p.value.sample.length - ((1 : GoInt))];
                    _s.value.value[((0 : GoInt))]++;
                };
                continue;
            };
            var _sloc:Slice<Pointer<Location>> = new Slice<Pointer<Location>>().nil();
            for (_addr in _addrs) {
                _addr--;
                var _loc:Pointer<Location> = _locs[_addr];
                if (_locs[_addr] == null || _locs[_addr].isNil()) {
                    _loc = Go.pointer((({ address : _addr, id : 0, mapping : new Pointer<Mapping>().nil(), line : new Slice<Line>().nil(), isFolded : false, _mappingIDX : 0 } : Location)));
                    _p.value.location = _p.value.location.__append__(_loc);
                    _locs[_addr] = _loc;
                };
                _sloc = _sloc.__append__(_loc);
            };
            _p.value.sample = _p.value.sample.__append__(Go.pointer((({ value : new Slice<GoInt64>(((1 : GoInt64))), location : _sloc, label : new GoMap<GoString, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))).nil(), numLabel : new GoMap<GoString, Slice<GoInt64>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int64_kind))))).nil(), numUnit : new GoMap<GoString, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))).nil(), _locationIDX : new Slice<GoUInt64>().nil(), _labelX : new Slice<Label>().nil() } : Sample))));
        };
        {
            _err = _parseAdditionalSections(_line, _r, _p);
            if (_err != null) {
                return { _0 : new Pointer<Profile>().nil(), _1 : _err };
            };
        };
        return { _0 : _p, _1 : ((null : stdgo.Error)) };
    }
/**
    // parseThreadSample parses a symbolized or unsymbolized stack trace.
    // Returns the first line after the traceback, the sample (or nil if
    // it hits a 'same-as-previous' marker) and an error.
**/
function _parseThreadSample(_b:Pointer<stdgo.bytes.Bytes.Buffer>):{ var _0 : GoString; var _1 : Slice<GoUInt64>; var _2 : Error; } {
        var _nextl:GoString = (("" : GoString)), _addrs:Slice<GoUInt64> = new Slice<GoUInt64>().nil(), _err:Error = ((null : stdgo.Error));
        var _l:GoString = (("" : GoString));
        var _sameAsPrevious:Bool = false;
        while (true) {
            {
                {
                    var __tmp__ = _b.value.readString((("\n".code : GoRune)));
                    _l = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    if (Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof)) {
                        return { _0 : "", _1 : new Slice<GoUInt64>().nil(), _2 : _err };
                    };
                    if (_l == (("" : GoString))) {
                        break;
                    };
                };
            };
            {
                _l = stdgo.strings.Strings.trimSpace(_l);
                if (_l == (("" : GoString))) {
                    continue;
                };
            };
            if (stdgo.strings.Strings.hasPrefix(_l, "---")) {
                break;
            };
            if (stdgo.strings.Strings.contains(_l, "same as previous thread")) {
                _sameAsPrevious = true;
                continue;
            };
            _addrs = _addrs.__append__(..._parseHexAddresses(_l).toArray());
        };
        if (_sameAsPrevious) {
            return { _0 : _l, _1 : new Slice<GoUInt64>().nil(), _2 : ((null : stdgo.Error)) };
        };
        return { _0 : _l, _1 : _addrs, _2 : ((null : stdgo.Error)) };
    }
/**
    // parseAdditionalSections parses any additional sections in the
    // profile, ignoring any unrecognized sections.
**/
function _parseAdditionalSections(_l:GoString, _b:Pointer<stdgo.bytes.Bytes.Buffer>, _p:Pointer<Profile>):Error {
        var _err:Error = ((null : stdgo.Error));
        while (true) {
            if (_sectionTrigger(_l).__t__ == _memoryMapSection.__t__) {
                break;
            };
            {
                var __tmp__ = _b.value.readString((("\n".code : GoRune))), _l:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    if (Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof)) {
                        return _err;
                    };
                    if (_l == (("" : GoString))) {
                        break;
                    };
                };
            };
        };
        return _p.value.parseMemoryMap(_b.value);
    }
function _parseMappingEntry(_l:GoString):{ var _0 : Pointer<Mapping>; var _1 : Error; } {
        var _mapping:Pointer<Mapping> = Go.pointer(new Mapping());
        var _err:Error = ((null : stdgo.Error));
        {
            var _me:Slice<GoString> = _procMapsRE.value.findStringSubmatch(_l);
            if (_me.length == ((9 : GoInt))) {
                if (!stdgo.strings.Strings.contains(_me[((3 : GoInt))], "x")) {
                    return { _0 : new Pointer<Mapping>().nil(), _1 : ((null : stdgo.Error)) };
                };
                {
                    {
                        var __tmp__ = stdgo.strconv.Strconv.parseUint(_me[((1 : GoInt))], ((16 : GoInt)), ((64 : GoInt)));
                        _mapping.value.start = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : new Pointer<Mapping>().nil(), _1 : _errUnrecognized };
                    };
                };
                {
                    {
                        var __tmp__ = stdgo.strconv.Strconv.parseUint(_me[((2 : GoInt))], ((16 : GoInt)), ((64 : GoInt)));
                        _mapping.value.limit = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : new Pointer<Mapping>().nil(), _1 : _errUnrecognized };
                    };
                };
                if (_me[((4 : GoInt))] != (("" : GoString))) {
                    {
                        {
                            var __tmp__ = stdgo.strconv.Strconv.parseUint(_me[((4 : GoInt))], ((16 : GoInt)), ((64 : GoInt)));
                            _mapping.value.offset = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            return { _0 : new Pointer<Mapping>().nil(), _1 : _errUnrecognized };
                        };
                    };
                };
                _mapping.value.file = _me[((8 : GoInt))];
                return { _0 : _mapping, _1 : ((null : stdgo.Error)) };
            };
        };
        {
            var _me:Slice<GoString> = _briefMapsRE.value.findStringSubmatch(_l);
            if (_me.length == ((6 : GoInt))) {
                {
                    {
                        var __tmp__ = stdgo.strconv.Strconv.parseUint(_me[((1 : GoInt))], ((16 : GoInt)), ((64 : GoInt)));
                        _mapping.value.start = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : new Pointer<Mapping>().nil(), _1 : _errUnrecognized };
                    };
                };
                {
                    {
                        var __tmp__ = stdgo.strconv.Strconv.parseUint(_me[((2 : GoInt))], ((16 : GoInt)), ((64 : GoInt)));
                        _mapping.value.limit = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : new Pointer<Mapping>().nil(), _1 : _errUnrecognized };
                    };
                };
                _mapping.value.file = _me[((3 : GoInt))];
                if (_me[((5 : GoInt))] != (("" : GoString))) {
                    {
                        {
                            var __tmp__ = stdgo.strconv.Strconv.parseUint(_me[((5 : GoInt))], ((16 : GoInt)), ((64 : GoInt)));
                            _mapping.value.offset = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            return { _0 : new Pointer<Mapping>().nil(), _1 : _errUnrecognized };
                        };
                    };
                };
                return { _0 : _mapping, _1 : ((null : stdgo.Error)) };
            };
        };
        return { _0 : new Pointer<Mapping>().nil(), _1 : _errUnrecognized };
    }
function _sectionTrigger(_line:GoString):T_sectionType {
        for (_trigger in _memoryMapTriggers) {
            if (stdgo.strings.Strings.contains(_line, _trigger)) {
                return _memoryMapSection;
            };
        };
        return _unrecognizedSection;
    }
function _isProfileType(_p:Pointer<Profile>, _t:Slice<GoString>):Bool {
        var _st:Slice<Pointer<ValueType_>> = _p.value.sampleType;
        if (_st.length != _t.length) {
            return false;
        };
        {
            var _i;
            for (_obj in _st.keyValueIterator()) {
                _i = _obj.key;
                if (_st[_i].value.type != _t[_i]) {
                    return false;
                };
            };
        };
        return true;
    }
/**
    // Merge merges all the profiles in profs into a single Profile.
    // Returns a new profile independent of the input profiles. The merged
    // profile is compacted to eliminate unused samples, locations,
    // functions and mappings. Profiles must have identical profile sample
    // and period types or the merge will fail. profile.Period of the
    // resulting profile will be the maximum of all profiles, and
    // profile.TimeNanos will be the earliest nonzero one.
**/
function merge(_srcs:Slice<Pointer<Profile>>):{ var _0 : Pointer<Profile>; var _1 : Error; } {
        if (_srcs.length == ((0 : GoInt))) {
            return { _0 : new Pointer<Profile>().nil(), _1 : stdgo.fmt.Fmt.errorf("no profiles to merge") };
        };
        var __tmp__ = _combineHeaders(_srcs), _p:Pointer<Profile> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<Profile>().nil(), _1 : _err };
        };
        var _pm:Pointer<T_profileMerger> = Go.pointer((({ _p : _p, _samples : new GoMap<T_sampleKey, Pointer<Sample>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("internal/profile.sampleKey", [], stdgo.reflect.Reflect.GoType.named("internal/profile.sampleKey", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_locations", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_labels", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_numlabels", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }]))), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Sample", [], stdgo.reflect.Reflect.GoType.named("internal/profile.Sample", [], stdgo.reflect.Reflect.GoType.structType([{ name : "location", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "mapping", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "limit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "file", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "buildID", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "hasFunctions", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasFilenames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasLineNumbers", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasInlineFrames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_fileX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_buildIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))) }, { name : "address", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("internal/profile.Line", [], stdgo.reflect.Reflect.GoType.structType([{ name : "function_", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Function", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "systemName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "filename", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_nameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_systemNameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_filenameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_functionIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }]))) }, { name : "isFolded", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_mappingIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }])))) }, { name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int64_kind)) }, { name : "label", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))) }, { name : "numLabel", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int64_kind))) }, { name : "numUnit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))) }, { name : "_locationIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint64_kind)) }, { name : "_labelX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("internal/profile.Label", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_keyX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_strX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_numX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))) }]))))))), _locations : new GoMap<T_locationKey, Pointer<Location>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("internal/profile.locationKey", [], stdgo.reflect.Reflect.GoType.named("internal/profile.locationKey", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_addr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "_mappingID", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "_lines", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_isFolded", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }]))), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Location", [], stdgo.reflect.Reflect.GoType.named("internal/profile.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "mapping", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "limit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "file", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "buildID", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "hasFunctions", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasFilenames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasLineNumbers", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasInlineFrames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_fileX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_buildIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }])))) }, { name : "address", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("internal/profile.Line", [], stdgo.reflect.Reflect.GoType.structType([{ name : "function_", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Function", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "systemName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "filename", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_nameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_systemNameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_filenameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_functionIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }]))) }, { name : "isFolded", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_mappingIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }]))))))), _functions : new GoMap<T_functionKey, Pointer<Function>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("internal/profile.functionKey", [], stdgo.reflect.Reflect.GoType.named("internal/profile.functionKey", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_systemName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_fileName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }]))), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Function", [], stdgo.reflect.Reflect.GoType.named("internal/profile.Function", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "systemName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "filename", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_nameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_systemNameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_filenameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))))))), _mappings : new GoMap<T_mappingKey, Pointer<Mapping>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("internal/profile.mappingKey", [], stdgo.reflect.Reflect.GoType.named("internal/profile.mappingKey", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_size", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "_offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "_buildIDOrFile", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }]))), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "limit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "file", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "buildID", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "hasFunctions", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasFilenames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasLineNumbers", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasInlineFrames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_fileX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_buildIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))))))), _locationsByID : new GoMap<GoUInt64, Pointer<Location>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "mapping", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "limit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "file", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "buildID", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "hasFunctions", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasFilenames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasLineNumbers", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasInlineFrames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_fileX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_buildIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))) }, { name : "address", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("internal/profile.Line", [], stdgo.reflect.Reflect.GoType.structType([{ name : "function_", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Function", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "systemName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "filename", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_nameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_systemNameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_filenameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_functionIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }]))) }, { name : "isFolded", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_mappingIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }])))))).nil(), _functionsByID : new GoMap<GoUInt64, Pointer<Function>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Function", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "systemName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "filename", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_nameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_systemNameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_filenameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }])))))).nil(), _mappingsByID : new GoMap<GoUInt64, T_mapInfo>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.named("internal/profile.mapInfo", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_m", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "limit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "file", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "buildID", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "hasFunctions", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasFilenames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasLineNumbers", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasInlineFrames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_fileX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_buildIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))) }, { name : "_offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))))).nil() } : T_profileMerger)));
        for (_src in _srcs) {
            _pm.value._locationsByID = new GoMap<GoUInt64, Pointer<Location>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Location", [], stdgo.reflect.Reflect.GoType.named("internal/profile.Location", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "mapping", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "limit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "file", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "buildID", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "hasFunctions", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasFilenames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasLineNumbers", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasInlineFrames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_fileX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_buildIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }])))) }, { name : "address", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("internal/profile.Line", [], stdgo.reflect.Reflect.GoType.structType([{ name : "function_", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Function", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "systemName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "filename", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_nameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_systemNameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_filenameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_functionIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }]))) }, { name : "isFolded", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_mappingIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }])))))));
            _pm.value._functionsByID = new GoMap<GoUInt64, Pointer<Function>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Function", [], stdgo.reflect.Reflect.GoType.named("internal/profile.Function", [], stdgo.reflect.Reflect.GoType.structType([{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "systemName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "filename", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_nameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_systemNameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }, { name : "_filenameX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }])))))));
            _pm.value._mappingsByID = new GoMap<GoUInt64, T_mapInfo>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint64_kind), stdgo.reflect.Reflect.GoType.named("internal/profile.mapInfo", [], stdgo.reflect.Reflect.GoType.named("internal/profile.mapInfo", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_m", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("internal/profile.Mapping", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "limit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint64_kind) },
{ name : "file", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "buildID", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "hasFunctions", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasFilenames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasLineNumbers", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "hasInlineFrames", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_fileX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) },
{ name : "_buildIDX", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))) }, { name : "_offset", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int64_kind) }]))))));
            if ((_pm.value._mappings == null ? 0 : _pm.value._mappings.length) == ((0 : GoInt)) && _src.value.mapping.length > ((0 : GoInt))) {
                _pm.value._mapMapping(_src.value.mapping[((0 : GoInt))]);
            };
            for (_s in _src.value.sample) {
                if (!_isZeroSample(_s)) {
                    _pm.value._mapSample(_s);
                };
            };
        };
        for (_s in _p.value.sample) {
            if (_isZeroSample(_s)) {
                return merge(new Slice<Pointer<Profile>>(_p));
            };
        };
        return { _0 : _p, _1 : ((null : stdgo.Error)) };
    }
function _isZeroSample(_s:Pointer<Sample>):Bool {
        for (_v in _s.value.value) {
            if (_v != ((0 : GoInt64))) {
                return false;
            };
        };
        return true;
    }
/**
    // combineHeaders checks that all profiles can be merged and returns
    // their combined profile.
**/
function _combineHeaders(_srcs:Slice<Pointer<Profile>>):{ var _0 : Pointer<Profile>; var _1 : Error; } {
        for (_s in _srcs.__slice__(((1 : GoInt)))) {
            {
                var _err:stdgo.Error = _srcs[((0 : GoInt))].value._compatible(_s);
                if (_err != null) {
                    return { _0 : new Pointer<Profile>().nil(), _1 : _err };
                };
            };
        };
        var _timeNanos:GoInt64 = ((0 : GoInt64)), _durationNanos:GoInt64 = ((0 : GoInt64)), _period:GoInt64 = ((0 : GoInt64));
        var _comments:Slice<GoString> = new Slice<GoString>().nil();
        var _seenComments:GoMap<GoString, Bool> = new GoMap<GoString, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind))));
        var _defaultSampleType:GoString = (("" : GoString));
        for (_s in _srcs) {
            if (_timeNanos == ((0 : GoInt64)) || _s.value.timeNanos < _timeNanos) {
                _timeNanos = _s.value.timeNanos;
            };
            _durationNanos = _durationNanos + (_s.value.durationNanos);
            if (_period == ((0 : GoInt64)) || _period < _s.value.period) {
                _period = _s.value.period;
            };
            for (_c in _s.value.comments) {
                {
                    var _seen:Bool = _seenComments[_c];
                    if (!_seen) {
                        _comments = _comments.__append__(_c);
                        _seenComments[_c] = true;
                    };
                };
            };
            if (_defaultSampleType == (("" : GoString))) {
                _defaultSampleType = _s.value.defaultSampleType;
            };
        };
        var _p:Pointer<Profile> = Go.pointer((({ sampleType : new Slice<Pointer<ValueType_>>(...[for (i in 0 ... ((_srcs[((0 : GoInt))].value.sampleType.length : GoInt)).toBasic()) new Pointer<ValueType_>().nil()]), dropFrames : _srcs[((0 : GoInt))].value.dropFrames, keepFrames : _srcs[((0 : GoInt))].value.keepFrames, timeNanos : _timeNanos, durationNanos : _durationNanos, periodType : _srcs[((0 : GoInt))].value.periodType, period : _period, comments : _comments, defaultSampleType : _defaultSampleType, sample : new Slice<Pointer<Sample>>().nil(), mapping : new Slice<Pointer<Mapping>>().nil(), location : new Slice<Pointer<Location>>().nil(), function_ : new Slice<Pointer<Function>>().nil(), _commentX : new Slice<GoInt64>().nil(), _dropFramesX : 0, _keepFramesX : 0, _stringTable : new Slice<GoString>().nil(), _defaultSampleTypeX : 0 } : Profile)));
        Go.copy(_p.value.sampleType, _srcs[((0 : GoInt))].value.sampleType);
        return { _0 : _p, _1 : ((null : stdgo.Error)) };
    }
/**
    // equalValueType returns true if the two value types are semantically
    // equal. It ignores the internal fields used during encode/decode.
**/
function _equalValueType(_st1:Pointer<ValueType_>, _st2:Pointer<ValueType_>):Bool {
        return _st1.value.type == _st2.value.type && _st1.value.unit == _st2.value.unit;
    }
/**
    // Parse parses a profile and checks for its validity. The input
    // may be a gzip-compressed encoded protobuf or one of many legacy
    // profile formats which may be unsupported in the future.
**/
function parse(_r:stdgo.io.Io.Reader):{ var _0 : Pointer<Profile>; var _1 : Error; } {
        var __tmp__ = stdgo.io.Io.readAll(_r), _orig:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<Profile>().nil(), _1 : _err };
        };
        var _p:Pointer<Profile> = new Pointer<Profile>().nil();
        if (_orig.length >= ((2 : GoInt)) && _orig[((0 : GoInt))] == ((31 : GoUInt8)) && _orig[((1 : GoInt))] == ((139 : GoUInt8))) {
            var __tmp__ = stdgo.compress.gzip.Gzip.newReader(stdgo.bytes.Bytes.newBuffer(_orig).value), _gz:Pointer<stdgo.compress.gzip.Gzip.Reader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : new Pointer<Profile>().nil(), _1 : stdgo.fmt.Fmt.errorf("decompressing profile: %v", Go.toInterface(_err)) };
            };
            var __tmp__ = stdgo.io.Io.readAll(_gz.value), _data:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : new Pointer<Profile>().nil(), _1 : stdgo.fmt.Fmt.errorf("decompressing profile: %v", Go.toInterface(_err)) };
            };
            _orig = _data;
        };
        {
            {
                var __tmp__ = _parseUncompressed(_orig);
                _p = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                {
                    {
                        var __tmp__ = _parseLegacy(_orig);
                        _p = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : new Pointer<Profile>().nil(), _1 : stdgo.fmt.Fmt.errorf("parsing profile: %v", Go.toInterface(_err)) };
                    };
                };
            };
        };
        {
            var _err:stdgo.Error = _p.value.checkValid();
            if (_err != null) {
                return { _0 : new Pointer<Profile>().nil(), _1 : stdgo.fmt.Fmt.errorf("malformed profile: %v", Go.toInterface(_err)) };
            };
        };
        return { _0 : _p, _1 : ((null : stdgo.Error)) };
    }
function _parseLegacy(_data:Slice<GoByte>):{ var _0 : Pointer<Profile>; var _1 : Error; } {
        var _parsers:Slice<Slice<GoUInt8> -> { var _0 : Pointer<Profile>; var _1 : stdgo.Error; }> = new Slice<Slice<GoUInt8> -> { var _0 : Pointer<Profile>; var _1 : stdgo.Error; }>(_parseCPU, _parseHeap, _parseGoCount, _parseThread, _parseContention);
        for (_parser in _parsers) {
            var __tmp__ = _parser(_data), _p:Pointer<Profile> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _p.value._setMain();
                _p.value._addLegacyFrameInfo();
                return { _0 : _p, _1 : ((null : stdgo.Error)) };
            };
            if (Go.toInterface(_err) != Go.toInterface(_errUnrecognized)) {
                return { _0 : new Pointer<Profile>().nil(), _1 : _err };
            };
        };
        return { _0 : new Pointer<Profile>().nil(), _1 : _errUnrecognized };
    }
function _parseUncompressed(_data:Slice<GoByte>):{ var _0 : Pointer<Profile>; var _1 : Error; } {
        var _p:Pointer<Profile> = Go.pointer(new Profile());
        {
            var _err:stdgo.Error = _unmarshal(_data, _p.value);
            if (_err != null) {
                return { _0 : new Pointer<Profile>().nil(), _1 : _err };
            };
        };
        {
            var _err:stdgo.Error = _p.value._postDecode();
            if (_err != null) {
                return { _0 : new Pointer<Profile>().nil(), _1 : _err };
            };
        };
        return { _0 : _p, _1 : ((null : stdgo.Error)) };
    }
function _compatibleValueTypes(_v1:Pointer<ValueType_>, _v2:Pointer<ValueType_>):Bool {
        if (_v1 == null || _v1.isNil() || _v2 == null || _v2.isNil()) {
            return true;
        };
        return _v1.value.type == _v2.value.type && _v1.value.unit == _v2.value.unit;
    }
function _marshal(_m:T_message):Slice<GoByte> {
        var _b:T_buffer = new T_buffer();
        _m._encode(Go.pointer(_b));
        return _b._data;
    }
function _encodeVarint(_b:Pointer<T_buffer>, _x:GoUInt64):Void {
        while (_x >= ((128 : GoUInt64))) {
            _b.value._data = _b.value._data.__append__(((_x : GoByte)) | ((128 : GoUInt8)));
            _x = (_x >> (((7 : GoUnTypedInt))));
        };
        _b.value._data = _b.value._data.__append__(((_x : GoByte)));
    }
function _encodeLength(_b:Pointer<T_buffer>, _tag:GoInt, _len:GoInt):Void {
        _encodeVarint(_b, (((_tag : GoUInt64)) << ((3 : GoUnTypedInt))) | ((2 : GoUInt64)));
        _encodeVarint(_b, ((_len : GoUInt64)));
    }
function _encodeUint64(_b:Pointer<T_buffer>, _tag:GoInt, _x:GoUInt64):Void {
        _encodeVarint(_b, (((_tag : GoUInt64)) << ((3 : GoUnTypedInt))) | ((0 : GoUInt64)));
        _encodeVarint(_b, _x);
    }
function _encodeUint64s(_b:Pointer<T_buffer>, _tag:GoInt, _x:Slice<GoUInt64>):Void {
        if (_x.length > ((2 : GoInt))) {
            var _n1:GoInt = _b.value._data.length;
            for (_u in _x) {
                _encodeVarint(_b, _u);
            };
            var _n2:GoInt = _b.value._data.length;
            _encodeLength(_b, _tag, _n2 - _n1);
            var _n3:GoInt = _b.value._data.length;
            Go.copy(_b.value._tmp.__slice__(0), _b.value._data.__slice__(_n2, _n3));
            Go.copy(_b.value._data.__slice__(_n1 + (_n3 - _n2)), _b.value._data.__slice__(_n1, _n2));
            Go.copy(_b.value._data.__slice__(_n1), _b.value._tmp.__slice__(0, _n3 - _n2));
            return;
        };
        for (_u in _x) {
            _encodeUint64(_b, _tag, _u);
        };
    }
function _encodeUint64Opt(_b:Pointer<T_buffer>, _tag:GoInt, _x:GoUInt64):Void {
        if (_x == ((0 : GoUInt64))) {
            return;
        };
        _encodeUint64(_b, _tag, _x);
    }
function _encodeInt64(_b:Pointer<T_buffer>, _tag:GoInt, _x:GoInt64):Void {
        var _u:GoUInt64 = ((_x : GoUInt64));
        _encodeUint64(_b, _tag, _u);
    }
function _encodeInt64Opt(_b:Pointer<T_buffer>, _tag:GoInt, _x:GoInt64):Void {
        if (_x == ((0 : GoInt64))) {
            return;
        };
        _encodeInt64(_b, _tag, _x);
    }
function _encodeInt64s(_b:Pointer<T_buffer>, _tag:GoInt, _x:Slice<GoInt64>):Void {
        if (_x.length > ((2 : GoInt))) {
            var _n1:GoInt = _b.value._data.length;
            for (_u in _x) {
                _encodeVarint(_b, ((_u : GoUInt64)));
            };
            var _n2:GoInt = _b.value._data.length;
            _encodeLength(_b, _tag, _n2 - _n1);
            var _n3:GoInt = _b.value._data.length;
            Go.copy(_b.value._tmp.__slice__(0), _b.value._data.__slice__(_n2, _n3));
            Go.copy(_b.value._data.__slice__(_n1 + (_n3 - _n2)), _b.value._data.__slice__(_n1, _n2));
            Go.copy(_b.value._data.__slice__(_n1), _b.value._tmp.__slice__(0, _n3 - _n2));
            return;
        };
        for (_u in _x) {
            _encodeInt64(_b, _tag, _u);
        };
    }
function _encodeString(_b:Pointer<T_buffer>, _tag:GoInt, _x:GoString):Void {
        _encodeLength(_b, _tag, _x.length);
        _b.value._data = _b.value._data.__append__(..._x.toArray());
    }
function _encodeStrings(_b:Pointer<T_buffer>, _tag:GoInt, _x:Slice<GoString>):Void {
        for (_s in _x) {
            _encodeString(_b, _tag, _s);
        };
    }
function _encodeStringOpt(_b:Pointer<T_buffer>, _tag:GoInt, _x:GoString):Void {
        if (_x == (("" : GoString))) {
            return;
        };
        _encodeString(_b, _tag, _x);
    }
function _encodeBool(_b:Pointer<T_buffer>, _tag:GoInt, _x:Bool):Void {
        if (_x) {
            _encodeUint64(_b, _tag, ((1 : GoUInt64)));
        } else {
            _encodeUint64(_b, _tag, ((0 : GoUInt64)));
        };
    }
function _encodeBoolOpt(_b:Pointer<T_buffer>, _tag:GoInt, _x:Bool):Void {
        if (_x == false) {
            return;
        };
        _encodeBool(_b, _tag, _x);
    }
function _encodeMessage(_b:Pointer<T_buffer>, _tag:GoInt, _m:T_message):Void {
        var _n1:GoInt = _b.value._data.length;
        _m._encode(_b);
        var _n2:GoInt = _b.value._data.length;
        _encodeLength(_b, _tag, _n2 - _n1);
        var _n3:GoInt = _b.value._data.length;
        Go.copy(_b.value._tmp.__slice__(0), _b.value._data.__slice__(_n2, _n3));
        Go.copy(_b.value._data.__slice__(_n1 + (_n3 - _n2)), _b.value._data.__slice__(_n1, _n2));
        Go.copy(_b.value._data.__slice__(_n1), _b.value._tmp.__slice__(0, _n3 - _n2));
    }
function _unmarshal(_data:Slice<GoByte>, _m:T_message):Error {
        var _err:Error = ((null : stdgo.Error));
        var _b:T_buffer = (({ _data : _data, _typ : ((2 : GoInt)), _field : 0, _u64 : 0, _tmp : new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]) } : T_buffer)).__copy__();
        return _decodeMessage(Go.pointer(_b), _m);
    }
function _le64(_p:Slice<GoByte>):GoUInt64 {
        return ((_p[((0 : GoInt))] : GoUInt64)) | (((_p[((1 : GoInt))] : GoUInt64)) << ((8 : GoUnTypedInt))) | (((_p[((2 : GoInt))] : GoUInt64)) << ((16 : GoUnTypedInt))) | (((_p[((3 : GoInt))] : GoUInt64)) << ((24 : GoUnTypedInt))) | (((_p[((4 : GoInt))] : GoUInt64)) << ((32 : GoUnTypedInt))) | (((_p[((5 : GoInt))] : GoUInt64)) << ((40 : GoUnTypedInt))) | (((_p[((6 : GoInt))] : GoUInt64)) << ((48 : GoUnTypedInt))) | (((_p[((7 : GoInt))] : GoUInt64)) << ((56 : GoUnTypedInt)));
    }
function _le32(_p:Slice<GoByte>):GoUInt32 {
        return ((_p[((0 : GoInt))] : GoUInt32)) | (((_p[((1 : GoInt))] : GoUInt32)) << ((8 : GoUnTypedInt))) | (((_p[((2 : GoInt))] : GoUInt32)) << ((16 : GoUnTypedInt))) | (((_p[((3 : GoInt))] : GoUInt32)) << ((24 : GoUnTypedInt)));
    }
function _decodeVarint(_data:Slice<GoByte>):{ var _0 : GoUInt64; var _1 : Slice<GoByte>; var _2 : Error; } {
        var _i:GoInt = ((0 : GoInt));
        var _u:GoUInt64 = ((0 : GoUInt64));
        {
            _i = ((0 : GoInt));
            Go.cfor(true, _i++, {
                if (_i >= ((10 : GoInt)) || _i >= _data.length) {
                    return { _0 : ((0 : GoUInt64)), _1 : new Slice<GoUInt8>().nil(), _2 : stdgo.errors.Errors.new_("bad varint") };
                };
                _u = _u | (((((_data[_i] & ((127 : GoUInt8))) : GoUInt64)) << (((((7 : GoInt)) * _i) : GoUInt))));
                if (_data[_i] & ((128 : GoUInt8)) == ((0 : GoUInt8))) {
                    return { _0 : _u, _1 : _data.__slice__(_i + ((1 : GoInt))), _2 : ((null : stdgo.Error)) };
                };
            });
        };
    }
function _decodeField(_b:Pointer<T_buffer>, _data:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var __tmp__ = _decodeVarint(_data), _x:GoUInt64 = __tmp__._0, _data:Slice<GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : _err };
        };
        _b.value._field = (((_x >> ((3 : GoUnTypedInt))) : GoInt));
        _b.value._typ = (((_x & ((7 : GoUInt64))) : GoInt));
        _b.value._data = new Slice<GoUInt8>().nil();
        _b.value._u64 = ((0 : GoUInt64));
        if (_b.value._typ == ((0 : GoInt))) {
            {
                var __tmp__ = _decodeVarint(_data);
                _b.value._u64 = __tmp__._0;
                _data = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : new Slice<GoUInt8>().nil(), _1 : _err };
            };
        } else if (_b.value._typ == ((1 : GoInt))) {
            if (_data.length < ((8 : GoInt))) {
                return { _0 : new Slice<GoUInt8>().nil(), _1 : stdgo.errors.Errors.new_("not enough data") };
            };
            _b.value._u64 = _le64(_data.__slice__(0, ((8 : GoInt))));
            _data = _data.__slice__(((8 : GoInt)));
        } else if (_b.value._typ == ((2 : GoInt))) {
            var _n:GoUInt64 = ((0 : GoUInt64));
            {
                var __tmp__ = _decodeVarint(_data);
                _n = __tmp__._0;
                _data = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : new Slice<GoUInt8>().nil(), _1 : _err };
            };
            if (_n > ((_data.length : GoUInt64))) {
                return { _0 : new Slice<GoUInt8>().nil(), _1 : stdgo.errors.Errors.new_("too much data") };
            };
            _b.value._data = _data.__slice__(0, _n);
            _data = _data.__slice__(_n);
        } else if (_b.value._typ == ((5 : GoInt))) {
            if (_data.length < ((4 : GoInt))) {
                return { _0 : new Slice<GoUInt8>().nil(), _1 : stdgo.errors.Errors.new_("not enough data") };
            };
            _b.value._u64 = ((_le32(_data.__slice__(0, ((4 : GoInt)))) : GoUInt64));
            _data = _data.__slice__(((4 : GoInt)));
        } else {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : stdgo.fmt.Fmt.errorf("unknown wire type: %d", Go.toInterface(_b.value._typ)) };
        };
        return { _0 : _data, _1 : ((null : stdgo.Error)) };
    }
function _checkType(_b:Pointer<T_buffer>, _typ:GoInt):Error {
        if (_b.value._typ != _typ) {
            return stdgo.errors.Errors.new_("type mismatch");
        };
        return ((null : stdgo.Error));
    }
function _decodeMessage(_b:Pointer<T_buffer>, _m:T_message):Error {
        {
            var _err:stdgo.Error = _checkType(_b, ((2 : GoInt)));
            if (_err != null) {
                return _err;
            };
        };
        var _dec:Slice<T_decoder> = _m._decoder();
        var _data:Slice<GoUInt8> = _b.value._data;
        while (_data.length > ((0 : GoInt))) {
            var _err:Error = ((null : stdgo.Error));
            {
                var __tmp__ = _decodeField(_b, _data);
                _data = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
            if (_b.value._field >= _dec.length || _dec[_b.value._field].__t__ == null) {
                continue;
            };
            {
                var _err:stdgo.Error = _dec[_b.value._field].__t__(_b, _m);
                if (_err != null) {
                    return _err;
                };
            };
        };
        return ((null : stdgo.Error));
    }
function _decodeInt64(_b:Pointer<T_buffer>, _x:Pointer<GoInt64>):Error {
        {
            var _err:stdgo.Error = _checkType(_b, ((0 : GoInt)));
            if (_err != null) {
                return _err;
            };
        };
        _x.value = ((_b.value._u64 : GoInt64));
        return ((null : stdgo.Error));
    }
function _decodeInt64s(_b:Pointer<T_buffer>, _x:Pointer<Slice<GoInt64>>):Error {
        if (_b.value._typ == ((2 : GoInt))) {
            var _data:Slice<GoUInt8> = _b.value._data;
            while (_data.length > ((0 : GoInt))) {
                var _u:GoUInt64 = ((0 : GoUInt64));
                var _err:Error = ((null : stdgo.Error));
                {
                    {
                        var __tmp__ = _decodeVarint(_data);
                        _u = __tmp__._0;
                        _data = __tmp__._1;
                        _err = __tmp__._2;
                    };
                    if (_err != null) {
                        return _err;
                    };
                };
                _x.value = _x.value.__append__(((_u : GoInt64)));
            };
            return ((null : stdgo.Error));
        };
        var _i:GoInt64 = ((0 : GoInt64));
        {
            var _err:stdgo.Error = _decodeInt64(_b, Go.pointer(_i));
            if (_err != null) {
                return _err;
            };
        };
        _x.value = _x.value.__append__(_i);
        return ((null : stdgo.Error));
    }
function _decodeUint64(_b:Pointer<T_buffer>, _x:Pointer<GoUInt64>):Error {
        {
            var _err:stdgo.Error = _checkType(_b, ((0 : GoInt)));
            if (_err != null) {
                return _err;
            };
        };
        _x.value = _b.value._u64;
        return ((null : stdgo.Error));
    }
function _decodeUint64s(_b:Pointer<T_buffer>, _x:Pointer<Slice<GoUInt64>>):Error {
        if (_b.value._typ == ((2 : GoInt))) {
            var _data:Slice<GoUInt8> = _b.value._data;
            while (_data.length > ((0 : GoInt))) {
                var _u:GoUInt64 = ((0 : GoUInt64));
                var _err:Error = ((null : stdgo.Error));
                {
                    {
                        var __tmp__ = _decodeVarint(_data);
                        _u = __tmp__._0;
                        _data = __tmp__._1;
                        _err = __tmp__._2;
                    };
                    if (_err != null) {
                        return _err;
                    };
                };
                _x.value = _x.value.__append__(_u);
            };
            return ((null : stdgo.Error));
        };
        var _u:GoUInt64 = ((0 : GoUInt64));
        {
            var _err:stdgo.Error = _decodeUint64(_b, Go.pointer(_u));
            if (_err != null) {
                return _err;
            };
        };
        _x.value = _x.value.__append__(_u);
        return ((null : stdgo.Error));
    }
function _decodeString(_b:Pointer<T_buffer>, _x:Pointer<GoString>):Error {
        {
            var _err:stdgo.Error = _checkType(_b, ((2 : GoInt)));
            if (_err != null) {
                return _err;
            };
        };
        _x.value = ((_b.value._data : GoString));
        return ((null : stdgo.Error));
    }
function _decodeStrings(_b:Pointer<T_buffer>, _x:Pointer<Slice<GoString>>):Error {
        var _s:GoString = (("" : GoString));
        {
            var _err:stdgo.Error = _decodeString(_b, Go.pointer(_s));
            if (_err != null) {
                return _err;
            };
        };
        _x.value = _x.value.__append__(_s);
        return ((null : stdgo.Error));
    }
function _decodeBool(_b:Pointer<T_buffer>, _x:Pointer<Bool>):Error {
        {
            var _err:stdgo.Error = _checkType(_b, ((0 : GoInt)));
            if (_err != null) {
                return _err;
            };
        };
        if (((_b.value._u64 : GoInt64)) == ((0 : GoInt64))) {
            _x.value = false;
        } else {
            _x.value = true;
        };
        return ((null : stdgo.Error));
    }
class T_profileMerger_extension_fields {
    public function _mapSample(__tmp__, _src:Pointer<Sample>):Pointer<Sample> return __tmp__._mapSample(_src);
    public function _mapLocation(__tmp__, _src:Pointer<Location>):Pointer<Location> return __tmp__._mapLocation(_src);
    public function _mapMapping(__tmp__, _src:Pointer<Mapping>):T_mapInfo return __tmp__._mapMapping(_src);
    public function _mapLine(__tmp__, _src:Line):Line return __tmp__._mapLine(_src);
    public function _mapFunction(__tmp__, _src:Pointer<Function>):Pointer<Function> return __tmp__._mapFunction(_src);
}
class Profile_extension_fields {
    public function _decoder(__tmp__):Slice<T_decoder> return __tmp__._decoder();
    public function _preEncode(__tmp__):Void __tmp__._preEncode();
    public function _encode(__tmp__, _b:Pointer<T_buffer>):Void __tmp__._encode(_b);
    public function _postDecode(__tmp__):Error return __tmp__._postDecode();
    public function filterSamplesByName(__tmp__, _focus:Pointer<stdgo.regexp.Regexp.Regexp>, _ignore:Pointer<stdgo.regexp.Regexp.Regexp>, _hide:Pointer<stdgo.regexp.Regexp.Regexp>):{ var _0 : Bool; var _1 : Bool; var _2 : Bool; } return __tmp__.filterSamplesByName(_focus, _ignore, _hide);
    public function filterSamplesByTag(__tmp__, _focus:TagMatch, _ignore:TagMatch):{ var _0 : Bool; var _1 : Bool; } return __tmp__.filterSamplesByTag(_focus, _ignore);
    public function _remapLocationIDs(__tmp__):Void __tmp__._remapLocationIDs();
    public function _remapFunctionIDs(__tmp__):Void __tmp__._remapFunctionIDs();
    public function _remapMappingIDs(__tmp__):Void __tmp__._remapMappingIDs();
    public function parseMemoryMap(__tmp__, _rd:stdgo.io.Io.Reader):Error return __tmp__.parseMemoryMap(_rd);
    public function _addLegacyFrameInfo(__tmp__):Void __tmp__._addLegacyFrameInfo();
    public function normalize(__tmp__, _pb:Pointer<Profile>):Error return __tmp__.normalize(_pb);
    public function _compatible(__tmp__, _pb:Pointer<Profile>):Error return __tmp__._compatible(_pb);
    public function _setMain(__tmp__):Void __tmp__._setMain();
    public function write(__tmp__, _w:stdgo.io.Io.Writer):Error return __tmp__.write(_w);
    public function checkValid(__tmp__):Error return __tmp__.checkValid();
    public function aggregate(__tmp__, _inlineFrame:Bool, _function:Bool, _filename:Bool, _linenumber:Bool, _address:Bool):Error return __tmp__.aggregate(_inlineFrame, _function, _filename, _linenumber, _address);
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function merge(__tmp__, _pb:Pointer<Profile>, _r:GoFloat64):Error return __tmp__.merge(_pb, _r);
    public function compatible(__tmp__, _pb:Pointer<Profile>):Error return __tmp__.compatible(_pb);
    public function hasFunctions(__tmp__):Bool return __tmp__.hasFunctions();
    public function hasFileLines(__tmp__):Bool return __tmp__.hasFileLines();
    public function copy(__tmp__):Pointer<Profile> return __tmp__.copy();
    public function demangle(__tmp__, _d:Demangler):Error return __tmp__.demangle(_d);
    public function empty(__tmp__):Bool return __tmp__.empty();
    public function scale(__tmp__, _ratio:GoFloat64):Void __tmp__.scale(_ratio);
    public function scaleN(__tmp__, _ratios:Slice<GoFloat64>):Error return __tmp__.scaleN(_ratios);
    public function prune(__tmp__, _dropRx:Pointer<stdgo.regexp.Regexp.Regexp>, _keepRx:Pointer<stdgo.regexp.Regexp.Regexp>):Void __tmp__.prune(_dropRx, _keepRx);
    public function removeUninteresting(__tmp__):Error return __tmp__.removeUninteresting();
}
class ValueType__extension_fields {
    public function _decoder(__tmp__):Slice<T_decoder> return __tmp__._decoder();
    public function _encode(__tmp__, _b:Pointer<T_buffer>):Void __tmp__._encode(_b);
}
class Sample_extension_fields {
    public function _decoder(__tmp__):Slice<T_decoder> return __tmp__._decoder();
    public function _encode(__tmp__, _b:Pointer<T_buffer>):Void __tmp__._encode(_b);
    public function _key(__tmp__):T_sampleKey return __tmp__._key();
}
class Label_extension_fields {
    public function _decoder(__tmp__):Slice<T_decoder> return __tmp__._decoder();
    public function _encode(__tmp__, _b:Pointer<T_buffer>):Void __tmp__._encode(_b);
}
class Mapping_extension_fields {
    public function _decoder(__tmp__):Slice<T_decoder> return __tmp__._decoder();
    public function _encode(__tmp__, _b:Pointer<T_buffer>):Void __tmp__._encode(_b);
    public function _key(__tmp__):T_mappingKey return __tmp__._key();
}
class Location_extension_fields {
    public function _decoder(__tmp__):Slice<T_decoder> return __tmp__._decoder();
    public function _encode(__tmp__, _b:Pointer<T_buffer>):Void __tmp__._encode(_b);
    public function _matchesName(__tmp__, _re:Pointer<stdgo.regexp.Regexp.Regexp>):Bool return __tmp__._matchesName(_re);
    public function _unmatchedLines(__tmp__, _re:Pointer<stdgo.regexp.Regexp.Regexp>):Slice<Line> return __tmp__._unmatchedLines(_re);
    public function _key(__tmp__):T_locationKey return __tmp__._key();
}
class Line_extension_fields {
    public function _decoder(__tmp__):Slice<T_decoder> return __tmp__._decoder();
    public function _encode(__tmp__, _b:Pointer<T_buffer>):Void __tmp__._encode(_b);
}
class Function_extension_fields {
    public function _decoder(__tmp__):Slice<T_decoder> return __tmp__._decoder();
    public function _encode(__tmp__, _b:Pointer<T_buffer>):Void __tmp__._encode(_b);
    public function _key(__tmp__):T_functionKey return __tmp__._key();
}
