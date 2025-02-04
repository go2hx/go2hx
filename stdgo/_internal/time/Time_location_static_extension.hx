package stdgo._internal.time;
@:keep @:allow(stdgo._internal.time.Time.Location_asInterface) class Location_static_extension {
    @:keep
    @:tdfield
    static public function _lookupName( _l:stdgo.Ref<stdgo._internal.time.Time_location.Location>, _name:stdgo.GoString, _unix:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _l:stdgo.Ref<stdgo._internal.time.Time_location.Location> = _l;
        var _offset = (0 : stdgo.GoInt), _ok = false;
        _l = @:check2r _l._get();
        for (_i => _ in (@:checkr _l ?? throw "null pointer dereference")._zone) {
            var _zone = (stdgo.Go.setRef((@:checkr _l ?? throw "null pointer dereference")._zone[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.time.Time_t_zone.T_zone>);
            if ((@:checkr _zone ?? throw "null pointer dereference")._name == (_name)) {
                var __tmp__ = @:check2r _l._lookup((_unix - ((@:checkr _zone ?? throw "null pointer dereference")._offset : stdgo.GoInt64) : stdgo.GoInt64)), _nam:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1, __1:stdgo.GoInt64 = __tmp__._2, __2:stdgo.GoInt64 = __tmp__._3, __3:Bool = __tmp__._4;
                if (_nam == ((@:checkr _zone ?? throw "null pointer dereference")._name)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _offset, _1 : true };
                        _offset = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                };
            };
        };
        for (_i => _ in (@:checkr _l ?? throw "null pointer dereference")._zone) {
            var _zone = (stdgo.Go.setRef((@:checkr _l ?? throw "null pointer dereference")._zone[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.time.Time_t_zone.T_zone>);
            if ((@:checkr _zone ?? throw "null pointer dereference")._name == (_name)) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : (@:checkr _zone ?? throw "null pointer dereference")._offset, _1 : true };
                    _offset = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
        };
        return { _0 : _offset, _1 : _ok };
    }
    @:keep
    @:tdfield
    static public function _firstZoneUsed( _l:stdgo.Ref<stdgo._internal.time.Time_location.Location>):Bool {
        @:recv var _l:stdgo.Ref<stdgo._internal.time.Time_location.Location> = _l;
        for (__1 => _tx in (@:checkr _l ?? throw "null pointer dereference")._tx) {
            if (_tx._index == ((0 : stdgo.GoUInt8))) {
                return true;
            };
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function _lookupFirstZone( _l:stdgo.Ref<stdgo._internal.time.Time_location.Location>):stdgo.GoInt {
        @:recv var _l:stdgo.Ref<stdgo._internal.time.Time_location.Location> = _l;
        if (!@:check2r _l._firstZoneUsed()) {
            return (0 : stdgo.GoInt);
        };
        if (((((@:checkr _l ?? throw "null pointer dereference")._tx.length) > (0 : stdgo.GoInt) : Bool) && (@:checkr _l ?? throw "null pointer dereference")._zone[((@:checkr _l ?? throw "null pointer dereference")._tx[(0 : stdgo.GoInt)]._index : stdgo.GoInt)]._isDST : Bool)) {
            {
                var _zi = (((@:checkr _l ?? throw "null pointer dereference")._tx[(0 : stdgo.GoInt)]._index : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
                while ((_zi >= (0 : stdgo.GoInt) : Bool)) {
                    if (!(@:checkr _l ?? throw "null pointer dereference")._zone[(_zi : stdgo.GoInt)]._isDST) {
                        return _zi;
                    };
                    _zi--;
                };
            };
        };
        for (_zi => _ in (@:checkr _l ?? throw "null pointer dereference")._zone) {
            if (!(@:checkr _l ?? throw "null pointer dereference")._zone[(_zi : stdgo.GoInt)]._isDST) {
                return _zi;
            };
        };
        return (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _lookup( _l:stdgo.Ref<stdgo._internal.time.Time_location.Location>, _sec:stdgo.GoInt64):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; } {
        @:recv var _l:stdgo.Ref<stdgo._internal.time.Time_location.Location> = _l;
        var _name = ("" : stdgo.GoString), _offset = (0 : stdgo.GoInt), _start = (0 : stdgo.GoInt64), _end = (0 : stdgo.GoInt64), _isDST = false;
        _l = @:check2r _l._get();
        if (((@:checkr _l ?? throw "null pointer dereference")._zone.length) == ((0 : stdgo.GoInt))) {
            _name = ("UTC" : stdgo.GoString);
            _offset = (0 : stdgo.GoInt);
            _start = (-9223372036854775808i64 : stdgo.GoInt64);
            _end = (9223372036854775807i64 : stdgo.GoInt64);
            _isDST = false;
            return { _0 : _name, _1 : _offset, _2 : _start, _3 : _end, _4 : _isDST };
        };
        {
            var _zone = (@:checkr _l ?? throw "null pointer dereference")._cacheZone;
            if ((((_zone != null && ((_zone : Dynamic).__nil__ == null || !(_zone : Dynamic).__nil__)) && ((@:checkr _l ?? throw "null pointer dereference")._cacheStart <= _sec : Bool) : Bool) && (_sec < (@:checkr _l ?? throw "null pointer dereference")._cacheEnd : Bool) : Bool)) {
                _name = (@:checkr _zone ?? throw "null pointer dereference")._name?.__copy__();
                _offset = (@:checkr _zone ?? throw "null pointer dereference")._offset;
                _start = (@:checkr _l ?? throw "null pointer dereference")._cacheStart;
                _end = (@:checkr _l ?? throw "null pointer dereference")._cacheEnd;
                _isDST = (@:checkr _zone ?? throw "null pointer dereference")._isDST;
                return { _0 : _name, _1 : _offset, _2 : _start, _3 : _end, _4 : _isDST };
            };
        };
        if ((((@:checkr _l ?? throw "null pointer dereference")._tx.length == (0 : stdgo.GoInt)) || (_sec < (@:checkr _l ?? throw "null pointer dereference")._tx[(0 : stdgo.GoInt)]._when : Bool) : Bool)) {
            var _zone = (stdgo.Go.setRef((@:checkr _l ?? throw "null pointer dereference")._zone[(@:check2r _l._lookupFirstZone() : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.time.Time_t_zone.T_zone>);
            _name = (@:checkr _zone ?? throw "null pointer dereference")._name?.__copy__();
            _offset = (@:checkr _zone ?? throw "null pointer dereference")._offset;
            _start = (-9223372036854775808i64 : stdgo.GoInt64);
            if ((((@:checkr _l ?? throw "null pointer dereference")._tx.length) > (0 : stdgo.GoInt) : Bool)) {
                _end = (@:checkr _l ?? throw "null pointer dereference")._tx[(0 : stdgo.GoInt)]._when;
            } else {
                _end = (9223372036854775807i64 : stdgo.GoInt64);
            };
            _isDST = (@:checkr _zone ?? throw "null pointer dereference")._isDST;
            return { _0 : _name, _1 : _offset, _2 : _start, _3 : _end, _4 : _isDST };
        };
        var _tx = (@:checkr _l ?? throw "null pointer dereference")._tx;
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
        var _zone = (stdgo.Go.setRef((@:checkr _l ?? throw "null pointer dereference")._zone[(_tx[(_lo : stdgo.GoInt)]._index : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.time.Time_t_zone.T_zone>);
        _name = (@:checkr _zone ?? throw "null pointer dereference")._name?.__copy__();
        _offset = (@:checkr _zone ?? throw "null pointer dereference")._offset;
        _start = _tx[(_lo : stdgo.GoInt)]._when;
        _isDST = (@:checkr _zone ?? throw "null pointer dereference")._isDST;
        if (((_lo == ((_tx.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) && ((@:checkr _l ?? throw "null pointer dereference")._extend != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            {
                var __tmp__ = stdgo._internal.time.Time__tzset._tzset((@:checkr _l ?? throw "null pointer dereference")._extend?.__copy__(), _start, _sec), _ename:stdgo.GoString = __tmp__._0, _eoffset:stdgo.GoInt = __tmp__._1, _estart:stdgo.GoInt64 = __tmp__._2, _eend:stdgo.GoInt64 = __tmp__._3, _eisDST:Bool = __tmp__._4, _ok:Bool = __tmp__._5;
                if (_ok) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt64; var _3 : stdgo.GoInt64; var _4 : Bool; } = { _0 : _ename?.__copy__(), _1 : _eoffset, _2 : _estart, _3 : _eend, _4 : _eisDST };
                        _name = __tmp__._0;
                        _offset = __tmp__._1;
                        _start = __tmp__._2;
                        _end = __tmp__._3;
                        _isDST = __tmp__._4;
                        __tmp__;
                    };
                };
            };
        };
        return { _0 : _name, _1 : _offset, _2 : _start, _3 : _end, _4 : _isDST };
    }
    @:keep
    @:tdfield
    static public function string( _l:stdgo.Ref<stdgo._internal.time.Time_location.Location>):stdgo.GoString {
        @:recv var _l:stdgo.Ref<stdgo._internal.time.Time_location.Location> = _l;
        return @:check2r _l._get()._name?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _get( _l:stdgo.Ref<stdgo._internal.time.Time_location.Location>):stdgo.Ref<stdgo._internal.time.Time_location.Location> {
        @:recv var _l:stdgo.Ref<stdgo._internal.time.Time_location.Location> = _l;
        if ((_l == null || (_l : Dynamic).__nil__)) {
            return (stdgo.Go.setRef(stdgo._internal.time.Time__utcloc._utcLoc) : stdgo.Ref<stdgo._internal.time.Time_location.Location>);
        };
        if (_l == ((stdgo.Go.setRef(stdgo._internal.time.Time__localloc._localLoc) : stdgo.Ref<stdgo._internal.time.Time_location.Location>))) {
            @:check2 stdgo._internal.time.Time__localonce._localOnce.do_(stdgo._internal.time.Time__initlocal._initLocal);
        };
        return _l;
    }
}
