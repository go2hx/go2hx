package stdgo._internal.time;
function _loadLocation(_name:stdgo.GoString, _sources:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.Ref<stdgo._internal.time.Time_Location.Location>; var _1 : stdgo.Error; } {
        var _z = (null : stdgo.Ref<stdgo._internal.time.Time_Location.Location>), _firstErr = (null : stdgo.Error);
        for (__1 => _source in _sources) {
            var __tmp__ = stdgo._internal.time.Time__loadTzinfo._loadTzinfo(_name?.__copy__(), _source?.__copy__()), _zoneData:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                {
                    {
                        var __tmp__ = stdgo._internal.time.Time_loadLocationFromTZData.loadLocationFromTZData(_name?.__copy__(), _zoneData);
                        _z = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err == null) {
                        return {
                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.time.Time_Location.Location>; var _1 : stdgo.Error; } = { _0 : _z, _1 : (null : stdgo.Error) };
                            _z = __tmp__._0;
                            _firstErr = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
            };
            if (((_firstErr == null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo.Go.asInterface((2 : stdgo._internal.syscall.Syscall_Errno.Errno)))) : Bool)) {
                _firstErr = _err;
            };
        };
        if (stdgo._internal.time.Time__loadFromEmbeddedTZData._loadFromEmbeddedTZData != null) {
            var __tmp__ = stdgo._internal.time.Time__loadFromEmbeddedTZData._loadFromEmbeddedTZData(_name?.__copy__()), _zoneData:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                {
                    {
                        var __tmp__ = stdgo._internal.time.Time_loadLocationFromTZData.loadLocationFromTZData(_name?.__copy__(), (_zoneData : stdgo.Slice<stdgo.GoUInt8>));
                        _z = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err == null) {
                        return {
                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.time.Time_Location.Location>; var _1 : stdgo.Error; } = { _0 : _z, _1 : (null : stdgo.Error) };
                            _z = __tmp__._0;
                            _firstErr = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
            };
            if (((_firstErr == null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo.Go.asInterface((2 : stdgo._internal.syscall.Syscall_Errno.Errno)))) : Bool)) {
                _firstErr = _err;
            };
        };
        {
            var __tmp__ = stdgo._internal.time.Time__gorootZoneSource._gorootZoneSource(stdgo._internal.runtime.Runtime_gOROOT.gOROOT()?.__copy__()), _source:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                var __tmp__ = stdgo._internal.time.Time__loadTzinfo._loadTzinfo(_name?.__copy__(), _source?.__copy__()), _zoneData:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    {
                        {
                            var __tmp__ = stdgo._internal.time.Time_loadLocationFromTZData.loadLocationFromTZData(_name?.__copy__(), _zoneData);
                            _z = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err == null) {
                            return {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.time.Time_Location.Location>; var _1 : stdgo.Error; } = { _0 : _z, _1 : (null : stdgo.Error) };
                                _z = __tmp__._0;
                                _firstErr = __tmp__._1;
                                __tmp__;
                            };
                        };
                    };
                };
                if (((_firstErr == null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo.Go.asInterface((2 : stdgo._internal.syscall.Syscall_Errno.Errno)))) : Bool)) {
                    _firstErr = _err;
                };
            };
        };
        if (_firstErr != null) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.time.Time_Location.Location>; var _1 : stdgo.Error; } = { _0 : null, _1 : _firstErr };
                _z = __tmp__._0;
                _firstErr = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.time.Time_Location.Location>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_((("unknown time zone " : stdgo.GoString) + _name?.__copy__() : stdgo.GoString)?.__copy__()) };
            _z = __tmp__._0;
            _firstErr = __tmp__._1;
            __tmp__;
        };
    }
