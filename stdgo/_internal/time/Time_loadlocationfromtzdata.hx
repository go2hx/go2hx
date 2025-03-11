package stdgo._internal.time;
function loadLocationFromTZData(_name:stdgo.GoString, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.time.Time_location.Location>; var _1 : stdgo.Error; } {
        var _d = (new stdgo._internal.time.Time_t_dataio.T_dataIO(_data, false) : stdgo._internal.time.Time_t_dataio.T_dataIO);
        {
            var _magic = @:check2 _d._read((4 : stdgo.GoInt));
            if ((_magic : stdgo.GoString) != (("TZif" : stdgo.GoString))) {
                return { _0 : null, _1 : stdgo._internal.time.Time__errbaddata._errBadData };
            };
        };
        var _version:stdgo.GoInt = (0 : stdgo.GoInt);
        var _p:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            _p = @:check2 _d._read((16 : stdgo.GoInt));
            if ((_p.length) != ((16 : stdgo.GoInt))) {
                return { _0 : null, _1 : stdgo._internal.time.Time__errbaddata._errBadData };
            } else {
                {
                    final __value__ = _p[(0 : stdgo.GoInt)];
                    if (__value__ == ((0 : stdgo.GoUInt8))) {
                        _version = (1 : stdgo.GoInt);
                    } else if (__value__ == ((50 : stdgo.GoUInt8))) {
                        _version = (2 : stdgo.GoInt);
                    } else if (__value__ == ((51 : stdgo.GoUInt8))) {
                        _version = (3 : stdgo.GoInt);
                    } else {
                        return { _0 : null, _1 : stdgo._internal.time.Time__errbaddata._errBadData };
                    };
                };
            };
        };
        {};
        var _n:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(6, 6).__setNumber32__();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (6 : stdgo.GoInt) : Bool)) {
                var __tmp__ = @:check2 _d._big4(), _nn:stdgo.GoUInt32 = __tmp__._0, _ok:Bool = __tmp__._1;
if (!_ok) {
                    return { _0 : null, _1 : stdgo._internal.time.Time__errbaddata._errBadData };
                };
if (((_nn : stdgo.GoInt) : stdgo.GoUInt32) != (_nn)) {
                    return { _0 : null, _1 : stdgo._internal.time.Time__errbaddata._errBadData };
                };
_n[(_i : stdgo.GoInt)] = (_nn : stdgo.GoInt);
                _i++;
            };
        };
        var _is64 = (false : Bool);
        if ((_version > (1 : stdgo.GoInt) : Bool)) {
            var _skip = (((((((_n[(3 : stdgo.GoInt)] * (4 : stdgo.GoInt) : stdgo.GoInt) + _n[(3 : stdgo.GoInt)] : stdgo.GoInt) + (_n[(4 : stdgo.GoInt)] * (6 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + _n[(5 : stdgo.GoInt)] : stdgo.GoInt) + (_n[(2 : stdgo.GoInt)] * (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + _n[(1 : stdgo.GoInt)] : stdgo.GoInt) + _n[(0 : stdgo.GoInt)] : stdgo.GoInt);
            _skip = (_skip + ((20 : stdgo.GoInt)) : stdgo.GoInt);
            @:check2 _d._read(_skip);
            _is64 = true;
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (6 : stdgo.GoInt) : Bool)) {
                    var __tmp__ = @:check2 _d._big4(), _nn:stdgo.GoUInt32 = __tmp__._0, _ok:Bool = __tmp__._1;
if (!_ok) {
                        return { _0 : null, _1 : stdgo._internal.time.Time__errbaddata._errBadData };
                    };
if (((_nn : stdgo.GoInt) : stdgo.GoUInt32) != (_nn)) {
                        return { _0 : null, _1 : stdgo._internal.time.Time__errbaddata._errBadData };
                    };
_n[(_i : stdgo.GoInt)] = (_nn : stdgo.GoInt);
                    _i++;
                };
            };
        };
        var _size = (4 : stdgo.GoInt);
        if (_is64) {
            _size = (8 : stdgo.GoInt);
        };
        var _txtimes = (new stdgo._internal.time.Time_t_dataio.T_dataIO(@:check2 _d._read((_n[(3 : stdgo.GoInt)] * _size : stdgo.GoInt)), false) : stdgo._internal.time.Time_t_dataio.T_dataIO);
        var _txzones = @:check2 _d._read(_n[(3 : stdgo.GoInt)]);
        var _zonedata = (new stdgo._internal.time.Time_t_dataio.T_dataIO(@:check2 _d._read((_n[(4 : stdgo.GoInt)] * (6 : stdgo.GoInt) : stdgo.GoInt)), false) : stdgo._internal.time.Time_t_dataio.T_dataIO);
        var _abbrev = @:check2 _d._read(_n[(5 : stdgo.GoInt)]);
        @:check2 _d._read((_n[(2 : stdgo.GoInt)] * ((_size + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt));
        var _isstd = @:check2 _d._read(_n[(1 : stdgo.GoInt)]);
        var _isutc = @:check2 _d._read(_n[(0 : stdgo.GoInt)]);
        if (_d._error) {
            return { _0 : null, _1 : stdgo._internal.time.Time__errbaddata._errBadData };
        };
        var _extend:stdgo.GoString = ("" : stdgo.GoString);
        var _rest = @:check2 _d._rest();
        if (((((_rest.length) > (2 : stdgo.GoInt) : Bool) && _rest[(0 : stdgo.GoInt)] == ((10 : stdgo.GoUInt8)) : Bool) && (_rest[((_rest.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
            _extend = ((_rest.__slice__((1 : stdgo.GoInt), ((_rest.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
        };
        var _nzone = (_n[(4 : stdgo.GoInt)] : stdgo.GoInt);
        if (_nzone == ((0 : stdgo.GoInt))) {
            return { _0 : null, _1 : stdgo._internal.time.Time__errbaddata._errBadData };
        };
        var _zones = (new stdgo.Slice<stdgo._internal.time.Time_t_zone.T_zone>((_nzone : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_nzone : stdgo.GoInt).toBasic() > 0 ? (_nzone : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.time.Time_t_zone.T_zone)]) : stdgo.Slice<stdgo._internal.time.Time_t_zone.T_zone>);
        for (_i => _ in _zones) {
            var _ok:Bool = false;
            var _n:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
            {
                {
                    var __tmp__ = @:check2 _zonedata._big4();
                    _n = @:tmpset0 __tmp__._0;
                    _ok = @:tmpset0 __tmp__._1;
                };
                if (!_ok) {
                    return { _0 : null, _1 : stdgo._internal.time.Time__errbaddata._errBadData };
                };
            };
            if (((_n : stdgo.GoInt) : stdgo.GoUInt32) != (_n)) {
                return { _0 : null, _1 : stdgo._internal.time.Time__errbaddata._errBadData };
            };
            _zones[(_i : stdgo.GoInt)]._offset = ((_n : stdgo.GoInt32) : stdgo.GoInt);
            var _b:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
            {
                {
                    var __tmp__ = @:check2 _zonedata._byte();
                    _b = @:tmpset0 __tmp__._0;
                    _ok = @:tmpset0 __tmp__._1;
                };
                if (!_ok) {
                    return { _0 : null, _1 : stdgo._internal.time.Time__errbaddata._errBadData };
                };
            };
            _zones[(_i : stdgo.GoInt)]._isDST = _b != ((0 : stdgo.GoUInt8));
            {
                {
                    var __tmp__ = @:check2 _zonedata._byte();
                    _b = @:tmpset0 __tmp__._0;
                    _ok = @:tmpset0 __tmp__._1;
                };
                if ((!_ok || ((_b : stdgo.GoInt) >= (_abbrev.length) : Bool) : Bool)) {
                    return { _0 : null, _1 : stdgo._internal.time.Time__errbaddata._errBadData };
                };
            };
            _zones[(_i : stdgo.GoInt)]._name = stdgo._internal.time.Time__bytestring._byteString((_abbrev.__slice__(_b) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
            if (((false && ((_name.length) > (8 : stdgo.GoInt) : Bool) : Bool) && ((((_name.__slice__(0, (8 : stdgo.GoInt)) : stdgo.GoString) == ("Etc/GMT+" : stdgo.GoString)) || ((_name.__slice__(0, (8 : stdgo.GoInt)) : stdgo.GoString) == ("Etc/GMT-" : stdgo.GoString)) : Bool)) : Bool)) {
                if (_name != (("Etc/GMT+0" : stdgo.GoString))) {
                    _zones[(_i : stdgo.GoInt)]._name = (_name.__slice__((4 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                };
            };
        };
        var _tx = (new stdgo.Slice<stdgo._internal.time.Time_t_zonetrans.T_zoneTrans>((_n[(3 : stdgo.GoInt)] : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_n[(3 : stdgo.GoInt)] : stdgo.GoInt).toBasic() > 0 ? (_n[(3 : stdgo.GoInt)] : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.time.Time_t_zonetrans.T_zoneTrans)]) : stdgo.Slice<stdgo._internal.time.Time_t_zonetrans.T_zoneTrans>);
        for (_i => _ in _tx) {
            var _n:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            if (!_is64) {
                {
                    var __tmp__ = @:check2 _txtimes._big4(), _n4:stdgo.GoUInt32 = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        return { _0 : null, _1 : stdgo._internal.time.Time__errbaddata._errBadData };
                    } else {
                        _n = ((_n4 : stdgo.GoInt32) : stdgo.GoInt64);
                    };
                };
            } else {
                {
                    var __tmp__ = @:check2 _txtimes._big8(), _n8:stdgo.GoUInt64 = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        return { _0 : null, _1 : stdgo._internal.time.Time__errbaddata._errBadData };
                    } else {
                        _n = (_n8 : stdgo.GoInt64);
                    };
                };
            };
            _tx[(_i : stdgo.GoInt)]._when = _n;
            if (((_txzones[(_i : stdgo.GoInt)] : stdgo.GoInt) >= (_zones.length) : Bool)) {
                return { _0 : null, _1 : stdgo._internal.time.Time__errbaddata._errBadData };
            };
            _tx[(_i : stdgo.GoInt)]._index = _txzones[(_i : stdgo.GoInt)];
            if ((_i < (_isstd.length) : Bool)) {
                _tx[(_i : stdgo.GoInt)]._isstd = _isstd[(_i : stdgo.GoInt)] != ((0 : stdgo.GoUInt8));
            };
            if ((_i < (_isutc.length) : Bool)) {
                _tx[(_i : stdgo.GoInt)]._isutc = _isutc[(_i : stdgo.GoInt)] != ((0 : stdgo.GoUInt8));
            };
        };
        if ((_tx.length) == ((0 : stdgo.GoInt))) {
            _tx = (_tx.__append__(({ _when : (-9223372036854775808i64 : stdgo.GoInt64), _index : (0 : stdgo.GoUInt8) } : stdgo._internal.time.Time_t_zonetrans.T_zoneTrans)));
        };
        var _l = (stdgo.Go.setRef(({ _zone : _zones, _tx : _tx, _name : _name?.__copy__(), _extend : _extend?.__copy__() } : stdgo._internal.time.Time_location.Location)) : stdgo.Ref<stdgo._internal.time.Time_location.Location>);
        var __tmp__ = stdgo._internal.time.Time__now._now(), _sec:stdgo.GoInt64 = __tmp__._0, __1:stdgo.GoInt32 = __tmp__._1, __2:stdgo.GoInt64 = __tmp__._2;
        for (_i => _ in _tx) {
            if (((_tx[(_i : stdgo.GoInt)]._when <= _sec : Bool) && ((((_i + (1 : stdgo.GoInt) : stdgo.GoInt) == (_tx.length)) || (_sec < _tx[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]._when : Bool) : Bool)) : Bool)) {
                (@:checkr _l ?? throw "null pointer dereference")._cacheStart = _tx[(_i : stdgo.GoInt)]._when;
                (@:checkr _l ?? throw "null pointer dereference")._cacheEnd = (9223372036854775807i64 : stdgo.GoInt64);
                (@:checkr _l ?? throw "null pointer dereference")._cacheZone = (stdgo.Go.setRef((@:checkr _l ?? throw "null pointer dereference")._zone[(_tx[(_i : stdgo.GoInt)]._index : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.time.Time_t_zone.T_zone>);
                if (((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_tx.length) : Bool)) {
                    (@:checkr _l ?? throw "null pointer dereference")._cacheEnd = _tx[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]._when;
                } else if ((@:checkr _l ?? throw "null pointer dereference")._extend != ((stdgo.Go.str() : stdgo.GoString))) {
                    {
                        var __tmp__ = stdgo._internal.time.Time__tzset._tzset((@:checkr _l ?? throw "null pointer dereference")._extend?.__copy__(), (@:checkr _l ?? throw "null pointer dereference")._cacheStart, _sec), _name:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1, _estart:stdgo.GoInt64 = __tmp__._2, _eend:stdgo.GoInt64 = __tmp__._3, _isDST:Bool = __tmp__._4, _ok:Bool = __tmp__._5;
                        if (_ok) {
                            (@:checkr _l ?? throw "null pointer dereference")._cacheStart = _estart;
                            (@:checkr _l ?? throw "null pointer dereference")._cacheEnd = _eend;
                            {
                                var _zoneIdx = (stdgo._internal.time.Time__findzone._findZone((@:checkr _l ?? throw "null pointer dereference")._zone, _name?.__copy__(), _offset, _isDST) : stdgo.GoInt);
                                if (_zoneIdx != ((-1 : stdgo.GoInt))) {
                                    (@:checkr _l ?? throw "null pointer dereference")._cacheZone = (stdgo.Go.setRef((@:checkr _l ?? throw "null pointer dereference")._zone[(_zoneIdx : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.time.Time_t_zone.T_zone>);
                                } else {
                                    (@:checkr _l ?? throw "null pointer dereference")._cacheZone = (stdgo.Go.setRef(({ _name : _name?.__copy__(), _offset : _offset, _isDST : _isDST } : stdgo._internal.time.Time_t_zone.T_zone)) : stdgo.Ref<stdgo._internal.time.Time_t_zone.T_zone>);
                                };
                            };
                        };
                    };
                };
                break;
            };
        };
        return { _0 : _l, _1 : (null : stdgo.Error) };
    }
