package stdgo._internal.mime;
function _initMimeUnix():Void {
        //"file:///home/runner/.go/go1.21.3/src/mime/type_unix.go#L106"
        for (__0 => _filename in stdgo._internal.mime.Mime__mimeglobs._mimeGlobs) {
            //"file:///home/runner/.go/go1.21.3/src/mime/type_unix.go#L107"
            {
                var _err = (stdgo._internal.mime.Mime__loadmimeglobsfile._loadMimeGlobsFile(_filename?.__copy__()) : stdgo.Error);
                if (_err == null) {
                    //"file:///home/runner/.go/go1.21.3/src/mime/type_unix.go#L108"
                    return;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/type_unix.go#L113"
        for (__1 => _filename in stdgo._internal.mime.Mime__typefiles._typeFiles) {
            //"file:///home/runner/.go/go1.21.3/src/mime/type_unix.go#L114"
            stdgo._internal.mime.Mime__loadmimefile._loadMimeFile(_filename?.__copy__());
        };
    }
