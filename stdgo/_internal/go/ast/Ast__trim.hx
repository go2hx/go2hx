package stdgo._internal.go.ast;
function _trim(_s:stdgo.GoString):stdgo.GoString {
        var _lines = stdgo._internal.strings.Strings_split.split(_s?.__copy__(), ("\n" : stdgo.GoString));
        var _i = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/ast/print_test.go#L75"
        for (__0 => _line in _lines) {
            _line = stdgo._internal.strings.Strings_trimspace.trimSpace(_line?.__copy__())?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/go/ast/print_test.go#L77"
            if (_line != ((stdgo.Go.str() : stdgo.GoString))) {
                _lines[(_i : stdgo.GoInt)] = _line?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/go/ast/print_test.go#L79"
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/print_test.go#L82"
        return stdgo._internal.strings.Strings_join.join((_lines.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoString>), ("\n" : stdgo.GoString))?.__copy__();
    }
