package stdgo._internal.regexp;
function match(_pattern:stdgo.GoString, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile(_pattern?.__copy__()), _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : false, _1 : _err };
        };
        return { _0 : _re.match(_b), _1 : (null : stdgo.Error) };
    }