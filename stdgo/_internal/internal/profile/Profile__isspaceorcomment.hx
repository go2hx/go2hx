package stdgo._internal.internal.profile;
function _isSpaceOrComment(_line:stdgo.GoString):Bool {
        var _trimmed = (stdgo._internal.strings.Strings_trimspace.trimSpace(_line?.__copy__())?.__copy__() : stdgo.GoString);
        return ((_trimmed.length == (0 : stdgo.GoInt)) || (_trimmed[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) : Bool);
    }
