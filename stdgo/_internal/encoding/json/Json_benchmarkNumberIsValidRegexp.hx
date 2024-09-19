package stdgo._internal.encoding.json;
function benchmarkNumberIsValidRegexp(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _jsonNumberRegexp:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("^-?(?:0|[1-9]\\d*)(?:\\.\\d+)?(?:[eE][+-]?\\d+)?$" : stdgo.GoString));
        var _s = ("-61657.61667E+61673" : stdgo.GoString);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _jsonNumberRegexp.matchString(_s?.__copy__());
            });
        };
    }
