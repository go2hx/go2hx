package stdgo._internal.time;
@:keep @:allow(stdgo._internal.time.Time.Location_asInterface) class Location_static_extension {
    @:keep
    static public function _lookupName( _l:stdgo.Ref<stdgo._internal.time.Time_Location.Location>, _name:stdgo.GoString, _unix:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _l:stdgo.Ref<stdgo._internal.time.Time_Location.Location> = _l;
        var _offset = (0 : stdgo.GoInt), _ok = false;
        _l = _l._get();
        for (_i => _ in _l._zone) {
            var _zone = (stdgo.Go.setRef(_l._zone[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.time.Time_T_zone.T_zone>);
            if (_zone._name == (_name)) {
                var __tmp__ = _l._lookup((_unix - (_zone._offset : stdgo.GoInt64) : stdgo.GoInt64)), _nam:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1, __1:stdgo.GoInt64 = __tmp__._2, __2:stdgo.GoInt64 = __tmp__._3, __3:Bool = __tmp__._4;
                if (_nam == (_zone._name)) {
                    return { _0 : _offset, _1 : true };
                };
            };
        };
        for (_i => _ in _l._zone) {
            var _zone = (stdgo.Go.setRef(_l._zone[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.time.Time_T_zone.T_zone>);
            if (_zone._name == (_name)) {
                return { _0 : _zone._offset, _1 : true };
            };
        };
        return { _0 : _offset, _1 : _ok };
    }
    @:keep
    static public function _firstZoneUsed( _l:stdgo.Ref<stdgo._internal.time.Time_Location.Location>):Bool {
        @:recv var _l:stdgo.Ref<stdgo._internal.time.Time_Location.Location> = _l;
        for (__1 => _tx in _l._tx) {
            if (_tx._index == ((0 : stdgo.GoUInt8))) {
                return true;
            };
        };
        return false;
    }
    @:keep
    static public function _lookupFirstZone( _l:stdgo.Ref<stdgo._internal.time.Time_Location.Location>):stdgo.GoInt {
        @:recv var _l:stdgo.Ref<stdgo._internal.time.Time_Location.Location> = _l;
        if (!_l._firstZoneUsed()) {
            return (0 : stdgo.GoInt);
        };
        if ((((_l._tx.length) > (0 : stdgo.GoInt) : Bool) && _l._zone[(_l._tx[(0 : stdgo.GoInt)]._index : stdgo.GoInt)]._isDST : Bool)) {
            {
                var _zi = ((_l._tx[(0 : stdgo.GoInt)]._index : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
                stdgo.Go.cfor((_zi >= (0 : stdgo.GoInt) : Bool), _zi--, {
                    if (!_l._zone[(_zi : stdgo.GoInt)]._isDST) {
                        return _zi;
                    };
                });
            };
        };
        for (_zi => _ in _l._zone) {
            if (!_l._zone[(_zi : stdgo.GoInt)]._isDST) {
                return _zi;
            };
        };
        return (0 : stdgo.GoInt);
    }
    @:keep
    static public function _lookup( _l:stdgo.Ref<stdgo._internal.time.Time_Location.Location>, _sec:stdgo.GoInt64):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; } {
        @:recv var _l:stdgo.Ref<stdgo._internal.time.Time_Location.Location> = _l;
        var _name = ("" : stdgo.GoString), _offset = (0 : stdgo.GoInt), _start = (0 : stdgo.GoInt64), _end = (0 : stdgo.GoInt64), _isDST = false;
        _l = _l._get();
        if ((_l._zone.length) == ((0 : stdgo.GoInt))) {
            _name = ("UTC" : stdgo.GoString);
            _offset = (0 : stdgo.GoInt);
            _start = (-9223372036854775808i64 : stdgo.GoInt64);
            _end = (9223372036854775807i64 : stdgo.GoInt64);
            _isDST = false;
            return { _0 : _name, _1 : _offset, _2 : _start, _3 : _end, _4 : _isDST };
        };
        {
            var _zone = _l._cacheZone;
            if (((_zone != null && ((_zone : Dynamic).__nil__ == null || !(_zone : Dynamic).__nil__) && (_l._cacheStart <= _sec : Bool) : Bool) && (_sec < _l._cacheEnd : Bool) : Bool)) {
                _name = _zone._name?.__copy__();
                _offset = _zone._offset;
                _start = _l._cacheStart;
                _end = _l._cacheEnd;
                _isDST = _zone._isDST;
                return { _0 : _name, _1 : _offset, _2 : _start, _3 : _end, _4 : _isDST };
            };
        };
        if (((_l._tx.length == (0 : stdgo.GoInt)) || (_sec < _l._tx[(0 : stdgo.GoInt)]._when : Bool) : Bool)) {
            var _zone = (stdgo.Go.setRef(_l._zone[(_l._lookupFirstZone() : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.time.Time_T_zone.T_zone>);
            _name = _zone._name?.__copy__();
            _offset = _zone._offset;
            _start = (-9223372036854775808i64 : stdgo.GoInt64);
            if (((_l._tx.length) > (0 : stdgo.GoInt) : Bool)) {
                _end = _l._tx[(0 : stdgo.GoInt)]._when;
            } else {
                _end = (9223372036854775807i64 : stdgo.GoInt64);
            };
            _isDST = _zone._isDST;
            return { _0 : _name, _1 : _offset, _2 : _start, _3 : _end, _4 : _isDST };
        };
        var _tx = _l._tx;
        _end = (9223372036854775807i64 : stdgo.GoInt64);
        var _lo = (0 : stdgo.GoInt);
        var _hi = (_tx.length : stdgo.GoInt);
        while (((_hi - _lo : stdgo.GoInt) > (1 : stdgo.GoInt) : Bool)) {
            var _m = (_lo + (((_hi - _lo : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
            var _lim = (_tx[(_m : stdgo.GoInt)]._when : stdgo.GoInt64);
            if ((_sec < _lim : Bool)) {
                _end = _lim;
                _hi = _m;
            } else {
                _lo = _m;
            };
        };
        var _zone = (stdgo.Go.setRef(_l._zone[(_tx[(_lo : stdgo.GoInt)]._index : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.time.Time_T_zone.T_zone>);
        _name = _zone._name?.__copy__();
        _offset = _zone._offset;
        _start = _tx[(_lo : stdgo.GoInt)]._when;
        _isDST = _zone._isDST;
        if (((_lo == ((_tx.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) && (_l._extend != stdgo.Go.str()) : Bool)) {
            {
                var __tmp__ = stdgo._internal.time.Time__tzset._tzset(_l._extend?.__copy__(), _start, _sec), _ename:stdgo.GoString = __tmp__._0, _eoffset:stdgo.GoInt = __tmp__._1, _estart:stdgo.GoInt64 = __tmp__._2, _eend:stdgo.GoInt64 = __tmp__._3, _eisDST:Bool = __tmp__._4, _ok:Bool = __tmp__._5;
                if (_ok) {
                    return { _0 : _ename?.__copy__(), _1 : _eoffset, _2 : _estart, _3 : _eend, _4 : _eisDST };
                };
            };
        };
        return { _0 : _name, _1 : _offset, _2 : _start, _3 : _end, _4 : _isDST };
    }
    @:keep
    static public function string( _l:stdgo.Ref<stdgo._internal.time.Time_Location.Location>):stdgo.GoString {
        @:recv var _l:stdgo.Ref<stdgo._internal.time.Time_Location.Location> = _l;
        return _l._get()._name?.__copy__();
    }
    @:keep
    static public function _get( _l:stdgo.Ref<stdgo._internal.time.Time_Location.Location>):stdgo.Ref<stdgo._internal.time.Time_Location.Location> {
        @:recv var _l:stdgo.Ref<stdgo._internal.time.Time_Location.Location> = _l;
        if (_l == null || (_l : Dynamic).__nil__) {
            return (stdgo.Go.setRef(stdgo._internal.time.Time__utcLoc._utcLoc) : stdgo.Ref<stdgo._internal.time.Time_Location.Location>);
        };
        if (_l == ((stdgo.Go.setRef(stdgo._internal.time.Time__localLoc._localLoc) : stdgo.Ref<stdgo._internal.time.Time_Location.Location>))) {
            stdgo._internal.time.Time__localOnce._localOnce.do_(stdgo._internal.time.Time__initLocal._initLocal);
        };
        return _l;
    }
}
