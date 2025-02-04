package stdgo._internal.mime;
function _initMimeForTests():stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        stdgo._internal.mime.Mime__mimeglobs._mimeGlobs = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[(stdgo.Go.str() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.mime.Mime__typefiles._typeFiles = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("testdata/test.types" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        return ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            x.set((".T1" : stdgo.GoString), ("application/test" : stdgo.GoString));
x.set((".t2" : stdgo.GoString), ("text/test; charset=utf-8" : stdgo.GoString));
x.set((".png" : stdgo.GoString), ("image/png" : stdgo.GoString));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
    }
