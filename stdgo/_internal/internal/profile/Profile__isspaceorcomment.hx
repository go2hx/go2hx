package stdgo._internal.internal.profile;
function _isSpaceOrComment(_line:stdgo.GoString):Bool {
        var _trimmed = (stdgo._internal.strings.Strings_trimspace.trimSpace(_line?.__copy__())?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L52"
        return ((_trimmed.length == (0 : stdgo.GoInt)) || (_trimmed[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) : Bool);
    }
