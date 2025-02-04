package stdgo._internal.html.template;
function _normalizeEscFn(_e:stdgo.GoString):stdgo.GoString {
        {
            var _norm = ((stdgo._internal.html.template.Template__equivescapers._equivEscapers[_e] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_norm != ((stdgo.Go.str() : stdgo.GoString))) {
                return _norm?.__copy__();
            };
        };
        return _e?.__copy__();
    }
