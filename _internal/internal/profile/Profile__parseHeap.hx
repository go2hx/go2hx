package _internal.internal.profile;
function _parseHeap(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>; var _1 : stdgo.Error; } {
        var _p = (null : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>), _err = (null : stdgo.Error);
        var _r = stdgo._internal.bytes.Bytes_newBuffer.newBuffer(_b);
        var __tmp__ = _r.readString((10 : stdgo.GoUInt8)), _l:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
        };
        var _sampling = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
        {
            var _header = _internal.internal.profile.Profile__heapHeaderRE._heapHeaderRE.findStringSubmatch(_l?.__copy__());
            if (_header != null) {
                _p = (stdgo.Go.setRef(({ sampleType : (new stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_ValueType_.ValueType_>>(2, 2, ...[({ type : ("objects" : stdgo.GoString), unit : ("count" : stdgo.GoString) } : _internal.internal.profile.Profile_ValueType_.ValueType_), ({ type : ("space" : stdgo.GoString), unit : ("bytes" : stdgo.GoString) } : _internal.internal.profile.Profile_ValueType_.ValueType_)]) : stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_ValueType_.ValueType_>>), periodType : (stdgo.Go.setRef(({ type : ("objects" : stdgo.GoString), unit : ("bytes" : stdgo.GoString) } : _internal.internal.profile.Profile_ValueType_.ValueType_)) : stdgo.Ref<_internal.internal.profile.Profile_ValueType_.ValueType_>) } : _internal.internal.profile.Profile_Profile.Profile)) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>);
                var _period:stdgo.GoInt64 = (0 : stdgo.GoInt64);
                if (((_header[(6 : stdgo.GoInt)].length) > (0 : stdgo.GoInt) : Bool)) {
                    {
                        {
                            var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_header[(6 : stdgo.GoInt)]?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt));
                            _period = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            return { _0 : null, _1 : _internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
                        };
                    };
                };
                {
                    final __value__ = _header[(5 : stdgo.GoInt)];
                    if (__value__ == (("heapz_v2" : stdgo.GoString)) || __value__ == (("heap_v2" : stdgo.GoString))) {
                        {
                            final __tmp__0 = ("v2" : stdgo.GoString);
                            final __tmp__1 = _period;
                            _sampling = __tmp__0;
                            _p.period = __tmp__1;
                        };
                    } else if (__value__ == (("heapprofile" : stdgo.GoString))) {
                        {
                            final __tmp__0 = stdgo.Go.str()?.__copy__();
                            final __tmp__1 = (1i64 : stdgo.GoInt64);
                            _sampling = __tmp__0;
                            _p.period = __tmp__1;
                        };
                    } else if (__value__ == (("heap" : stdgo.GoString))) {
                        {
                            final __tmp__0 = ("v2" : stdgo.GoString);
                            final __tmp__1 = (_period / (2i64 : stdgo.GoInt64) : stdgo.GoInt64);
                            _sampling = __tmp__0;
                            _p.period = __tmp__1;
                        };
                    } else {
                        return { _0 : null, _1 : _internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
                    };
                };
            } else {
                _header = _internal.internal.profile.Profile__growthHeaderRE._growthHeaderRE.findStringSubmatch(_l?.__copy__());
                if (_header != null) {
                    _p = (stdgo.Go.setRef(({ sampleType : (new stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_ValueType_.ValueType_>>(2, 2, ...[({ type : ("objects" : stdgo.GoString), unit : ("count" : stdgo.GoString) } : _internal.internal.profile.Profile_ValueType_.ValueType_), ({ type : ("space" : stdgo.GoString), unit : ("bytes" : stdgo.GoString) } : _internal.internal.profile.Profile_ValueType_.ValueType_)]) : stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_ValueType_.ValueType_>>), periodType : (stdgo.Go.setRef(({ type : ("heapgrowth" : stdgo.GoString), unit : ("count" : stdgo.GoString) } : _internal.internal.profile.Profile_ValueType_.ValueType_)) : stdgo.Ref<_internal.internal.profile.Profile_ValueType_.ValueType_>), period : (1i64 : stdgo.GoInt64) } : _internal.internal.profile.Profile_Profile.Profile)) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>);
                } else {
                    _header = _internal.internal.profile.Profile__fragmentationHeaderRE._fragmentationHeaderRE.findStringSubmatch(_l?.__copy__());
                    if (_header != null) {
                        _p = (stdgo.Go.setRef(({ sampleType : (new stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_ValueType_.ValueType_>>(2, 2, ...[({ type : ("objects" : stdgo.GoString), unit : ("count" : stdgo.GoString) } : _internal.internal.profile.Profile_ValueType_.ValueType_), ({ type : ("space" : stdgo.GoString), unit : ("bytes" : stdgo.GoString) } : _internal.internal.profile.Profile_ValueType_.ValueType_)]) : stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_ValueType_.ValueType_>>), periodType : (stdgo.Go.setRef(({ type : ("allocations" : stdgo.GoString), unit : ("count" : stdgo.GoString) } : _internal.internal.profile.Profile_ValueType_.ValueType_)) : stdgo.Ref<_internal.internal.profile.Profile_ValueType_.ValueType_>), period : (1i64 : stdgo.GoInt64) } : _internal.internal.profile.Profile_Profile.Profile)) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>);
                    } else {
                        return { _0 : null, _1 : _internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
                    };
                };
            };
        };
        if (_internal.internal.profile.Profile_legacyHeapAllocated.legacyHeapAllocated) {
            for (__0 => _st in _p.sampleType) {
                _st.type = (("alloc_" : stdgo.GoString) + _st.type?.__copy__() : stdgo.GoString)?.__copy__();
            };
        } else {
            for (__0 => _st in _p.sampleType) {
                _st.type = (("inuse_" : stdgo.GoString) + _st.type?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
        var _locs = ({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<_internal.internal.profile.Profile_Location.Location>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>);
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
            _l = stdgo._internal.strings.Strings_trimSpace.trimSpace(_l?.__copy__())?.__copy__();
            if (_internal.internal.profile.Profile__sectionTrigger._sectionTrigger(_l?.__copy__()) != ((0 : _internal.internal.profile.Profile_T_sectionType.T_sectionType))) {
                break;
            };
            var __tmp__ = _internal.internal.profile.Profile__parseHeapSample._parseHeapSample(_l?.__copy__(), _p.period, _sampling?.__copy__()), _value:stdgo.Slice<stdgo.GoInt64> = __tmp__._0, _blocksize:stdgo.GoInt64 = __tmp__._1, _addrs:stdgo.Slice<stdgo.GoUInt64> = __tmp__._2, _err:stdgo.Error = __tmp__._3;
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
            _p.sample = (_p.sample.__append__((stdgo.Go.setRef(({ value : _value, location : _sloc, numLabel : ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoInt64>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoInt64>);
                x.set(("bytes" : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt64>(1, 1, ...[_blocksize]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>));
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt64>>) } : _internal.internal.profile.Profile_Sample.Sample)) : stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample>)));
        };
        {
            _err = _internal.internal.profile.Profile__parseAdditionalSections._parseAdditionalSections(_l?.__copy__(), _r, _p);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
