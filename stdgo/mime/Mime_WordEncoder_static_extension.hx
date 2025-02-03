package stdgo.mime;
class WordEncoder_static_extension {
    static public function _splitWord(_e:WordEncoder, _buf:stdgo._internal.strings.Strings_Builder.Builder, _charset:String):Void {
        final _buf = (_buf : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        final _charset = (_charset : stdgo.GoString);
        stdgo._internal.mime.Mime_WordEncoder_static_extension.WordEncoder_static_extension._splitWord(_e, _buf, _charset);
    }
    static public function _openWord(_e:WordEncoder, _buf:stdgo._internal.strings.Strings_Builder.Builder, _charset:String):Void {
        final _buf = (_buf : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        final _charset = (_charset : stdgo.GoString);
        stdgo._internal.mime.Mime_WordEncoder_static_extension.WordEncoder_static_extension._openWord(_e, _buf, _charset);
    }
    static public function _qEncode(_e:WordEncoder, _buf:stdgo._internal.strings.Strings_Builder.Builder, _charset:String, _s:String):Void {
        final _buf = (_buf : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        final _charset = (_charset : stdgo.GoString);
        final _s = (_s : stdgo.GoString);
        stdgo._internal.mime.Mime_WordEncoder_static_extension.WordEncoder_static_extension._qEncode(_e, _buf, _charset, _s);
    }
    static public function _bEncode(_e:WordEncoder, _buf:stdgo._internal.strings.Strings_Builder.Builder, _charset:String, _s:String):Void {
        final _buf = (_buf : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        final _charset = (_charset : stdgo.GoString);
        final _s = (_s : stdgo.GoString);
        stdgo._internal.mime.Mime_WordEncoder_static_extension.WordEncoder_static_extension._bEncode(_e, _buf, _charset, _s);
    }
    static public function _encodeWord(_e:WordEncoder, _charset:String, _s:String):String {
        final _charset = (_charset : stdgo.GoString);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.mime.Mime_WordEncoder_static_extension.WordEncoder_static_extension._encodeWord(_e, _charset, _s);
    }
    static public function encode(_e:WordEncoder, _charset:String, _s:String):String {
        final _charset = (_charset : stdgo.GoString);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.mime.Mime_WordEncoder_static_extension.WordEncoder_static_extension.encode(_e, _charset, _s);
    }
}
