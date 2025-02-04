package stdgo._internal.mime;
function _closeWord(_buf:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):Void {
        @:check2r _buf.writeString(("?=" : stdgo.GoString));
    }
