package _internal.internal.profile;
function _parseCPU(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>; var _1 : stdgo.Error; } {
        var _parse:stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoUInt64; var _1 : stdgo.Slice<stdgo.GoUInt8>; } = null;
        var __0:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __2:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __3:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __4:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var _n5 = __4, _n4 = __3, _n3 = __2, _n2 = __1, _n1 = __0;
        for (__key__ => __value__ in _internal.internal.profile.Profile__cpuInts._cpuInts) {
            _parse = __value__;
            var _tmp:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __tmp__ = _parse(_b);
                _n1 = __tmp__._0;
                _tmp = __tmp__._1;
            };
            {
                var __tmp__ = _parse(_tmp);
                _n2 = __tmp__._0;
                _tmp = __tmp__._1;
            };
            {
                var __tmp__ = _parse(_tmp);
                _n3 = __tmp__._0;
                _tmp = __tmp__._1;
            };
            {
                var __tmp__ = _parse(_tmp);
                _n4 = __tmp__._0;
                _tmp = __tmp__._1;
            };
            {
                var __tmp__ = _parse(_tmp);
                _n5 = __tmp__._0;
                _tmp = __tmp__._1;
            };
            if ((((((_tmp != null && _n1 == ((0i64 : stdgo.GoUInt64)) : Bool) && _n2 == ((3i64 : stdgo.GoUInt64)) : Bool) && _n3 == ((0i64 : stdgo.GoUInt64)) : Bool) && (_n4 > (0i64 : stdgo.GoUInt64) : Bool) : Bool) && (_n5 == (0i64 : stdgo.GoUInt64)) : Bool)) {
                _b = _tmp;
                return _internal.internal.profile.Profile__cpuProfile._cpuProfile(_b, (_n4 : stdgo.GoInt64), _parse);
            };
        };
        return { _0 : null, _1 : _internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
    }
