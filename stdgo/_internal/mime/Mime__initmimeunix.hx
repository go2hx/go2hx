package stdgo._internal.mime;
function _initMimeUnix():Void {
        for (__0 => _filename in stdgo._internal.mime.Mime__mimeglobs._mimeGlobs) {
            {
                var _err = (stdgo._internal.mime.Mime__loadmimeglobsfile._loadMimeGlobsFile(_filename?.__copy__()) : stdgo.Error);
                if (_err == null) {
                    return;
                };
            };
        };
        for (__1 => _filename in stdgo._internal.mime.Mime__typefiles._typeFiles) {
            stdgo._internal.mime.Mime__loadmimefile._loadMimeFile(_filename?.__copy__());
        };
    }
