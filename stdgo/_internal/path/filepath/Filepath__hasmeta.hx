package stdgo._internal.path.filepath;
function _hasMeta(_path:stdgo.GoString):Bool {
        var _magicChars = (("*?[" : stdgo.GoString) : stdgo.GoString);
        if (true) {
            _magicChars = ("*?[\\" : stdgo.GoString);
        };
        return stdgo._internal.strings.Strings_containsany.containsAny(_path?.__copy__(), _magicChars?.__copy__());
    }
