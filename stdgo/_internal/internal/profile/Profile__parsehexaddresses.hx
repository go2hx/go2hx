package stdgo._internal.internal.profile;
function _parseHexAddresses(_s:stdgo.GoString):stdgo.Slice<stdgo.GoUInt64> {
        var __tmp__ = stdgo._internal.internal.profile.Profile__extracthexaddresses._extractHexAddresses(_s?.__copy__()), __0:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ids:stdgo.Slice<stdgo.GoUInt64> = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L649"
        return _ids;
    }
