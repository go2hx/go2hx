package stdgo._internal.mime;
function addExtensionType(_ext:stdgo.GoString, _typ:stdgo.GoString):stdgo.Error {
        if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix(_ext?.__copy__(), ("." : stdgo.GoString))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("mime: extension %q missing leading dot" : stdgo.GoString), stdgo.Go.toInterface(_ext));
        };
        @:check2 stdgo._internal.mime.Mime__once._once.do_(stdgo._internal.mime.Mime__initmime._initMime);
        return stdgo._internal.mime.Mime__setextensiontype._setExtensionType(_ext?.__copy__(), _typ?.__copy__());
    }
