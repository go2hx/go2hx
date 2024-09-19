package _internal.internal.profile;
function parseTracebacks(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>; var _1 : stdgo.Error; } {
        var _r = stdgo._internal.bytes.Bytes_newBuffer.newBuffer(_b);
        var _p = (stdgo.Go.setRef(({ periodType : (stdgo.Go.setRef(({ type : ("trace" : stdgo.GoString), unit : ("count" : stdgo.GoString) } : _internal.internal.profile.Profile_ValueType_.ValueType_)) : stdgo.Ref<_internal.internal.profile.Profile_ValueType_.ValueType_>), period : (1i64 : stdgo.GoInt64), sampleType : (new stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_ValueType_.ValueType_>>(1, 1, ...[({ type : ("trace" : stdgo.GoString), unit : ("count" : stdgo.GoString) } : _internal.internal.profile.Profile_ValueType_.ValueType_)]) : stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_ValueType_.ValueType_>>) } : _internal.internal.profile.Profile_Profile.Profile)) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>);
        var _sources:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _sloc:stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_Location.Location>> = (null : stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>);
        var _locs = ({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<_internal.internal.profile.Profile_Location.Location>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>);
        while (true) {
            var __tmp__ = _r.readString((10 : stdgo.GoUInt8)), _l:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                    return { _0 : null, _1 : _err };
                };
                if (_l == (stdgo.Go.str())) {
                    break;
                };
            };
            if (_internal.internal.profile.Profile__sectionTrigger._sectionTrigger(_l?.__copy__()) == ((1 : _internal.internal.profile.Profile_T_sectionType.T_sectionType))) {
                break;
            };
            {
                var __tmp__ = _internal.internal.profile.Profile__extractHexAddresses._extractHexAddresses(_l?.__copy__()), _s:stdgo.Slice<stdgo.GoString> = __tmp__._0, _addrs:stdgo.Slice<stdgo.GoUInt64> = __tmp__._1;
                if (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
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
                    _sources = (_sources.__append__(...(_s : Array<stdgo.GoString>)));
                } else {
                    if ((((_sources.length) > (0 : stdgo.GoInt) : Bool) || ((_sloc.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _internal.internal.profile.Profile__addTracebackSample._addTracebackSample(_sloc, _sources, _p);
                        {
                            final __tmp__0 = (null : stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>);
                            final __tmp__1 = (null : stdgo.Slice<stdgo.GoString>);
                            _sloc = __tmp__0;
                            _sources = __tmp__1;
                        };
                    };
                };
            };
        };
        if ((((_sources.length) > (0 : stdgo.GoInt) : Bool) || ((_sloc.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            _internal.internal.profile.Profile__addTracebackSample._addTracebackSample(_sloc, _sources, _p);
        };
        {
            var _err = (_p.parseMemoryMap(stdgo.Go.asInterface(_r)) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }