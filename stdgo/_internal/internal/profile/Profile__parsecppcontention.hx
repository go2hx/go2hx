package stdgo._internal.internal.profile;
function _parseCppContention(_r:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):{ var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>; var _1 : stdgo.Error; } {
        var _p = (stdgo.Go.setRef(({ periodType : (stdgo.Go.setRef(({ type : ("contentions" : stdgo.GoString), unit : ("count" : stdgo.GoString) } : stdgo._internal.internal.profile.Profile_valuetype_.ValueType_)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>), period : (1i64 : stdgo.GoInt64), sampleType : (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>>(2, 2, ...[({ type : ("contentions" : stdgo.GoString), unit : ("count" : stdgo.GoString) } : stdgo._internal.internal.profile.Profile_valuetype_.ValueType_), ({ type : ("delay" : stdgo.GoString), unit : ("nanoseconds" : stdgo.GoString) } : stdgo._internal.internal.profile.Profile_valuetype_.ValueType_)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>>) } : stdgo._internal.internal.profile.Profile_profile.Profile)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        var _cpuHz:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _l:stdgo.GoString = ("" : stdgo.GoString);
        var _err:stdgo.Error = (null : stdgo.Error);
        {};
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L726"
        while (true) {
            {
                var __tmp__ = _r.readString((10 : stdgo.GoUInt8));
                _l = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L728"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L729"
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L730"
                    return { _0 : null, _1 : _err };
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L733"
                if (_l == ((stdgo.Go.str() : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L734"
                    break;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L737"
            if (stdgo._internal.internal.profile.Profile__isspaceorcomment._isSpaceOrComment(_l?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L738"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L741"
            {
                _l = stdgo._internal.strings.Strings_trimspace.trimSpace(_l?.__copy__())?.__copy__();
                if (_l == ((stdgo.Go.str() : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L742"
                    continue;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L745"
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_l?.__copy__(), ("---" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L746"
                break;
            };
            var _index = (stdgo._internal.strings.Strings_indexbyte.indexByte(_l?.__copy__(), (61 : stdgo.GoUInt8)) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L750"
            if ((_index < (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L751"
                break;
            };
            var _key = ((_l.__slice__(0, _index) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            var _val = ((_l.__slice__((_index + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            {
                final __tmp__0 = stdgo._internal.strings.Strings_trimspace.trimSpace(_key?.__copy__())?.__copy__();
                final __tmp__1 = stdgo._internal.strings.Strings_trimspace.trimSpace(_val?.__copy__())?.__copy__();
                _key = @:binopAssign __tmp__0;
                _val = @:binopAssign __tmp__1;
            };
            var _err:stdgo.Error = (null : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L758"
            {
                final __value__ = _key;
                if (__value__ == (("cycles/second" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L760"
                    {
                        {
                            var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_val?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt));
                            _cpuHz = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L761"
                            return { _0 : null, _1 : stdgo._internal.internal.profile.Profile__errunrecognized._errUnrecognized };
                        };
                    };
                } else if (__value__ == (("sampling period" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L764"
                    {
                        {
                            var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_val?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt));
                            (@:checkr _p ?? throw "null pointer dereference").period = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L765"
                            return { _0 : null, _1 : stdgo._internal.internal.profile.Profile__errunrecognized._errUnrecognized };
                        };
                    };
                } else if (__value__ == (("ms since reset" : stdgo.GoString))) {
                    var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_val?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt)), _ms:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L769"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L770"
                        return { _0 : null, _1 : stdgo._internal.internal.profile.Profile__errunrecognized._errUnrecognized };
                    };
                    (@:checkr _p ?? throw "null pointer dereference").durationNanos = ((_ms * (1000i64 : stdgo.GoInt64) : stdgo.GoInt64) * (1000i64 : stdgo.GoInt64) : stdgo.GoInt64);
                } else if (__value__ == (("format" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L775"
                    return { _0 : null, _1 : stdgo._internal.internal.profile.Profile__errunrecognized._errUnrecognized };
                } else if (__value__ == (("resolution" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L778"
                    return { _0 : null, _1 : stdgo._internal.internal.profile.Profile__errunrecognized._errUnrecognized };
                } else if (__value__ == (("discarded samples" : stdgo.GoString))) {} else {
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L781"
                    return { _0 : null, _1 : stdgo._internal.internal.profile.Profile__errunrecognized._errUnrecognized };
                };
            };
        };
        var _locs = (({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>) : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L786"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L787"
            if (!stdgo._internal.internal.profile.Profile__isspaceorcomment._isSpaceOrComment(_l?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L788"
                {
                    _l = stdgo._internal.strings.Strings_trimspace.trimSpace(_l?.__copy__())?.__copy__();
                    if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_l?.__copy__(), ("---" : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L789"
                        break;
                    };
                };
                var __tmp__ = stdgo._internal.internal.profile.Profile__parsecontentionsample._parseContentionSample(_l?.__copy__(), (@:checkr _p ?? throw "null pointer dereference").period, _cpuHz), _value:stdgo.Slice<stdgo.GoInt64> = __tmp__._0, _addrs:stdgo.Slice<stdgo.GoUInt64> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L792"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L793"
                    return { _0 : null, _1 : _err };
                };
                var _sloc:stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>);
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L796"
                for (__0 => _addr in _addrs) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L799"
                    _addr--;
                    var _loc = (_locs[_addr] ?? (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>));
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L801"
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
                (@:checkr _p ?? throw "null pointer dereference").sample = ((@:checkr _p ?? throw "null pointer dereference").sample.__append__((stdgo.Go.setRef(({ value : _value, location : _sloc } : stdgo._internal.internal.profile.Profile_sample.Sample)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>)) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>>);
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L816"
            {
                {
                    var __tmp__ = _r.readString((10 : stdgo.GoUInt8));
                    _l = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L817"
                    if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L818"
                        return { _0 : null, _1 : _err };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L820"
                    if (_l == ((stdgo.Go.str() : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L821"
                        break;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L826"
        {
            _err = stdgo._internal.internal.profile.Profile__parseadditionalsections._parseAdditionalSections(_l?.__copy__(), _r, _p);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L827"
                return { _0 : null, _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L830"
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
