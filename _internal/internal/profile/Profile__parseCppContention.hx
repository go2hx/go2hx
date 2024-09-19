package _internal.internal.profile;
function _parseCppContention(_r:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>):{ var _0 : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>; var _1 : stdgo.Error; } {
        var _p = (stdgo.Go.setRef(({ periodType : (stdgo.Go.setRef(({ type : ("contentions" : stdgo.GoString), unit : ("count" : stdgo.GoString) } : _internal.internal.profile.Profile_ValueType_.ValueType_)) : stdgo.Ref<_internal.internal.profile.Profile_ValueType_.ValueType_>), period : (1i64 : stdgo.GoInt64), sampleType : (new stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_ValueType_.ValueType_>>(2, 2, ...[({ type : ("contentions" : stdgo.GoString), unit : ("count" : stdgo.GoString) } : _internal.internal.profile.Profile_ValueType_.ValueType_), ({ type : ("delay" : stdgo.GoString), unit : ("nanoseconds" : stdgo.GoString) } : _internal.internal.profile.Profile_ValueType_.ValueType_)]) : stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_ValueType_.ValueType_>>) } : _internal.internal.profile.Profile_Profile.Profile)) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>);
        var _cpuHz:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _l:stdgo.GoString = ("" : stdgo.GoString);
        var _err:stdgo.Error = (null : stdgo.Error);
        {};
        while (true) {
            {
                var __tmp__ = _r.readString((10 : stdgo.GoUInt8));
                _l = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
            if (_err != null) {
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                    return { _0 : null, _1 : _err };
                };
                if (_l == (stdgo.Go.str())) {
                    break;
                };
            };
            if (_internal.internal.profile.Profile__isSpaceOrComment._isSpaceOrComment(_l?.__copy__())) {
                continue;
            };
            {
                _l = stdgo._internal.strings.Strings_trimSpace.trimSpace(_l?.__copy__())?.__copy__();
                if (_l == (stdgo.Go.str())) {
                    continue;
                };
            };
            if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_l?.__copy__(), ("---" : stdgo.GoString))) {
                break;
            };
            var _index = (stdgo._internal.strings.Strings_indexByte.indexByte(_l?.__copy__(), (61 : stdgo.GoUInt8)) : stdgo.GoInt);
            if ((_index < (0 : stdgo.GoInt) : Bool)) {
                break;
            };
            var _key = ((_l.__slice__(0, _index) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            var _val = ((_l.__slice__((_index + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            {
                final __tmp__0 = stdgo._internal.strings.Strings_trimSpace.trimSpace(_key?.__copy__())?.__copy__();
                final __tmp__1 = stdgo._internal.strings.Strings_trimSpace.trimSpace(_val?.__copy__())?.__copy__();
                _key = __tmp__0;
                _val = __tmp__1;
            };
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                final __value__ = _key;
                if (__value__ == (("cycles/second" : stdgo.GoString))) {
                    {
                        {
                            var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_val?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt));
                            _cpuHz = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            return { _0 : null, _1 : _internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
                        };
                    };
                } else if (__value__ == (("sampling period" : stdgo.GoString))) {
                    {
                        {
                            var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_val?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt));
                            _p.period = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            return { _0 : null, _1 : _internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
                        };
                    };
                } else if (__value__ == (("ms since reset" : stdgo.GoString))) {
                    var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_val?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt)), _ms:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : null, _1 : _internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
                    };
                    _p.durationNanos = ((_ms * (1000i64 : stdgo.GoInt64) : stdgo.GoInt64) * (1000i64 : stdgo.GoInt64) : stdgo.GoInt64);
                } else if (__value__ == (("format" : stdgo.GoString))) {
                    return { _0 : null, _1 : _internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
                } else if (__value__ == (("resolution" : stdgo.GoString))) {
                    return { _0 : null, _1 : _internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
                } else if (__value__ == (("discarded samples" : stdgo.GoString))) {} else {
                    return { _0 : null, _1 : _internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
                };
            };
        };
        var _locs = ({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<_internal.internal.profile.Profile_Location.Location>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>);
        while (true) {
            if (!_internal.internal.profile.Profile__isSpaceOrComment._isSpaceOrComment(_l?.__copy__())) {
                {
                    _l = stdgo._internal.strings.Strings_trimSpace.trimSpace(_l?.__copy__())?.__copy__();
                    if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_l?.__copy__(), ("---" : stdgo.GoString))) {
                        break;
                    };
                };
                var __tmp__ = _internal.internal.profile.Profile__parseContentionSample._parseContentionSample(_l?.__copy__(), _p.period, _cpuHz), _value:stdgo.Slice<stdgo.GoInt64> = __tmp__._0, _addrs:stdgo.Slice<stdgo.GoUInt64> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
                var _sloc:stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_Location.Location>> = (null : stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>);
                for (__0 => _addr in _addrs) {
                    _addr--;
                    var _loc = (_locs[_addr] ?? (null : stdgo.Ref<_internal.internal.profile.Profile_Location.Location>));
                    if ((_locs[_addr] ?? (null : stdgo.Ref<_internal.internal.profile.Profile_Location.Location>)) == null || (_locs[_addr] ?? (null : stdgo.Ref<_internal.internal.profile.Profile_Location.Location>) : Dynamic).__nil__) {
                        _loc = (stdgo.Go.setRef(({ address : _addr } : _internal.internal.profile.Profile_Location.Location)) : stdgo.Ref<_internal.internal.profile.Profile_Location.Location>);
                        _p.location = (_p.location.__append__(_loc));
                        _locs[_addr] = _loc;
                    };
                    _sloc = (_sloc.__append__(_loc));
                };
                _p.sample = (_p.sample.__append__((stdgo.Go.setRef(({ value : _value, location : _sloc } : _internal.internal.profile.Profile_Sample.Sample)) : stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample>)));
            };
            {
                {
                    var __tmp__ = _r.readString((10 : stdgo.GoUInt8));
                    _l = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                        return { _0 : null, _1 : _err };
                    };
                    if (_l == (stdgo.Go.str())) {
                        break;
                    };
                };
            };
        };
        {
            _err = _internal.internal.profile.Profile__parseAdditionalSections._parseAdditionalSections(_l?.__copy__(), _r, _p);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
