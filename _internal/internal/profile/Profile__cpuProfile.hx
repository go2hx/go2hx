package _internal.internal.profile;
function _cpuProfile(_b:stdgo.Slice<stdgo.GoUInt8>, _period:stdgo.GoInt64, _parse:stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoUInt64; var _1 : stdgo.Slice<stdgo.GoUInt8>; }):{ var _0 : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>; var _1 : stdgo.Error; } {
        var _p = (stdgo.Go.setRef(({ period : (_period * (1000i64 : stdgo.GoInt64) : stdgo.GoInt64), periodType : (stdgo.Go.setRef(({ type : ("cpu" : stdgo.GoString), unit : ("nanoseconds" : stdgo.GoString) } : _internal.internal.profile.Profile_ValueType_.ValueType_)) : stdgo.Ref<_internal.internal.profile.Profile_ValueType_.ValueType_>), sampleType : (new stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_ValueType_.ValueType_>>(2, 2, ...[({ type : ("samples" : stdgo.GoString), unit : ("count" : stdgo.GoString) } : _internal.internal.profile.Profile_ValueType_.ValueType_), ({ type : ("cpu" : stdgo.GoString), unit : ("nanoseconds" : stdgo.GoString) } : _internal.internal.profile.Profile_ValueType_.ValueType_)]) : stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_ValueType_.ValueType_>>) } : _internal.internal.profile.Profile_Profile.Profile)) : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            {
                var __tmp__ = _internal.internal.profile.Profile__parseCPUSamples._parseCPUSamples(_b, _parse, true, _p);
                _b = __tmp__._0;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        if ((((_p.sample.length) > (1 : stdgo.GoInt) : Bool) && ((_p.sample[(0 : stdgo.GoInt)].location.length) > (1 : stdgo.GoInt) : Bool) : Bool)) {
            var _allSame = (true : Bool);
            var _id1 = (_p.sample[(0 : stdgo.GoInt)].location[(1 : stdgo.GoInt)].address : stdgo.GoUInt64);
            for (__0 => _s in _p.sample) {
                if ((((_s.location.length) < (2 : stdgo.GoInt) : Bool) || (_id1 != _s.location[(1 : stdgo.GoInt)].address) : Bool)) {
                    _allSame = false;
                    break;
                };
            };
            if (_allSame) {
                for (__1 => _s in _p.sample) {
                    _s.location = ((_s.location.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>).__append__(...((_s.location.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>) : Array<stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>)));
                };
            };
        };
        {
            var _err = (_p.parseMemoryMap(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newBuffer.newBuffer(_b))) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }