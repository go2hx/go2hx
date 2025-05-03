package stdgo._internal.internal.profile;
function _parseThread(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>; var _1 : stdgo.Error; } {
        var _r = stdgo._internal.bytes.Bytes_newbuffer.newBuffer(_b);
        var _line:stdgo.GoString = ("" : stdgo.GoString);
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L873"
        while (true) {
            {
                var __tmp__ = _r.readString((10 : stdgo.GoUInt8));
                _line = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L876"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L877"
                return { _0 : null, _1 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L879"
            if (!stdgo._internal.internal.profile.Profile__isspaceorcomment._isSpaceOrComment(_line?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L880"
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L884"
        {
            var _m = stdgo._internal.internal.profile.Profile__threadzstartre._threadzStartRE.findStringSubmatch(_line?.__copy__());
            if (_m != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L886"
                while (true) {
                    {
                        var __tmp__ = _r.readString((10 : stdgo.GoUInt8));
                        _line = @:tmpset0 __tmp__._0?.__copy__();
                        _err = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L888"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L889"
                        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L890"
                            return { _0 : null, _1 : _err };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L893"
                        if (_line == ((stdgo.Go.str() : stdgo.GoString))) {
                            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L894"
                            break;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L897"
                    if (((stdgo._internal.internal.profile.Profile__sectiontrigger._sectionTrigger(_line?.__copy__()) != (0 : stdgo._internal.internal.profile.Profile_t_sectiontype.T_sectionType)) || (_line[(0 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L898"
                        break;
                    };
                };
            } else {
                var _t = stdgo._internal.internal.profile.Profile__threadstartre._threadStartRE.findStringSubmatch(_line?.__copy__());
                if ((_t.length) != ((4 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L902"
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
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L913"
        while (stdgo._internal.internal.profile.Profile__sectiontrigger._sectionTrigger(_line?.__copy__()) == ((0 : stdgo._internal.internal.profile.Profile_t_sectiontype.T_sectionType))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L914"
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_line?.__copy__(), ("---- no stack trace for" : stdgo.GoString))) {
                _line = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L916"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L918"
            {
                var _t = stdgo._internal.internal.profile.Profile__threadstartre._threadStartRE.findStringSubmatch(_line?.__copy__());
                if ((_t.length) != ((4 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L919"
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
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L924"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L925"
                return { _0 : null, _1 : stdgo._internal.internal.profile.Profile__errunrecognized._errUnrecognized };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L927"
            if ((_addrs.length) == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L929"
                if ((((@:checkr _p ?? throw "null pointer dereference").sample.length) > (0 : stdgo.GoInt) : Bool)) {
                    var _s = (@:checkr _p ?? throw "null pointer dereference").sample[(((@:checkr _p ?? throw "null pointer dereference").sample.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L931"
                    (@:checkr _s ?? throw "null pointer dereference").value[(0 : stdgo.GoInt)]++;
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L933"
                continue;
            };
            var _sloc:stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>);
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L937"
            for (__0 => _addr in _addrs) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L940"
                _addr--;
                var _loc = (_locs[_addr] ?? (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>));
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L942"
                if (({
                    final value = (_locs[_addr] ?? (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>));
                    (value == null || (value : Dynamic).__nil__);
                })) {
                    _loc = (stdgo.Go.setRef(({ address : _addr } : stdgo._internal.internal.profile.Profile_location.Location)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>);
                    (@:checkr _p ?? throw "null pointer dereference").location = ((@:checkr _p ?? throw "null pointer dereference").location.__append__(_loc) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>);
                    _locs[_addr] = _loc;
                };
                _sloc = (_sloc.__append__(_loc) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>);
            };
            (@:checkr _p ?? throw "null pointer dereference").sample = ((@:checkr _p ?? throw "null pointer dereference").sample.__append__((stdgo.Go.setRef(({ value : (new stdgo.Slice<stdgo.GoInt64>(1, 1, ...[(1i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>), location : _sloc } : stdgo._internal.internal.profile.Profile_sample.Sample)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>)) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>>);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L958"
        {
            _err = stdgo._internal.internal.profile.Profile__parseadditionalsections._parseAdditionalSections(_line?.__copy__(), _r, _p);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L959"
                return { _0 : null, _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L962"
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
