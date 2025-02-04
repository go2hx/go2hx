package stdgo._internal.encoding.xml;
@:structInit @:using(stdgo._internal.encoding.xml.Xml_t_printer_static_extension.T_printer_static_extension) class T_printer {
    public var _w : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
    public var _encoder : stdgo.Ref<stdgo._internal.encoding.xml.Xml_encoder.Encoder> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_encoder.Encoder>);
    public var _seq : stdgo.GoInt = 0;
    public var _indent : stdgo.GoString = "";
    public var _prefix : stdgo.GoString = "";
    public var _depth : stdgo.GoInt = 0;
    public var _indentedIn : Bool = false;
    public var _putNewline : Bool = false;
    public var _attrNS : stdgo.GoMap<stdgo.GoString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
    public var _attrPrefix : stdgo.GoMap<stdgo.GoString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
    public var _prefixes : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _tags : stdgo.Slice<stdgo._internal.encoding.xml.Xml_name.Name> = (null : stdgo.Slice<stdgo._internal.encoding.xml.Xml_name.Name>);
    public var _closed : Bool = false;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_w:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>, ?_encoder:stdgo.Ref<stdgo._internal.encoding.xml.Xml_encoder.Encoder>, ?_seq:stdgo.GoInt, ?_indent:stdgo.GoString, ?_prefix:stdgo.GoString, ?_depth:stdgo.GoInt, ?_indentedIn:Bool, ?_putNewline:Bool, ?_attrNS:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?_attrPrefix:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?_prefixes:stdgo.Slice<stdgo.GoString>, ?_tags:stdgo.Slice<stdgo._internal.encoding.xml.Xml_name.Name>, ?_closed:Bool, ?_err:stdgo.Error) {
        if (_w != null) this._w = _w;
        if (_encoder != null) this._encoder = _encoder;
        if (_seq != null) this._seq = _seq;
        if (_indent != null) this._indent = _indent;
        if (_prefix != null) this._prefix = _prefix;
        if (_depth != null) this._depth = _depth;
        if (_indentedIn != null) this._indentedIn = _indentedIn;
        if (_putNewline != null) this._putNewline = _putNewline;
        if (_attrNS != null) this._attrNS = _attrNS;
        if (_attrPrefix != null) this._attrPrefix = _attrPrefix;
        if (_prefixes != null) this._prefixes = _prefixes;
        if (_tags != null) this._tags = _tags;
        if (_closed != null) this._closed = _closed;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_printer(
_w,
_encoder,
_seq,
_indent,
_prefix,
_depth,
_indentedIn,
_putNewline,
_attrNS,
_attrPrefix,
_prefixes,
_tags,
_closed,
_err);
    }
}
