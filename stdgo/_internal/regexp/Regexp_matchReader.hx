package stdgo._internal.regexp;
function matchReader(_pattern:stdgo.GoString, _r:stdgo._internal.io.Io_RuneReader.RuneReader):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile(_pattern?.__copy__()), _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _matched = false, _1 : _err };
        };
        return { _0 : _matched = _re.matchReader(_r), _1 : _err = (null : stdgo.Error) };
    }
