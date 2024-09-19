package _internal.internal.profile;
function _parseCPUSamples(_b:stdgo.Slice<stdgo.GoUInt8>, _parse:stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoUInt64; var _1 : stdgo.Slice<stdgo.GoUInt8>; }, _adjust:Bool, _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>; var _2 : stdgo.Error; } {
        var _locs = ({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<_internal.internal.profile.Profile_Location.Location>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>);
        while (((_b.length) > (0 : stdgo.GoInt) : Bool)) {
            var __0:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var _nstk = __1, _count = __0;
            {
                var __tmp__ = _parse(_b);
                _count = __tmp__._0;
                _b = __tmp__._1;
            };
            {
                var __tmp__ = _parse(_b);
                _nstk = __tmp__._0;
                _b = __tmp__._1;
            };
            if (((_b == null) || (_nstk > (((_b.length) / (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64) : Bool) : Bool)) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>), _2 : _internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
            };
            var _sloc:stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_Location.Location>> = (null : stdgo.Slice<stdgo.Ref<_internal.internal.profile.Profile_Location.Location>>);
            var _addrs = (new stdgo.Slice<stdgo.GoUInt64>((_nstk : stdgo.GoInt).toBasic(), 0).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_nstk : stdgo.GoInt) : Bool), _i++, {
                    {
                        var __tmp__ = _parse(_b);
                        _addrs[(_i : stdgo.GoInt)] = __tmp__._0;
                        _b = __tmp__._1;
                    };
                });
            };
            if (((_count == ((0i64 : stdgo.GoUInt64)) && _nstk == ((1i64 : stdgo.GoUInt64)) : Bool) && (_addrs[(0 : stdgo.GoInt)] == (0i64 : stdgo.GoUInt64)) : Bool)) {
                break;
            };
            for (_i => _addr in _addrs) {
                if ((_adjust && (_i > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _addr--;
                };
                var _loc = (_locs[_addr] ?? (null : stdgo.Ref<_internal.internal.profile.Profile_Location.Location>));
                if (_loc == null || (_loc : Dynamic).__nil__) {
                    _loc = (stdgo.Go.setRef(({ address : _addr } : _internal.internal.profile.Profile_Location.Location)) : stdgo.Ref<_internal.internal.profile.Profile_Location.Location>);
                    _locs[_addr] = _loc;
                    _p.location = (_p.location.__append__(_loc));
                };
                _sloc = (_sloc.__append__(_loc));
            };
            _p.sample = (_p.sample.__append__((stdgo.Go.setRef(({ value : (new stdgo.Slice<stdgo.GoInt64>(2, 2, ...[(_count : stdgo.GoInt64), ((_count : stdgo.GoInt64) * _p.period : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>), location : _sloc } : _internal.internal.profile.Profile_Sample.Sample)) : stdgo.Ref<_internal.internal.profile.Profile_Sample.Sample>)));
        };
        return { _0 : _b, _1 : _locs, _2 : (null : stdgo.Error) };
    }
