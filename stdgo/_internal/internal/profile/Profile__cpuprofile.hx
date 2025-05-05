package stdgo._internal.internal.profile;
function _cpuProfile(_b:stdgo.Slice<stdgo.GoUInt8>, _period:stdgo.GoInt64, _parse:stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoUInt64; var _1 : stdgo.Slice<stdgo.GoUInt8>; }):{ var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>; var _1 : stdgo.Error; } {
        var _p = (stdgo.Go.setRef(({ period : (_period * (1000i64 : stdgo.GoInt64) : stdgo.GoInt64), periodType : (stdgo.Go.setRef(({ type : ("cpu" : stdgo.GoString), unit : ("nanoseconds" : stdgo.GoString) } : stdgo._internal.internal.profile.Profile_valuetype_.ValueType_)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>), sampleType : (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>>(2, 2, ...[({ type : ("samples" : stdgo.GoString), unit : ("count" : stdgo.GoString) } : stdgo._internal.internal.profile.Profile_valuetype_.ValueType_), ({ type : ("cpu" : stdgo.GoString), unit : ("nanoseconds" : stdgo.GoString) } : stdgo._internal.internal.profile.Profile_valuetype_.ValueType_)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>>) } : stdgo._internal.internal.profile.Profile_profile.Profile)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L369"
        {
            {
                var __tmp__ = stdgo._internal.internal.profile.Profile__parsecpusamples._parseCPUSamples(_b, _parse, true, _p);
                _b = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._2;
            };
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L370"
                return { _0 : null, _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L379"
        if (((((@:checkr _p ?? throw "null pointer dereference").sample.length) > (1 : stdgo.GoInt) : Bool) && (((@:checkr (@:checkr _p ?? throw "null pointer dereference").sample[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").location.length) > (1 : stdgo.GoInt) : Bool) : Bool)) {
            var _allSame = (true : Bool);
            var _id1 = ((@:checkr (@:checkr (@:checkr _p ?? throw "null pointer dereference").sample[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").location[(1 : stdgo.GoInt)] ?? throw "null pointer dereference").address : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L382"
            for (__0 => _s in (@:checkr _p ?? throw "null pointer dereference").sample) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L383"
                if (((((@:checkr _s ?? throw "null pointer dereference").location.length) < (2 : stdgo.GoInt) : Bool) || (_id1 != (@:checkr (@:checkr _s ?? throw "null pointer dereference").location[(1 : stdgo.GoInt)] ?? throw "null pointer dereference").address) : Bool)) {
                    _allSame = false;
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L385"
                    break;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L388"
            if (_allSame) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L389"
                for (__1 => _s in (@:checkr _p ?? throw "null pointer dereference").sample) {
                    (@:checkr _s ?? throw "null pointer dereference").location = (((@:checkr _s ?? throw "null pointer dereference").location.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>).__append__(...(((@:checkr _s ?? throw "null pointer dereference").location.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>) : Array<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>)) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L395"
        {
            var _err = (_p.parseMemoryMap(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newbuffer.newBuffer(_b))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L396"
                return { _0 : null, _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L398"
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
