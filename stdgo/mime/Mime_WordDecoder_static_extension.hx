package stdgo.mime;
class WordDecoder_static_extension {
    static public function _convert(_d:WordDecoder, _buf:stdgo._internal.strings.Strings_Builder.Builder, _charset:String, _content:Array<std.UInt>):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.mime.Mime_WordDecoder.WordDecoder>);
        final _buf = (_buf : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        final _charset = (_charset : stdgo.GoString);
        final _content = ([for (i in _content) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.mime.Mime_WordDecoder_static_extension.WordDecoder_static_extension._convert(_d, _buf, _charset, _content);
    }
    static public function decodeHeader(_d:WordDecoder, _header:String):stdgo.Tuple<String, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.mime.Mime_WordDecoder.WordDecoder>);
        final _header = (_header : stdgo.GoString);
        return {
            final obj = stdgo._internal.mime.Mime_WordDecoder_static_extension.WordDecoder_static_extension.decodeHeader(_d, _header);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function decode(_d:WordDecoder, _word:String):stdgo.Tuple<String, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.mime.Mime_WordDecoder.WordDecoder>);
        final _word = (_word : stdgo.GoString);
        return {
            final obj = stdgo._internal.mime.Mime_WordDecoder_static_extension.WordDecoder_static_extension.decode(_d, _word);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
