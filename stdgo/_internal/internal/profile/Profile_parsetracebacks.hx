package stdgo._internal.internal.profile;
function parseTracebacks(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>; var _1 : stdgo.Error; } {
        var _r = stdgo._internal.bytes.Bytes_newbuffer.newBuffer(_b);
        var _p = (stdgo.Go.setRef(({ periodType : (stdgo.Go.setRef(({ type : ("trace" : stdgo.GoString), unit : ("count" : stdgo.GoString) } : stdgo._internal.internal.profile.Profile_valuetype_.ValueType_)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>), period : (1i64 : stdgo.GoInt64), sampleType : (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>>(1, 1, ...[({ type : ("trace" : stdgo.GoString), unit : ("count" : stdgo.GoString) } : stdgo._internal.internal.profile.Profile_valuetype_.ValueType_)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>>) } : stdgo._internal.internal.profile.Profile_profile.Profile)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        var _sources:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _sloc:stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>);
        var _locs = (({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>) : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>);
        while (true) {
            var __tmp__ = @:check2r _r.readString((10 : stdgo.GoUInt8)), _l:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                    return { _0 : null, _1 : _err };
                };
                if (_l == ((stdgo.Go.str() : stdgo.GoString))) {
                    break;
                };
            };
            if (stdgo._internal.internal.profile.Profile__sectiontrigger._sectionTrigger(_l?.__copy__()) == ((1 : stdgo._internal.internal.profile.Profile_t_sectiontype.T_sectionType))) {
                break;
            };
            {
                var __tmp__ = stdgo._internal.internal.profile.Profile__extracthexaddresses._extractHexAddresses(_l?.__copy__()), _s:stdgo.Slice<stdgo.GoString> = __tmp__._0, _addrs:stdgo.Slice<stdgo.GoUInt64> = __tmp__._1;
                if (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
                    for (__0 => _addr in _addrs) {
                        _addr--;
                        var _loc = (_locs[_addr] ?? (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>));
                        if (((_locs[_addr] ?? (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>)) == null || (_locs[_addr] ?? (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>) : Dynamic).__nil__)) {
                            _loc = (stdgo.Go.setRef(({ address : _addr } : stdgo._internal.internal.profile.Profile_location.Location)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>);
                            (@:checkr _p ?? throw "null pointer dereference").location = ((@:checkr _p ?? throw "null pointer dereference").location.__append__(_loc));
                            _locs[_addr] = _loc;
                        };
                        _sloc = (_sloc.__append__(_loc));
                    };
                    _sources = (_sources.__append__(...(_s : Array<stdgo.GoString>)));
                } else {
                    if ((((_sources.length) > (0 : stdgo.GoInt) : Bool) || ((_sloc.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        stdgo._internal.internal.profile.Profile__addtracebacksample._addTracebackSample(_sloc, _sources, _p);
                        {
                            final __tmp__0 = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>);
                            final __tmp__1 = (null : stdgo.Slice<stdgo.GoString>);
                            _sloc = __tmp__0;
                            _sources = __tmp__1;
                        };
                    };
                };
            };
        };
        if ((((_sources.length) > (0 : stdgo.GoInt) : Bool) || ((_sloc.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            stdgo._internal.internal.profile.Profile__addtracebacksample._addTracebackSample(_sloc, _sources, _p);
        };
        {
            var _err = (@:check2r _p.parseMemoryMap(stdgo.Go.asInterface(_r)) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
