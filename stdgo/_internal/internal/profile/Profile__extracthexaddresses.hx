package stdgo._internal.internal.profile;
function _extractHexAddresses(_s:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.GoUInt64>; } {
        var _hexStrings = stdgo._internal.internal.profile.Profile__hexnumberre._hexNumberRE.findAllString(_s?.__copy__(), (-1 : stdgo.GoInt));
        var _ids:stdgo.Slice<stdgo.GoUInt64> = (null : stdgo.Slice<stdgo.GoUInt64>);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L634"
        for (__0 => _s in _hexStrings) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L635"
            {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_s?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt)), _id:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _ids = (_ids.__append__(_id) : stdgo.Slice<stdgo.GoUInt64>);
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L639"
                    throw stdgo.Go.toInterface((("failed to parse hex value:" : stdgo.GoString) + _s?.__copy__() : stdgo.GoString));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L642"
        return { _0 : _hexStrings, _1 : _ids };
    }
