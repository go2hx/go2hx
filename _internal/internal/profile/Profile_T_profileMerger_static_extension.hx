package _internal.internal.profile;
@:keep @:allow(_internal.internal.profile.Profile.T_profileMerger_asInterface) class T_profileMerger_static_extension {
    @:keep
    static public function _mapFunction( _pm:stdgo.Ref<_internal.internal.profile.Profile_T_profileMerger.T_profileMerger>, _src:stdgo.Ref<_internal.internal.profile.Profile_Function.Function>):stdgo.Ref<_internal.internal.profile.Profile_Function.Function> {
        @:recv var _pm:stdgo.Ref<_internal.internal.profile.Profile_T_profileMerger.T_profileMerger> = _pm;
        if (_src == null || (_src : Dynamic).__nil__) {
            return null;
        };
        {
            var __tmp__ = (_pm._functionsByID != null && _pm._functionsByID.exists(_src.id) ? { _0 : _pm._functionsByID[_src.id], _1 : true } : { _0 : (null : stdgo.Ref<_internal.internal.profile.Profile_Function.Function>), _1 : false }), _f:stdgo.Ref<_internal.internal.profile.Profile_Function.Function> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _f;
            };
        };
        var _k = (_src._key()?.__copy__() : _internal.internal.profile.Profile_T_functionKey.T_functionKey);
        {
            var __tmp__ = (_pm._functions != null && _pm._functions.exists(_k?.__copy__()) ? { _0 : _pm._functions[_k?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<_internal.internal.profile.Profile_Function.Function>), _1 : false }), _f:stdgo.Ref<_internal.internal.profile.Profile_Function.Function> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                _pm._functionsByID[_src.id] = _f;
                return _f;
            };
        };
        var _f = (stdgo.Go.setRef(({ id : (((_pm._p.function_.length) + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64), name : _src.name?.__copy__(), systemName : _src.systemName?.__copy__(), filename : _src.filename?.__copy__(), startLine : _src.startLine } : _internal.internal.profile.Profile_Function.Function)) : stdgo.Ref<_internal.internal.profile.Profile_Function.Function>);
        _pm._functions[_k] = _f;
        _pm._functionsByID[_src.id] = _f;
        _pm._p.function_ = (_pm._p.function_.__append__(_f));
        return _f;
    }
    @:keep
    static public function _mapLine( _pm:stdgo.Ref<_internal.internal.profile.Profile_T_profileMerger.T_profileMerger>, _src:_internal.internal.profile.Profile_Line.Line):_internal.internal.profile.Profile_Line.Line {
        @:recv var _pm:stdgo.Ref<_internal.internal.profile.Profile_T_profileMerger.T_profileMerger> = _pm;
        var _ln = ({ function_ : _pm._mapFunction(_src.function_), line : _src.line } : _internal.internal.profile.Profile_Line.Line);
        return _ln?.__copy__();
    }
    @:keep
    static public function _mapMapping( _pm:stdgo.Ref<_internal.internal.profile.Profile_T_profileMerger.T_profileMerger>, _src:stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>):_internal.internal.profile.Profile_T_mapInfo.T_mapInfo {
        @:recv var _pm:stdgo.Ref<_internal.internal.profile.Profile_T_profileMerger.T_profileMerger> = _pm;
        if (_src == null || (_src : Dynamic).__nil__) {
            return (new _internal.internal.profile.Profile_T_mapInfo.T_mapInfo() : _internal.internal.profile.Profile_T_mapInfo.T_mapInfo);
        };
        {
            var __tmp__ = (_pm._mappingsByID != null && _pm._mappingsByID.exists(_src.id) ? { _0 : _pm._mappingsByID[_src.id], _1 : true } : { _0 : ({} : _internal.internal.profile.Profile_T_mapInfo.T_mapInfo), _1 : false }), _mi:_internal.internal.profile.Profile_T_mapInfo.T_mapInfo = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _mi?.__copy__();
            };
        };
        var _mk = (_src._key()?.__copy__() : _internal.internal.profile.Profile_T_mappingKey.T_mappingKey);
        {
            var __tmp__ = (_pm._mappings != null && _pm._mappings.exists(_mk?.__copy__()) ? { _0 : _pm._mappings[_mk?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>), _1 : false }), _m:stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                var _mi = (new _internal.internal.profile.Profile_T_mapInfo.T_mapInfo(_m, ((_m.start : stdgo.GoInt64) - (_src.start : stdgo.GoInt64) : stdgo.GoInt64)) : _internal.internal.profile.Profile_T_mapInfo.T_mapInfo);
                _pm._mappingsByID[_src.id] = _mi?.__copy__();
                return _mi?.__copy__();
            };
        };
        var _m = (stdgo.Go.setRef(({ id : (((_pm._p.mapping.length) + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64), start : _src.start, limit : _src.limit, offset : _src.offset, file : _src.file?.__copy__(), buildID : _src.buildID?.__copy__(), hasFunctions : _src.hasFunctions, hasFilenames : _src.hasFilenames, hasLineNumbers : _src.hasLineNumbers, hasInlineFrames : _src.hasInlineFrames } : _internal.internal.profile.Profile_Mapping.Mapping)) : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>);
        _pm._p.mapping = (_pm._p.mapping.__append__(_m));
        _pm._mappings[_mk] = _m;
        var _mi = (new _internal.internal.profile.Profile_T_mapInfo.T_mapInfo(_m, (0i64 : stdgo.GoInt64)) : _internal.internal.profile.Profile_T_mapInfo.T_mapInfo);
        _pm._mappingsByID[_src.id] = _mi?.__copy__();
        return _mi?.__copy__();
    }
    @:keep
    static public function _mapLocation( _pm:stdgo.Ref<_internal.internal.profile.Profile_T_profileMerger.T_profileMerger>, _src:stdgo.Ref<_internal.internal.profile.Profile_Location.Location>):stdgo.Ref<_internal.internal.profile.Profile_Location.Location> {
        @:recv var _pm:stdgo.Ref<_internal.internal.profile.Profile_T_profileMerger.T_profileMerger> = _pm;
        if (_src == null || (_src : Dynamic).__nil__) {
            return null;
        };
        {
            var __tmp__ = (_pm._locationsByID != null && _pm._locationsByID.exists(_src.id) ? { _0 : _pm._locationsByID[_src.id], _1 : true } : { _0 : (null : stdgo.Ref<_internal.internal.profile.Profile_Location.Location>), _1 : false }), _l:stdgo.Ref<_internal.internal.profile.Profile_Location.Location> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                _pm._locationsByID[_src.id] = _l;
                return _l;
            };
        };
        var _mi = (_pm._mapMapping(_src.mapping)?.__copy__() : _internal.internal.profile.Profile_T_mapInfo.T_mapInfo);
        var _l = (stdgo.Go.setRef(({ id : (((_pm._p.location.length) + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64), mapping : _mi._m, address : (((_src.address : stdgo.GoInt64) + _mi._offset : stdgo.GoInt64) : stdgo.GoUInt64), line : (new stdgo.Slice<_internal.internal.profile.Profile_Line.Line>((_src.line.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_src.line.length : stdgo.GoInt).toBasic() > 0 ? (_src.line.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : _internal.internal.profile.Profile_Line.Line)]) : stdgo.Slice<_internal.internal.profile.Profile_Line.Line>), isFolded : _src.isFolded } : _internal.internal.profile.Profile_Location.Location)) : stdgo.Ref<_internal.internal.profile.Profile_Location.Location>);
        for (_i => _ln in _src.line) {
            _l.line[(_i : stdgo.GoInt)] = _pm._mapLine(_ln?.__copy__())?.__copy__();
        };
        var _k = (_l._key()?.__copy__() : _internal.internal.profile.Profile_T_locationKey.T_locationKey);
        {
            var __tmp__ = (_pm._locations != null && _pm._locations.exists(_k?.__copy__()) ? { _0 : _pm._locations[_k?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<_internal.internal.profile.Profile_Location.Location>), _1 : false }), _ll:stdgo.Ref<_internal.internal.profile.Profile_Location.Location> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                _pm._locationsByID[_src.id] = _ll;
                return _ll;
            };
        };
        _pm._locationsByID[_src.id] = _l;
        _pm._locations[_k] = _l;
        _pm._p.location = (_pm._p.location.__append__(_l));
        return _l;
    }
    @:keep
    static public function _mapSample( _pm:stdgo.Ref<_internal.internal.profile.Profile_T_profileMerger.T_profileMerger>, _src:stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample>):stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample> {
        @:recv var _pm:stdgo.Ref<_internal.internal.profile.Profile_T_profileMerger.T_profileMerger> = _pm;
        var _s = (stdgo.Go.setRef(({ location : (new stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>((_src.location.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>), value : (new stdgo.Slice<stdgo.GoInt64>((_src.value.length : stdgo.GoInt).toBasic(), 0).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>), label : ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>), numLabel : ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoInt64>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoInt64>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt64>>), numUnit : ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) } : _internal.internal.profile.Profile_Sample.Sample)) : stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample>);
        for (_i => _l in _src.location) {
            _s.location[(_i : stdgo.GoInt)] = _pm._mapLocation(_l);
        };
        for (_k => _v in _src.label) {
            var _vv = (new stdgo.Slice<stdgo.GoString>((_v.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
            stdgo.Go.copySlice(_vv, _v);
            _s.label[_k] = _vv;
        };
        for (_k => _v in _src.numLabel) {
            var _u = (_src.numUnit[_k] ?? (null : stdgo.Slice<stdgo.GoString>));
            var _vv = (new stdgo.Slice<stdgo.GoInt64>((_v.length : stdgo.GoInt).toBasic(), 0).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
            var _uu = (new stdgo.Slice<stdgo.GoString>((_u.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
            stdgo.Go.copySlice(_vv, _v);
            stdgo.Go.copySlice(_uu, _u);
            _s.numLabel[_k] = _vv;
            _s.numUnit[_k] = _uu;
        };
        var _k = (_s._key()?.__copy__() : _internal.internal.profile.Profile_T_sampleKey.T_sampleKey);
        {
            var __tmp__ = (_pm._samples != null && _pm._samples.exists(_k?.__copy__()) ? { _0 : _pm._samples[_k?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample>), _1 : false }), _ss:stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                for (_i => _v in _src.value) {
                    _ss.value[(_i : stdgo.GoInt)] = (_ss.value[(_i : stdgo.GoInt)] + (_v) : stdgo.GoInt64);
                };
                return _ss;
            };
        };
        stdgo.Go.copySlice(_s.value, _src.value);
        _pm._samples[_k] = _s;
        _pm._p.sample = (_pm._p.sample.__append__(_s));
        return _s;
    }
}
