package stdgo._internal.encoding.json;
function benchmarkNumberIsValidRegexp(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _jsonNumberRegexp = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(("^-?(?:0|[1-9]\\d*)(?:\\.\\d+)?(?:[eE][+-]?\\d+)?$" : stdgo.GoString));
        var _s = (("-61657.61667E+61673" : stdgo.GoString) : stdgo.GoString);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                @:check2r _jsonNumberRegexp.matchString(_s.__copy__());
                _i++;
            };
        };
    }
