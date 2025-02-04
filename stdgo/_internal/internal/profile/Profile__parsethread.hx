package stdgo._internal.internal.profile;
function _parseThread(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>; var _1 : stdgo.Error; } {
        var _r = stdgo._internal.bytes.Bytes_newbuffer.newBuffer(_b);
        var _line:stdgo.GoString = ("" : stdgo.GoString);
        var _err:stdgo.Error = (null : stdgo.Error);
        while (true) {
            {
                var __tmp__ = @:check2r _r.readString((10 : stdgo.GoUInt8));
                _line = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            if (!stdgo._internal.internal.profile.Profile__isspaceorcomment._isSpaceOrComment(_line?.__copy__())) {
                break;
            };
        };
        {
            var _m = @:check2r stdgo._internal.internal.profile.Profile__threadzstartre._threadzStartRE.findStringSubmatch(_line?.__copy__());
            if (_m != null) {
                while (true) {
                    {
                        var __tmp__ = @:check2r _r.readString((10 : stdgo.GoUInt8));
                        _line = @:tmpset0 __tmp__._0?.__copy__();
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                            return { _0 : null, _1 : _err };
                        };
                        if (_line == ((stdgo.Go.str() : stdgo.GoString))) {
                            break;
                        };
                    };
                    if (((stdgo._internal.internal.profile.Profile__sectiontrigger._sectionTrigger(_line?.__copy__()) != (0 : stdgo._internal.internal.profile.Profile_t_sectiontype.T_sectionType)) || (_line[(0 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) : Bool)) {
                        break;
                    };
                };
            } else {
                var _t = @:check2r stdgo._internal.internal.profile.Profile__threadstartre._threadStartRE.findStringSubmatch(_line?.__copy__());
                if ((_t.length) != ((4 : stdgo.GoInt))) {
                    return { _0 : null, _1 : stdgo._internal.internal.profile.Profile__errunrecognized._errUnrecognized };
                };
            };
        };
        var _p = (stdgo.Go.setRef(({ sampleType : (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>>(1, 1, ...[({ type : ("thread" : stdgo.GoString), unit : ("count" : stdgo.GoString) } : stdgo._internal.internal.profile.Profile_valuetype_.ValueType_)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>>), periodType : (stdgo.Go.setRef(({ type : ("thread" : stdgo.GoString), unit : ("count" : stdgo.GoString) } : stdgo._internal.internal.profile.Profile_valuetype_.ValueType_)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>), period : (1i64 : stdgo.GoInt64) } : stdgo._internal.internal.profile.Profile_profile.Profile)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        var _locs = (({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>) : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>);
        while (stdgo._internal.internal.profile.Profile__sectiontrigger._sectionTrigger(_line?.__copy__()) == ((0 : stdgo._internal.internal.profile.Profile_t_sectiontype.T_sectionType))) {
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_line?.__copy__(), ("---- no stack trace for" : stdgo.GoString))) {
                _line = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                break;
            };
            {
                var _t = @:check2r stdgo._internal.internal.profile.Profile__threadstartre._threadStartRE.findStringSubmatch(_line?.__copy__());
                if ((_t.length) != ((4 : stdgo.GoInt))) {
                    return { _0 : null, _1 : stdgo._internal.internal.profile.Profile__errunrecognized._errUnrecognized };
                };
            };
            var _addrs:stdgo.Slice<stdgo.GoUInt64> = (null : stdgo.Slice<stdgo.GoUInt64>);
            {
                var __tmp__ = stdgo._internal.internal.profile.Profile__parsethreadsample._parseThreadSample(_r);
                _line = @:tmpset0 __tmp__._0?.__copy__();
                _addrs = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            if (_err != null) {
                return { _0 : null, _1 : stdgo._internal.internal.profile.Profile__errunrecognized._errUnrecognized };
            };
            if ((_addrs.length) == ((0 : stdgo.GoInt))) {
                if ((((@:checkr _p ?? throw "null pointer dereference").sample.length) > (0 : stdgo.GoInt) : Bool)) {
                    var _s = (@:checkr _p ?? throw "null pointer dereference").sample[(((@:checkr _p ?? throw "null pointer dereference").sample.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                    (@:checkr _s ?? throw "null pointer dereference").value[(0 : stdgo.GoInt)]++;
                };
                continue;
            };
            var _sloc:stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>);
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
            (@:checkr _p ?? throw "null pointer dereference").sample = ((@:checkr _p ?? throw "null pointer dereference").sample.__append__((stdgo.Go.setRef(({ value : (new stdgo.Slice<stdgo.GoInt64>(1, 1, ...[(1i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>), location : _sloc } : stdgo._internal.internal.profile.Profile_sample.Sample)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>)));
        };
        {
            _err = stdgo._internal.internal.profile.Profile__parseadditionalsections._parseAdditionalSections(_line?.__copy__(), _r, _p);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
