package stdgo._internal.internal.profile;
function _parseContention(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>; var _1 : stdgo.Error; } {
        var _r = stdgo._internal.bytes.Bytes_newbuffer.newBuffer(_b);
        var _l:stdgo.GoString = ("" : stdgo.GoString);
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L687"
        while (true) {
            {
                var __tmp__ = _r.readString((10 : stdgo.GoUInt8));
                _l = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L690"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L691"
                return { _0 : null, _1 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L693"
            if (!stdgo._internal.internal.profile.Profile__isspaceorcomment._isSpaceOrComment(_l?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L694"
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L698"
        if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_l?.__copy__(), ("--- contentionz " : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L699"
            return stdgo._internal.internal.profile.Profile__parsecppcontention._parseCppContention(_r);
        } else if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_l?.__copy__(), ("--- mutex:" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L701"
            return stdgo._internal.internal.profile.Profile__parsecppcontention._parseCppContention(_r);
        } else if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_l?.__copy__(), ("--- contention:" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L703"
            return stdgo._internal.internal.profile.Profile__parsecppcontention._parseCppContention(_r);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L705"
        return { _0 : null, _1 : stdgo._internal.internal.profile.Profile__errunrecognized._errUnrecognized };
    }
