package stdgo._internal.mime;
function addExtensionType(_ext:stdgo.GoString, _typ:stdgo.GoString):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/mime/type.go#L168"
        if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix(_ext?.__copy__(), ("." : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/mime/type.go#L169"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("mime: extension %q missing leading dot" : stdgo.GoString), stdgo.Go.toInterface(_ext));
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/type.go#L171"
        stdgo._internal.mime.Mime__once._once.do_(stdgo._internal.mime.Mime__initmime._initMime);
        //"file:///home/runner/.go/go1.21.3/src/mime/type.go#L172"
        return stdgo._internal.mime.Mime__setextensiontype._setExtensionType(_ext?.__copy__(), _typ?.__copy__());
    }
