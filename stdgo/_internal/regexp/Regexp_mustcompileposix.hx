package stdgo._internal.regexp;
function mustCompilePOSIX(_str:stdgo.GoString):stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> {
        var __tmp__ = stdgo._internal.regexp.Regexp_compileposix.compilePOSIX(_str?.__copy__()), _regexp:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L329"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L330"
            throw stdgo.Go.toInterface((((("regexp: CompilePOSIX(" : stdgo.GoString) + stdgo._internal.regexp.Regexp__quote._quote(_str?.__copy__())?.__copy__() : stdgo.GoString) + ("): " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/regexp.go#L332"
        return _regexp;
    }
