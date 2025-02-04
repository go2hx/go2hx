package stdgo._internal.regexp;
function matchReader(_pattern:stdgo.GoString, _r:stdgo._internal.io.Io_runereader.RuneReader):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _matched = false, _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile(_pattern?.__copy__()), _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return {
                final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err };
                _matched = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : @:check2r _re.matchReader(_r), _1 : (null : stdgo.Error) };
            _matched = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
