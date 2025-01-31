package stdgo.mime;
final bEncoding : WordEncoder = stdgo._internal.mime.Mime_bEncoding.bEncoding;
final qEncoding : WordEncoder = stdgo._internal.mime.Mime_qEncoding.qEncoding;
var errInvalidMediaParameter(get, set) : stdgo.Error;
private function get_errInvalidMediaParameter():stdgo.Error return stdgo._internal.mime.Mime_errInvalidMediaParameter.errInvalidMediaParameter;
private function set_errInvalidMediaParameter(v:stdgo.Error):stdgo.Error {
        stdgo._internal.mime.Mime_errInvalidMediaParameter.errInvalidMediaParameter = (v : stdgo.Error);
        return v;
    }
@:structInit @:using(stdgo.mime.Mime.WordDecoder_static_extension) abstract WordDecoder(stdgo._internal.mime.Mime_WordDecoder.WordDecoder) from stdgo._internal.mime.Mime_WordDecoder.WordDecoder to stdgo._internal.mime.Mime_WordDecoder.WordDecoder {
    public var charsetReader(get, set) : (stdgo.GoString, stdgo._internal.io.Io_Reader.Reader) -> { var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo.Error; };
    function get_charsetReader():(stdgo.GoString, stdgo._internal.io.Io_Reader.Reader) -> { var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo.Error; } return (_0, _1) -> this.charsetReader(_0, _1);
    function set_charsetReader(v:(stdgo.GoString, stdgo._internal.io.Io_Reader.Reader) -> { var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo.Error; }):(stdgo.GoString, stdgo._internal.io.Io_Reader.Reader) -> { var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo.Error; } {
        this.charsetReader = v;
        return v;
    }
    public function new(?charsetReader:(stdgo.GoString, stdgo._internal.io.Io_Reader.Reader) -> { var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo.Error; }) this = new stdgo._internal.mime.Mime_WordDecoder.WordDecoder(charsetReader);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef WordEncoder = stdgo._internal.mime.Mime_WordEncoder.WordEncoder;
typedef WordDecoderPointer = stdgo._internal.mime.Mime_WordDecoderPointer.WordDecoderPointer;
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
typedef WordEncoderPointer = stdgo._internal.mime.Mime_WordEncoderPointer.WordEncoderPointer;
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
/**
    Package mime implements parts of the MIME spec.
**/
class Mime {
    /**
        FormatMediaType serializes mediatype t and the parameters
        param as a media type conforming to RFC 2045 and RFC 2616.
        The type and parameter names are written in lower-case.
        When any of the arguments result in a standard violation then
        FormatMediaType returns the empty string.
    **/
    static public inline function formatMediaType(_t:String, _param:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):String {
        final _t = (_t : stdgo.GoString);
        final _param = (_param : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        return stdgo._internal.mime.Mime_formatMediaType.formatMediaType(_t, _param);
    }
    /**
        ParseMediaType parses a media type value and any optional
        parameters, per RFC 1521.  Media types are the values in
        Content-Type and Content-Disposition headers (RFC 2183).
        On success, ParseMediaType returns the media type converted
        to lowercase and trimmed of white space and a non-nil map.
        If there is an error parsing the optional parameter,
        the media type will be returned along with the error
        ErrInvalidMediaParameter.
        The returned map, params, maps from the lowercase
        attribute to the attribute value with its case preserved.
    **/
    static public inline function parseMediaType(_v:String):stdgo.Tuple.Tuple3<String, stdgo.GoMap<stdgo.GoString, stdgo.GoString>, stdgo.Error> {
        final _v = (_v : stdgo.GoString);
        return {
            final obj = stdgo._internal.mime.Mime_parseMediaType.parseMediaType(_v);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        TypeByExtension returns the MIME type associated with the file extension ext.
        The extension ext should begin with a leading dot, as in ".html".
        When ext has no associated type, TypeByExtension returns "".
        
        Extensions are looked up first case-sensitively, then case-insensitively.
        
        The built-in table is small but on unix it is augmented by the local
        system's MIME-info database or mime.types file(s) if available under one or
        more of these names:
        
        	/usr/local/share/mime/globs2
        	/usr/share/mime/globs2
        	/etc/mime.types
        	/etc/apache2/mime.types
        	/etc/apache/mime.types
        
        On Windows, MIME types are extracted from the registry.
        
        Text types have the charset parameter set to "utf-8" by default.
    **/
    static public inline function typeByExtension(_ext:String):String {
        final _ext = (_ext : stdgo.GoString);
        return stdgo._internal.mime.Mime_typeByExtension.typeByExtension(_ext);
    }
    /**
        ExtensionsByType returns the extensions known to be associated with the MIME
        type typ. The returned extensions will each begin with a leading dot, as in
        ".html". When typ has no associated extensions, ExtensionsByType returns an
        nil slice.
    **/
    static public inline function extensionsByType(_typ:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _typ = (_typ : stdgo.GoString);
        return {
            final obj = stdgo._internal.mime.Mime_extensionsByType.extensionsByType(_typ);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        AddExtensionType sets the MIME type associated with
        the extension ext to typ. The extension should begin with
        a leading dot, as in ".html".
    **/
    static public inline function addExtensionType(_ext:String, _typ:String):stdgo.Error {
        final _ext = (_ext : stdgo.GoString);
        final _typ = (_typ : stdgo.GoString);
        return stdgo._internal.mime.Mime_addExtensionType.addExtensionType(_ext, _typ);
    }
}
