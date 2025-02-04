package stdgo._internal.path.filepath;
function fromSlash(_path:stdgo.GoString):stdgo.GoString {
        if (true) {
            return _path?.__copy__();
        };
        return stdgo._internal.strings.Strings_replaceall.replaceAll(_path?.__copy__(), ("/" : stdgo.GoString), ((47 : stdgo.GoInt32) : stdgo.GoString))?.__copy__();
    }
