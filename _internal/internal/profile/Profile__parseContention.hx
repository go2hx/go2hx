package _internal.internal.profile;
function _parseContention(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>; var _1 : stdgo.Error; } {
        var _r = stdgo._internal.bytes.Bytes_newBuffer.newBuffer(_b);
        var _l:stdgo.GoString = ("" : stdgo.GoString);
        var _err:stdgo.Error = (null : stdgo.Error);
        while (true) {
            {
                var __tmp__ = _r.readString((10 : stdgo.GoUInt8));
                _l = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            if (!_internal.internal.profile.Profile__isSpaceOrComment._isSpaceOrComment(_l?.__copy__())) {
                break;
            };
        };
        if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_l?.__copy__(), ("--- contentionz " : stdgo.GoString))) {
            return _internal.internal.profile.Profile__parseCppContention._parseCppContention(_r);
        } else if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_l?.__copy__(), ("--- mutex:" : stdgo.GoString))) {
            return _internal.internal.profile.Profile__parseCppContention._parseCppContention(_r);
        } else if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_l?.__copy__(), ("--- contention:" : stdgo.GoString))) {
            return _internal.internal.profile.Profile__parseCppContention._parseCppContention(_r);
        };
        return { _0 : null, _1 : _internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
    }