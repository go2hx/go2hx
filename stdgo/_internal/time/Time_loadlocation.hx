package stdgo._internal.time;
function loadLocation(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.time.Time_location.Location>; var _1 : stdgo.Error; } {
        if (((_name == (stdgo.Go.str() : stdgo.GoString)) || (_name == ("UTC" : stdgo.GoString)) : Bool)) {
            return { _0 : stdgo._internal.time.Time_utc.uTC, _1 : (null : stdgo.Error) };
        };
        if (_name == (("Local" : stdgo.GoString))) {
            return { _0 : stdgo._internal.time.Time_local.local, _1 : (null : stdgo.Error) };
        };
        if (((stdgo._internal.time.Time__containsdotdot._containsDotDot(_name?.__copy__()) || _name[(0 : stdgo.GoInt)] == ((47 : stdgo.GoUInt8)) : Bool) || (_name[(0 : stdgo.GoInt)] == (92 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : null, _1 : stdgo._internal.time.Time__errlocation._errLocation };
        };
        @:check2 stdgo._internal.time.Time__zoneinfoonce._zoneinfoOnce.do_(function():Void {
            var __tmp__ = stdgo._internal.syscall.Syscall_getenv.getenv(("ZONEINFO" : stdgo.GoString)), _env:stdgo.GoString = __tmp__._0, __1:Bool = __tmp__._1;
            var _env__pointer__ = stdgo.Go.pointer(_env);
            var _env__pointer__ = stdgo.Go.pointer(_env);
            var _env__pointer__ = stdgo.Go.pointer(_env);
            var _env__pointer__ = stdgo.Go.pointer(_env);
            stdgo._internal.time.Time__zoneinfo._zoneinfo = _env__pointer__;
        });
        var _firstErr:stdgo.Error = (null : stdgo.Error);
        if (stdgo._internal.time.Time__zoneinfo._zoneinfo.value != ((stdgo.Go.str() : stdgo.GoString))) {
            {
                var __tmp__ = stdgo._internal.time.Time__loadtzinfofromdirorzip._loadTzinfoFromDirOrZip(stdgo._internal.time.Time__zoneinfo._zoneinfo.value?.__copy__(), _name?.__copy__()), _zoneData:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    {
                        var __tmp__ = stdgo._internal.time.Time_loadlocationfromtzdata.loadLocationFromTZData(_name?.__copy__(), _zoneData), _z:stdgo.Ref<stdgo._internal.time.Time_location.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err == null) {
                            return { _0 : _z, _1 : (null : stdgo.Error) };
                        };
                    };
                    _firstErr = _err;
                } else if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo.GoUIntptr(2) : stdgo._internal.syscall.Syscall_errno.Errno))))) {
                    _firstErr = _err;
                };
            };
        };
        {
            var __tmp__ = stdgo._internal.time.Time__loadlocation._loadLocation(_name?.__copy__(), stdgo._internal.time.Time__platformzonesources._platformZoneSources), _z:stdgo.Ref<stdgo._internal.time.Time_location.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                return { _0 : _z, _1 : (null : stdgo.Error) };
            } else if (_firstErr == null) {
                _firstErr = _err;
            };
        };
        return { _0 : null, _1 : _firstErr };
    }
