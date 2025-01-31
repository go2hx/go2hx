package stdgo._internal.internal.profile;
import stdgo._internal.errors.Errors;
import _internal.internal.lazyregexp.Lazyregexp;
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
function _parseGoCount(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>; var _1 : stdgo.Error; } {
        var _r = stdgo._internal.bytes.Bytes_newBuffer.newBuffer(_b);
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
            if (!stdgo._internal.internal.profile.Profile__isSpaceOrComment._isSpaceOrComment(_line?.__copy__())) {
                break;
            };
        };
        var _m = @:check2r stdgo._internal.internal.profile.Profile__countStartRE._countStartRE.findStringSubmatch(_line?.__copy__());
        if (_m == null) {
            return { _0 : null, _1 : stdgo._internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
        };
        var _profileType = (_m[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
        var _p = (stdgo.Go.setRef(({ periodType : (stdgo.Go.setRef(({ type : _profileType?.__copy__(), unit : ("count" : stdgo.GoString) } : stdgo._internal.internal.profile.Profile_ValueType_.ValueType_)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_>), period : (1i64 : stdgo.GoInt64), sampleType : (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_>>(1, 1, ...[({ type : _profileType?.__copy__(), unit : ("count" : stdgo.GoString) } : stdgo._internal.internal.profile.Profile_ValueType_.ValueType_)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_>>) } : stdgo._internal.internal.profile.Profile_Profile.Profile)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        var _locations = (({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>) : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>);
        while (true) {
            {
                var __tmp__ = @:check2r _r.readString((10 : stdgo.GoUInt8));
                _line = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF))) {
                    break;
                };
                return { _0 : null, _1 : _err };
            };
            if (stdgo._internal.internal.profile.Profile__isSpaceOrComment._isSpaceOrComment(_line?.__copy__())) {
                continue;
            };
            if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_line?.__copy__(), ("---" : stdgo.GoString))) {
                break;
            };
            var _m = @:check2r stdgo._internal.internal.profile.Profile__countRE._countRE.findStringSubmatch(_line?.__copy__());
            if (_m == null) {
                return { _0 : null, _1 : stdgo._internal.internal.profile.Profile__errMalformed._errMalformed };
            };
            var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_m[(1 : stdgo.GoInt)]?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : stdgo._internal.internal.profile.Profile__errMalformed._errMalformed };
            };
            var _fields = stdgo._internal.strings.Strings_fields.fields(_m[(2 : stdgo.GoInt)]?.__copy__());
            var _locs = (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>((0 : stdgo.GoInt).toBasic(), (_fields.length)) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>);
            for (__0 => _stk in _fields) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_stk?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt)), _addr:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : stdgo._internal.internal.profile.Profile__errMalformed._errMalformed };
                };
                _addr--;
                var _loc = (_locations[_addr] ?? (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>));
                if ((_loc == null || (_loc : Dynamic).__nil__)) {
                    _loc = (stdgo.Go.setRef(({ address : _addr } : stdgo._internal.internal.profile.Profile_Location.Location)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>);
                    _locations[_addr] = _loc;
                    (@:checkr _p ?? throw "null pointer dereference").location = ((@:checkr _p ?? throw "null pointer dereference").location.__append__(_loc));
                };
                _locs = (_locs.__append__(_loc));
            };
            (@:checkr _p ?? throw "null pointer dereference").sample = ((@:checkr _p ?? throw "null pointer dereference").sample.__append__((stdgo.Go.setRef(({ location : _locs, value : (new stdgo.Slice<stdgo.GoInt64>(1, 1, ...[_n]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>) } : stdgo._internal.internal.profile.Profile_Sample.Sample)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Sample.Sample>)));
        };
        {
            _err = stdgo._internal.internal.profile.Profile__parseAdditionalSections._parseAdditionalSections(stdgo._internal.strings.Strings_trimSpace.trimSpace(_line?.__copy__())?.__copy__(), _r, _p);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
