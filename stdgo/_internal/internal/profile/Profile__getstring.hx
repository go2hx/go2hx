package stdgo._internal.internal.profile;
function _getString(_strings:stdgo.Slice<stdgo.GoString>, _strng:stdgo.Pointer<stdgo.GoInt64>, _err:stdgo.Error):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L473"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L474"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
        };
        var _s = (_strng.value : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L477"
        if (((_s < (0 : stdgo.GoInt) : Bool) || (_s >= (_strings.length) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L478"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.internal.profile.Profile__errmalformed._errMalformed };
        };
        _strng.value = (0i64 : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L481"
        return { _0 : _strings[(_s : stdgo.GoInt)]?.__copy__(), _1 : (null : stdgo.Error) };
    }
