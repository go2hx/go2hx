package stdgo._internal.path.filepath;
function _hasMeta(_path:stdgo.GoString):Bool {
        var _magicChars = (("*?[" : stdgo.GoString) : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L365"
        if (true) {
            _magicChars = ("*?[\\" : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/match.go#L368"
        return stdgo._internal.strings.Strings_containsany.containsAny(_path?.__copy__(), _magicChars?.__copy__());
    }
