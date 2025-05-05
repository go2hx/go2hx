package stdgo._internal.html.template;
function _normalizeEscFn(_e:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L376"
        {
            var _norm = ((stdgo._internal.html.template.Template__equivescapers._equivEscapers[_e] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_norm != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L377"
                return _norm?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/escape.go#L379"
        return _e?.__copy__();
    }
