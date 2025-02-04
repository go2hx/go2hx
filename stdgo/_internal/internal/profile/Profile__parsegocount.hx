package stdgo._internal.internal.profile;
function _parseGoCount(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>; var _1 : stdgo.Error; } {
        var _r = stdgo._internal.bytes.Bytes_newbuffer.newBuffer(_b);
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
            if (!stdgo._internal.internal.profile.Profile__isspaceorcomment._isSpaceOrComment(_line?.__copy__())) {
                break;
            };
        };
        var _m = @:check2r stdgo._internal.internal.profile.Profile__countstartre._countStartRE.findStringSubmatch(_line?.__copy__());
        if (_m == null) {
            return { _0 : null, _1 : stdgo._internal.internal.profile.Profile__errunrecognized._errUnrecognized };
        };
        var _profileType = (_m[(1 : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
        var _p = (stdgo.Go.setRef(({ periodType : (stdgo.Go.setRef(({ type : _profileType?.__copy__(), unit : ("count" : stdgo.GoString) } : stdgo._internal.internal.profile.Profile_valuetype_.ValueType_)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>), period : (1i64 : stdgo.GoInt64), sampleType : (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>>(1, 1, ...[({ type : _profileType?.__copy__(), unit : ("count" : stdgo.GoString) } : stdgo._internal.internal.profile.Profile_valuetype_.ValueType_)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_valuetype_.ValueType_>>) } : stdgo._internal.internal.profile.Profile_profile.Profile)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        var _locations = (({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>) : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>);
        while (true) {
            {
                var __tmp__ = @:check2r _r.readString((10 : stdgo.GoUInt8));
                _line = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                    break;
                };
                return { _0 : null, _1 : _err };
            };
            if (stdgo._internal.internal.profile.Profile__isspaceorcomment._isSpaceOrComment(_line?.__copy__())) {
                continue;
            };
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_line?.__copy__(), ("---" : stdgo.GoString))) {
                break;
            };
            var _m = @:check2r stdgo._internal.internal.profile.Profile__countre._countRE.findStringSubmatch(_line?.__copy__());
            if (_m == null) {
                return { _0 : null, _1 : stdgo._internal.internal.profile.Profile__errmalformed._errMalformed };
            };
            var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_m[(1 : stdgo.GoInt)]?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : stdgo._internal.internal.profile.Profile__errmalformed._errMalformed };
            };
            var _fields = stdgo._internal.strings.Strings_fields.fields(_m[(2 : stdgo.GoInt)]?.__copy__());
            var _locs = (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>((0 : stdgo.GoInt).toBasic(), (_fields.length)) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>>);
            for (__0 => _stk in _fields) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_stk?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt)), _addr:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : stdgo._internal.internal.profile.Profile__errmalformed._errMalformed };
                };
                _addr--;
                var _loc = (_locations[_addr] ?? (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>));
                if ((_loc == null || (_loc : Dynamic).__nil__)) {
                    _loc = (stdgo.Go.setRef(({ address : _addr } : stdgo._internal.internal.profile.Profile_location.Location)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>);
                    _locations[_addr] = _loc;
                    (@:checkr _p ?? throw "null pointer dereference").location = ((@:checkr _p ?? throw "null pointer dereference").location.__append__(_loc));
                };
                _locs = (_locs.__append__(_loc));
            };
            (@:checkr _p ?? throw "null pointer dereference").sample = ((@:checkr _p ?? throw "null pointer dereference").sample.__append__((stdgo.Go.setRef(({ location : _locs, value : (new stdgo.Slice<stdgo.GoInt64>(1, 1, ...[_n]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>) } : stdgo._internal.internal.profile.Profile_sample.Sample)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>)));
        };
        {
            _err = stdgo._internal.internal.profile.Profile__parseadditionalsections._parseAdditionalSections(stdgo._internal.strings.Strings_trimspace.trimSpace(_line?.__copy__())?.__copy__(), _r, _p);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
