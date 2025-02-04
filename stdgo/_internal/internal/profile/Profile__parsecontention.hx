package stdgo._internal.internal.profile;
function _parseContention(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>; var _1 : stdgo.Error; } {
        var _r = stdgo._internal.bytes.Bytes_newbuffer.newBuffer(_b);
        var _l:stdgo.GoString = ("" : stdgo.GoString);
        var _err:stdgo.Error = (null : stdgo.Error);
        while (true) {
            {
                var __tmp__ = @:check2r _r.readString((10 : stdgo.GoUInt8));
                _l = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            if (!stdgo._internal.internal.profile.Profile__isspaceorcomment._isSpaceOrComment(_l?.__copy__())) {
                break;
            };
        };
        if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_l?.__copy__(), ("--- contentionz " : stdgo.GoString))) {
            return stdgo._internal.internal.profile.Profile__parsecppcontention._parseCppContention(_r);
        } else if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_l?.__copy__(), ("--- mutex:" : stdgo.GoString))) {
            return stdgo._internal.internal.profile.Profile__parsecppcontention._parseCppContention(_r);
        } else if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_l?.__copy__(), ("--- contention:" : stdgo.GoString))) {
            return stdgo._internal.internal.profile.Profile__parsecppcontention._parseCppContention(_r);
        };
        return { _0 : null, _1 : stdgo._internal.internal.profile.Profile__errunrecognized._errUnrecognized };
    }
