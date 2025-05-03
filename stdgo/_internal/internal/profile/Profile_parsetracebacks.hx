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
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L267"
        while (true) {
            var __tmp__ = _r.readString((10 : stdgo.GoUInt8)), _l:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L269"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L270"
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L271"
                    return { _0 : null, _1 : _err };
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L273"
                if (_l == ((stdgo.Go.str() : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L274"
                    break;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L277"
            if (stdgo._internal.internal.profile.Profile__sectiontrigger._sectionTrigger(_l?.__copy__()) == ((1 : stdgo._internal.internal.profile.Profile_t_sectiontype.T_sectionType))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L278"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L280"
            {
                var __tmp__ = stdgo._internal.internal.profile.Profile__extracthexaddresses._extractHexAddresses(_l?.__copy__()), _s:stdgo.Slice<stdgo.GoString> = __tmp__._0, _addrs:stdgo.Slice<stdgo.GoUInt64> = __tmp__._1;
                if (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L281"
                    for (__0 => _addr in _addrs) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L284"
                        _addr--;
                        var _loc = (_locs[_addr] ?? (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>));
                        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L286"
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
                    _sources = (_sources.__append__(...(_s : Array<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>);
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L298"
                    if ((((_sources.length) > (0 : stdgo.GoInt) : Bool) || ((_sloc.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L299"
                        stdgo._internal.internal.profile.Profile__addtracebacksample._addTracebackSample(_sloc, _sources, _p);
                        {
                            final __tmp__0 = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>);
                            final __tmp__1 = (null : stdgo.Slice<stdgo.GoString>);
                            _sloc = @:binopAssign __tmp__0;
                            _sources = @:binopAssign __tmp__1;
                        };
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L306"
        if ((((_sources.length) > (0 : stdgo.GoInt) : Bool) || ((_sloc.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L307"
            stdgo._internal.internal.profile.Profile__addtracebacksample._addTracebackSample(_sloc, _sources, _p);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L310"
        {
            var _err = (_p.parseMemoryMap(stdgo.Go.asInterface(_r)) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L311"
                return { _0 : null, _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L313"
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
