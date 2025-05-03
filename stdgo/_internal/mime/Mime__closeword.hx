package stdgo._internal.mime;
function _closeWord(_buf:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):Void {
        //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L170"
        _buf.writeString(("?=" : stdgo.GoString));
    }
