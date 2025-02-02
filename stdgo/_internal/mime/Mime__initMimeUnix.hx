package stdgo._internal.mime;
function _initMimeUnix():Void {
        for (__0 => _filename in stdgo._internal.mime.Mime__mimeGlobs._mimeGlobs) {
            {
                var _err = (stdgo._internal.mime.Mime__loadMimeGlobsFile._loadMimeGlobsFile(_filename?.__copy__()) : stdgo.Error);
                if (_err == null) {
                    return;
                };
            };
        };
        for (__1 => _filename in stdgo._internal.mime.Mime__typeFiles._typeFiles) {
            stdgo._internal.mime.Mime__loadMimeFile._loadMimeFile(_filename?.__copy__());
        };
    }
