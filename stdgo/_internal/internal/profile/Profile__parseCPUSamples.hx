package stdgo._internal.internal.profile;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.lazyregexp.Lazyregexp;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.math.Math;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.sort.Sort;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.time.Time;
import stdgo._internal.regexp.Regexp;
function _parseCPUSamples(_b:stdgo.Slice<stdgo.GoUInt8>, _parse:stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoUInt64; var _1 : stdgo.Slice<stdgo.GoUInt8>; }, _adjust:Bool, _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>; var _2 : stdgo.Error; } {
        var _locs = (({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>) : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>);
        while (((_b.length) > (0 : stdgo.GoInt) : Bool)) {
            var __0:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var _nstk = __1, _count = __0;
            {
                var __tmp__ = _parse(_b);
                _count = @:tmpset0 __tmp__._0;
                _b = @:tmpset0 __tmp__._1;
            };
            {
                var __tmp__ = _parse(_b);
                _nstk = @:tmpset0 __tmp__._0;
                _b = @:tmpset0 __tmp__._1;
            };
            if (((_b == null) || (_nstk > (((_b.length) / (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64) : Bool) : Bool)) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>), _2 : stdgo._internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
            };
            var _sloc:stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>);
            var _addrs = (new stdgo.Slice<stdgo.GoUInt64>((_nstk : stdgo.GoInt).toBasic(), 0).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (_nstk : stdgo.GoInt) : Bool)) {
                    {
                        var __tmp__ = _parse(_b);
                        _addrs[(_i : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                        _b = @:tmpset0 __tmp__._1;
                    };
                    _i++;
                };
            };
            if (((_count == ((0i64 : stdgo.GoUInt64)) && _nstk == ((1i64 : stdgo.GoUInt64)) : Bool) && (_addrs[(0 : stdgo.GoInt)] == (0i64 : stdgo.GoUInt64)) : Bool)) {
                break;
            };
            for (_i => _addr in _addrs) {
                if ((_adjust && (_i > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _addr--;
                };
                var _loc = (_locs[_addr] ?? (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>));
                if ((_loc == null || (_loc : Dynamic).__nil__)) {
                    _loc = (stdgo.Go.setRef(({ address : _addr } : stdgo._internal.internal.profile.Profile_Location.Location)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>);
                    _locs[_addr] = _loc;
                    (@:checkr _p ?? throw "null pointer dereference").location = ((@:checkr _p ?? throw "null pointer dereference").location.__append__(_loc));
                };
                _sloc = (_sloc.__append__(_loc));
            };
            (@:checkr _p ?? throw "null pointer dereference").sample = ((@:checkr _p ?? throw "null pointer dereference").sample.__append__((stdgo.Go.setRef(({ value : (new stdgo.Slice<stdgo.GoInt64>(2, 2, ...[(_count : stdgo.GoInt64), ((_count : stdgo.GoInt64) * (@:checkr _p ?? throw "null pointer dereference").period : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>), location : _sloc } : stdgo._internal.internal.profile.Profile_Sample.Sample)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Sample.Sample>)));
        };
        return { _0 : _b, _1 : _locs, _2 : (null : stdgo.Error) };
    }
