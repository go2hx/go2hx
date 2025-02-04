package stdgo._internal.internal.profile;
function _getString(_strings:stdgo.Slice<stdgo.GoString>, _strng:stdgo.Pointer<stdgo.GoInt64>, _err:stdgo.Error):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        if (_err != null) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
        };
        var _s = (_strng.value : stdgo.GoInt);
        if (((_s < (0 : stdgo.GoInt) : Bool) || (_s >= (_strings.length) : Bool) : Bool)) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.internal.profile.Profile__errmalformed._errMalformed };
        };
        _strng.value = (0i64 : stdgo.GoInt64);
        return { _0 : _strings[(_s : stdgo.GoInt)]?.__copy__(), _1 : (null : stdgo.Error) };
    }
