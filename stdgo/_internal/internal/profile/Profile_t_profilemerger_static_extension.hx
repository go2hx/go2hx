package stdgo._internal.internal.profile;
@:keep @:allow(stdgo._internal.internal.profile.Profile.T_profileMerger_asInterface) class T_profileMerger_static_extension {
    @:keep
    @:tdfield
    static public function _mapFunction( _pm:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_profilemerger.T_profileMerger>, _src:stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>):stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function> {
        @:recv var _pm:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_profilemerger.T_profileMerger> = _pm;
        if ((_src == null || (_src : Dynamic).__nil__)) {
            return null;
        };
        {
            var __tmp__ = ((@:checkr _pm ?? throw "null pointer dereference")._functionsByID != null && (@:checkr _pm ?? throw "null pointer dereference")._functionsByID.__exists__((@:checkr _src ?? throw "null pointer dereference").iD) ? { _0 : (@:checkr _pm ?? throw "null pointer dereference")._functionsByID[(@:checkr _src ?? throw "null pointer dereference").iD], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>), _1 : false }), _f:stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _f;
            };
        };
        var _k = (@:check2r _src._key()?.__copy__() : stdgo._internal.internal.profile.Profile_t_functionkey.T_functionKey);
        {
            var __tmp__ = ((@:checkr _pm ?? throw "null pointer dereference")._functions != null && (@:checkr _pm ?? throw "null pointer dereference")._functions.__exists__(_k?.__copy__()) ? { _0 : (@:checkr _pm ?? throw "null pointer dereference")._functions[_k?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>), _1 : false }), _f:stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                (@:checkr _pm ?? throw "null pointer dereference")._functionsByID[(@:checkr _src ?? throw "null pointer dereference").iD] = _f;
                return _f;
            };
        };
        var _f = (stdgo.Go.setRef(({ iD : ((((@:checkr (@:checkr _pm ?? throw "null pointer dereference")._p ?? throw "null pointer dereference").function_.length) + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64), name : (@:checkr _src ?? throw "null pointer dereference").name?.__copy__(), systemName : (@:checkr _src ?? throw "null pointer dereference").systemName?.__copy__(), filename : (@:checkr _src ?? throw "null pointer dereference").filename?.__copy__(), startLine : (@:checkr _src ?? throw "null pointer dereference").startLine } : stdgo._internal.internal.profile.Profile_function.Function)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>);
        (@:checkr _pm ?? throw "null pointer dereference")._functions[_k] = _f;
        (@:checkr _pm ?? throw "null pointer dereference")._functionsByID[(@:checkr _src ?? throw "null pointer dereference").iD] = _f;
        (@:checkr (@:checkr _pm ?? throw "null pointer dereference")._p ?? throw "null pointer dereference").function_ = ((@:checkr (@:checkr _pm ?? throw "null pointer dereference")._p ?? throw "null pointer dereference").function_.__append__(_f));
        return _f;
    }
    @:keep
    @:tdfield
    static public function _mapLine( _pm:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_profilemerger.T_profileMerger>, _src:stdgo._internal.internal.profile.Profile_line.Line):stdgo._internal.internal.profile.Profile_line.Line {
        @:recv var _pm:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_profilemerger.T_profileMerger> = _pm;
        var _ln = ({ function_ : @:check2r _pm._mapFunction(_src.function_), line : _src.line } : stdgo._internal.internal.profile.Profile_line.Line);
        return _ln?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _mapMapping( _pm:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_profilemerger.T_profileMerger>, _src:stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>):stdgo._internal.internal.profile.Profile_t_mapinfo.T_mapInfo {
        @:recv var _pm:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_profilemerger.T_profileMerger> = _pm;
        if ((_src == null || (_src : Dynamic).__nil__)) {
            return (new stdgo._internal.internal.profile.Profile_t_mapinfo.T_mapInfo() : stdgo._internal.internal.profile.Profile_t_mapinfo.T_mapInfo);
        };
        {
            var __tmp__ = ((@:checkr _pm ?? throw "null pointer dereference")._mappingsByID != null && (@:checkr _pm ?? throw "null pointer dereference")._mappingsByID.__exists__((@:checkr _src ?? throw "null pointer dereference").iD) ? { _0 : (@:checkr _pm ?? throw "null pointer dereference")._mappingsByID[(@:checkr _src ?? throw "null pointer dereference").iD], _1 : true } : { _0 : ({} : stdgo._internal.internal.profile.Profile_t_mapinfo.T_mapInfo), _1 : false }), _mi:stdgo._internal.internal.profile.Profile_t_mapinfo.T_mapInfo = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _mi?.__copy__();
            };
        };
        var _mk = (@:check2r _src._key()?.__copy__() : stdgo._internal.internal.profile.Profile_t_mappingkey.T_mappingKey);
        {
            var __tmp__ = ((@:checkr _pm ?? throw "null pointer dereference")._mappings != null && (@:checkr _pm ?? throw "null pointer dereference")._mappings.__exists__(_mk?.__copy__()) ? { _0 : (@:checkr _pm ?? throw "null pointer dereference")._mappings[_mk?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>), _1 : false }), _m:stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                var _mi = (new stdgo._internal.internal.profile.Profile_t_mapinfo.T_mapInfo(_m, (((@:checkr _m ?? throw "null pointer dereference").start : stdgo.GoInt64) - ((@:checkr _src ?? throw "null pointer dereference").start : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo._internal.internal.profile.Profile_t_mapinfo.T_mapInfo);
                (@:checkr _pm ?? throw "null pointer dereference")._mappingsByID[(@:checkr _src ?? throw "null pointer dereference").iD] = _mi?.__copy__();
                return _mi?.__copy__();
            };
        };
        var _m = (stdgo.Go.setRef(({ iD : ((((@:checkr (@:checkr _pm ?? throw "null pointer dereference")._p ?? throw "null pointer dereference").mapping.length) + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64), start : (@:checkr _src ?? throw "null pointer dereference").start, limit : (@:checkr _src ?? throw "null pointer dereference").limit, offset : (@:checkr _src ?? throw "null pointer dereference").offset, file : (@:checkr _src ?? throw "null pointer dereference").file?.__copy__(), buildID : (@:checkr _src ?? throw "null pointer dereference").buildID?.__copy__(), hasFunctions : (@:checkr _src ?? throw "null pointer dereference").hasFunctions, hasFilenames : (@:checkr _src ?? throw "null pointer dereference").hasFilenames, hasLineNumbers : (@:checkr _src ?? throw "null pointer dereference").hasLineNumbers, hasInlineFrames : (@:checkr _src ?? throw "null pointer dereference").hasInlineFrames } : stdgo._internal.internal.profile.Profile_mapping.Mapping)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>);
        (@:checkr (@:checkr _pm ?? throw "null pointer dereference")._p ?? throw "null pointer dereference").mapping = ((@:checkr (@:checkr _pm ?? throw "null pointer dereference")._p ?? throw "null pointer dereference").mapping.__append__(_m));
        (@:checkr _pm ?? throw "null pointer dereference")._mappings[_mk] = _m;
        var _mi = (new stdgo._internal.internal.profile.Profile_t_mapinfo.T_mapInfo(_m, (0i64 : stdgo.GoInt64)) : stdgo._internal.internal.profile.Profile_t_mapinfo.T_mapInfo);
        (@:checkr _pm ?? throw "null pointer dereference")._mappingsByID[(@:checkr _src ?? throw "null pointer dereference").iD] = _mi?.__copy__();
        return _mi?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _mapLocation( _pm:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_profilemerger.T_profileMerger>, _src:stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>):stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location> {
        @:recv var _pm:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_profilemerger.T_profileMerger> = _pm;
        if ((_src == null || (_src : Dynamic).__nil__)) {
            return null;
        };
        {
            var __tmp__ = ((@:checkr _pm ?? throw "null pointer dereference")._locationsByID != null && (@:checkr _pm ?? throw "null pointer dereference")._locationsByID.__exists__((@:checkr _src ?? throw "null pointer dereference").iD) ? { _0 : (@:checkr _pm ?? throw "null pointer dereference")._locationsByID[(@:checkr _src ?? throw "null pointer dereference").iD], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>), _1 : false }), _l:stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                (@:checkr _pm ?? throw "null pointer dereference")._locationsByID[(@:checkr _src ?? throw "null pointer dereference").iD] = _l;
                return _l;
            };
        };
        var _mi = (@:check2r _pm._mapMapping((@:checkr _src ?? throw "null pointer dereference").mapping)?.__copy__() : stdgo._internal.internal.profile.Profile_t_mapinfo.T_mapInfo);
        var _l = (stdgo.Go.setRef(({ iD : ((((@:checkr (@:checkr _pm ?? throw "null pointer dereference")._p ?? throw "null pointer dereference").location.length) + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64), mapping : _mi._m, address : ((((@:checkr _src ?? throw "null pointer dereference").address : stdgo.GoInt64) + _mi._offset : stdgo.GoInt64) : stdgo.GoUInt64), line : (new stdgo.Slice<stdgo._internal.internal.profile.Profile_line.Line>(((@:checkr _src ?? throw "null pointer dereference").line.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((@:checkr _src ?? throw "null pointer dereference").line.length : stdgo.GoInt).toBasic() > 0 ? ((@:checkr _src ?? throw "null pointer dereference").line.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.internal.profile.Profile_line.Line)]) : stdgo.Slice<stdgo._internal.internal.profile.Profile_line.Line>), isFolded : (@:checkr _src ?? throw "null pointer dereference").isFolded } : stdgo._internal.internal.profile.Profile_location.Location)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>);
        for (_i => _ln in (@:checkr _src ?? throw "null pointer dereference").line) {
            (@:checkr _l ?? throw "null pointer dereference").line[(_i : stdgo.GoInt)] = @:check2r _pm._mapLine(_ln?.__copy__())?.__copy__();
        };
        var _k = (@:check2r _l._key()?.__copy__() : stdgo._internal.internal.profile.Profile_t_locationkey.T_locationKey);
        {
            var __tmp__ = ((@:checkr _pm ?? throw "null pointer dereference")._locations != null && (@:checkr _pm ?? throw "null pointer dereference")._locations.__exists__(_k?.__copy__()) ? { _0 : (@:checkr _pm ?? throw "null pointer dereference")._locations[_k?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>), _1 : false }), _ll:stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                (@:checkr _pm ?? throw "null pointer dereference")._locationsByID[(@:checkr _src ?? throw "null pointer dereference").iD] = _ll;
                return _ll;
            };
        };
        (@:checkr _pm ?? throw "null pointer dereference")._locationsByID[(@:checkr _src ?? throw "null pointer dereference").iD] = _l;
        (@:checkr _pm ?? throw "null pointer dereference")._locations[_k] = _l;
        (@:checkr (@:checkr _pm ?? throw "null pointer dereference")._p ?? throw "null pointer dereference").location = ((@:checkr (@:checkr _pm ?? throw "null pointer dereference")._p ?? throw "null pointer dereference").location.__append__(_l));
        return _l;
    }
    @:keep
    @:tdfield
    static public function _mapSample( _pm:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_profilemerger.T_profileMerger>, _src:stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>):stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample> {
        @:recv var _pm:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_profilemerger.T_profileMerger> = _pm;
        var _s = (stdgo.Go.setRef(({ location : (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>(((@:checkr _src ?? throw "null pointer dereference").location.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>), value : (new stdgo.Slice<stdgo.GoInt64>(((@:checkr _src ?? throw "null pointer dereference").value.length : stdgo.GoInt).toBasic(), 0).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>), label : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>), numLabel : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoInt64>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoInt64>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt64>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt64>>), numUnit : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) } : stdgo._internal.internal.profile.Profile_sample.Sample)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>);
        for (_i => _l in (@:checkr _src ?? throw "null pointer dereference").location) {
            (@:checkr _s ?? throw "null pointer dereference").location[(_i : stdgo.GoInt)] = @:check2r _pm._mapLocation(_l);
        };
        for (_k => _v in (@:checkr _src ?? throw "null pointer dereference").label) {
            var _vv = (new stdgo.Slice<stdgo.GoString>((_v.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
            _vv.__copyTo__(_v);
            (@:checkr _s ?? throw "null pointer dereference").label[_k] = _vv;
        };
        for (_k => _v in (@:checkr _src ?? throw "null pointer dereference").numLabel) {
            var _u = ((@:checkr _src ?? throw "null pointer dereference").numUnit[_k] ?? (null : stdgo.Slice<stdgo.GoString>));
            var _vv = (new stdgo.Slice<stdgo.GoInt64>((_v.length : stdgo.GoInt).toBasic(), 0).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
            var _uu = (new stdgo.Slice<stdgo.GoString>((_u.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
            _vv.__copyTo__(_v);
            _uu.__copyTo__(_u);
            (@:checkr _s ?? throw "null pointer dereference").numLabel[_k] = _vv;
            (@:checkr _s ?? throw "null pointer dereference").numUnit[_k] = _uu;
        };
        var _k = (@:check2r _s._key()?.__copy__() : stdgo._internal.internal.profile.Profile_t_samplekey.T_sampleKey);
        {
            var __tmp__ = ((@:checkr _pm ?? throw "null pointer dereference")._samples != null && (@:checkr _pm ?? throw "null pointer dereference")._samples.__exists__(_k?.__copy__()) ? { _0 : (@:checkr _pm ?? throw "null pointer dereference")._samples[_k?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>), _1 : false }), _ss:stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                for (_i => _v in (@:checkr _src ?? throw "null pointer dereference").value) {
                    (@:checkr _ss ?? throw "null pointer dereference").value[(_i : stdgo.GoInt)] = ((@:checkr _ss ?? throw "null pointer dereference").value[(_i : stdgo.GoInt)] + (_v) : stdgo.GoInt64);
                };
                return _ss;
            };
        };
        (@:checkr _s ?? throw "null pointer dereference").value.__copyTo__((@:checkr _src ?? throw "null pointer dereference").value);
        (@:checkr _pm ?? throw "null pointer dereference")._samples[_k] = _s;
        (@:checkr (@:checkr _pm ?? throw "null pointer dereference")._p ?? throw "null pointer dereference").sample = ((@:checkr (@:checkr _pm ?? throw "null pointer dereference")._p ?? throw "null pointer dereference").sample.__append__(_s));
        return _s;
    }
}
