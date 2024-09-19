package _internal.internal.profile;
function _parseThread(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>; var _1 : stdgo.Error; } {
        var _r = stdgo._internal.bytes.Bytes_newBuffer.newBuffer(_b);
        var _line:stdgo.GoString = ("" : stdgo.GoString);
        var _err:stdgo.Error = (null : stdgo.Error);
        while (true) {
            {
                var __tmp__ = _r.readString((10 : stdgo.GoUInt8));
                _line = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            if (!_internal.internal.profile.Profile__isSpaceOrComment._isSpaceOrComment(_line?.__copy__())) {
                break;
            };
        };
        {
            var _m = _internal.internal.profile.Profile__threadzStartRE._threadzStartRE.findStringSubmatch(_line?.__copy__());
            if (_m != null) {
                while (true) {
                    {
                        var __tmp__ = _r.readString((10 : stdgo.GoUInt8));
                        _line = __tmp__._0?.__copy__();
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                            return { _0 : null, _1 : _err };
                        };
                        if (_line == (stdgo.Go.str())) {
                            break;
                        };
                    };
                    if (((_internal.internal.profile.Profile__sectionTrigger._sectionTrigger(_line?.__copy__()) != (0 : _internal.internal.profile.Profile_T_sectionType.T_sectionType)) || (_line[(0 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) : Bool)) {
                        break;
                    };
                };
            } else {
                var _t = _internal.internal.profile.Profile__threadStartRE._threadStartRE.findStringSubmatch(_line?.__copy__());
                if ((_t.length) != ((4 : stdgo.GoInt))) {
                    return { _0 : null, _1 : _internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
                };
            };
        };
        var _p = (stdgo.Go.setRef(({ sampleType : (new stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_ValueType_.ValueType_>>(1, 1, ...[({ type : ("thread" : stdgo.GoString), unit : ("count" : stdgo.GoString) } : _internal.internal.profile.Profile_ValueType_.ValueType_)]) : stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_ValueType_.ValueType_>>), periodType : (stdgo.Go.setRef(({ type : ("thread" : stdgo.GoString), unit : ("count" : stdgo.GoString) } : _internal.internal.profile.Profile_ValueType_.ValueType_)) : stdgo.Ref<_internal.internal.profile.Profile_ValueType_.ValueType_>), period : (1i64 : stdgo.GoInt64) } : _internal.internal.profile.Profile_Profile.Profile)) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>);
        var _locs = ({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<_internal.internal.profile.Profile_Location.Location>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>);
        while (_internal.internal.profile.Profile__sectionTrigger._sectionTrigger(_line?.__copy__()) == ((0 : _internal.internal.profile.Profile_T_sectionType.T_sectionType))) {
            if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_line?.__copy__(), ("---- no stack trace for" : stdgo.GoString))) {
                _line = stdgo.Go.str()?.__copy__();
                break;
            };
            {
                var _t = _internal.internal.profile.Profile__threadStartRE._threadStartRE.findStringSubmatch(_line?.__copy__());
                if ((_t.length) != ((4 : stdgo.GoInt))) {
                    return { _0 : null, _1 : _internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
                };
            };
            var _addrs:stdgo.Slice<stdgo.GoUInt64> = (null : stdgo.Slice<stdgo.GoUInt64>);
            {
                var __tmp__ = _internal.internal.profile.Profile__parseThreadSample._parseThreadSample(_r);
                _line = __tmp__._0?.__copy__();
                _addrs = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : null, _1 : _internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
            };
            if ((_addrs.length) == ((0 : stdgo.GoInt))) {
                if (((_p.sample.length) > (0 : stdgo.GoInt) : Bool)) {
                    var _s = _p.sample[((_p.sample.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                    _s.value[(0 : stdgo.GoInt)]++;
                };
                continue;
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
            _p.sample = (_p.sample.__append__((stdgo.Go.setRef(({ value : (new stdgo.Slice<stdgo.GoInt64>(1, 1, ...[(1i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>), location : _sloc } : _internal.internal.profile.Profile_Sample.Sample)) : stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample>)));
        };
        {
            _err = _internal.internal.profile.Profile__parseAdditionalSections._parseAdditionalSections(_line?.__copy__(), _r, _p);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
