package stdgo._internal.internal.profile;
function _parseCPU(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>; var _1 : stdgo.Error; } {
        var _parse:stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoUInt64; var _1 : stdgo.Slice<stdgo.GoUInt8>; } = null;
        var _n1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _n2:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _n3:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _n4:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _n5:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L339"
        for (__key__ => __value__ in stdgo._internal.internal.profile.Profile__cpuints._cpuInts) {
            _parse = __value__;
            var _tmp:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __tmp__ = _parse(_b);
                _n1 = @:tmpset0 __tmp__._0;
                _tmp = @:tmpset0 __tmp__._1;
            };
            {
                var __tmp__ = _parse(_tmp);
                _n2 = @:tmpset0 __tmp__._0;
                _tmp = @:tmpset0 __tmp__._1;
            };
            {
                var __tmp__ = _parse(_tmp);
                _n3 = @:tmpset0 __tmp__._0;
                _tmp = @:tmpset0 __tmp__._1;
            };
            {
                var __tmp__ = _parse(_tmp);
                _n4 = @:tmpset0 __tmp__._0;
                _tmp = @:tmpset0 __tmp__._1;
            };
            {
                var __tmp__ = _parse(_tmp);
                _n5 = @:tmpset0 __tmp__._0;
                _tmp = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L347"
            if ((((((_tmp != null && _n1 == ((0i64 : stdgo.GoUInt64)) : Bool) && _n2 == ((3i64 : stdgo.GoUInt64)) : Bool) && _n3 == ((0i64 : stdgo.GoUInt64)) : Bool) && (_n4 > (0i64 : stdgo.GoUInt64) : Bool) : Bool) && (_n5 == (0i64 : stdgo.GoUInt64)) : Bool)) {
                _b = _tmp;
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L349"
                return stdgo._internal.internal.profile.Profile__cpuprofile._cpuProfile(_b, (_n4 : stdgo.GoInt64), _parse);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L352"
        return { _0 : null, _1 : stdgo._internal.internal.profile.Profile__errunrecognized._errUnrecognized };
    }
