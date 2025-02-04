package stdgo._internal.encoding.xml;
@:structInit @:using(stdgo._internal.encoding.xml.Xml_decoder_static_extension.Decoder_static_extension) class Decoder {
    public var strict : Bool = false;
    public var autoClose : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var entity : stdgo.GoMap<stdgo.GoString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
    public var charsetReader : (stdgo.GoString, stdgo._internal.io.Io_reader.Reader) -> { var _0 : stdgo._internal.io.Io_reader.Reader; var _1 : stdgo.Error; } = null;
    public var defaultSpace : stdgo.GoString = "";
    public var _r : stdgo._internal.io.Io_bytereader.ByteReader = (null : stdgo._internal.io.Io_bytereader.ByteReader);
    public var _t : stdgo._internal.encoding.xml.Xml_tokenreader.TokenReader = (null : stdgo._internal.encoding.xml.Xml_tokenreader.TokenReader);
    public var _buf : stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
    public var _saved : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = (null : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
    public var _stk : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_stack.T_stack> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_stack.T_stack>);
    public var _free : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_stack.T_stack> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_stack.T_stack>);
    public var _needClose : Bool = false;
    public var _toClose : stdgo._internal.encoding.xml.Xml_name.Name = ({} : stdgo._internal.encoding.xml.Xml_name.Name);
    public var _nextToken : stdgo._internal.encoding.xml.Xml_token.Token = (null : stdgo._internal.encoding.xml.Xml_token.Token);
    public var _nextByte : stdgo.GoInt = 0;
    public var _ns : stdgo.GoMap<stdgo.GoString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _line : stdgo.GoInt = 0;
    public var _linestart : stdgo.GoInt64 = 0;
    public var _offset : stdgo.GoInt64 = 0;
    public var _unmarshalDepth : stdgo.GoInt = 0;
    public function new(?strict:Bool, ?autoClose:stdgo.Slice<stdgo.GoString>, ?entity:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?charsetReader:(stdgo.GoString, stdgo._internal.io.Io_reader.Reader) -> { var _0 : stdgo._internal.io.Io_reader.Reader; var _1 : stdgo.Error; }, ?defaultSpace:stdgo.GoString, ?_r:stdgo._internal.io.Io_bytereader.ByteReader, ?_t:stdgo._internal.encoding.xml.Xml_tokenreader.TokenReader, ?_buf:stdgo._internal.bytes.Bytes_buffer.Buffer, ?_saved:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, ?_stk:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_stack.T_stack>, ?_free:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_stack.T_stack>, ?_needClose:Bool, ?_toClose:stdgo._internal.encoding.xml.Xml_name.Name, ?_nextToken:stdgo._internal.encoding.xml.Xml_token.Token, ?_nextByte:stdgo.GoInt, ?_ns:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?_err:stdgo.Error, ?_line:stdgo.GoInt, ?_linestart:stdgo.GoInt64, ?_offset:stdgo.GoInt64, ?_unmarshalDepth:stdgo.GoInt) {
        if (strict != null) this.strict = strict;
        if (autoClose != null) this.autoClose = autoClose;
        if (entity != null) this.entity = entity;
        if (charsetReader != null) this.charsetReader = charsetReader;
        if (defaultSpace != null) this.defaultSpace = defaultSpace;
        if (_r != null) this._r = _r;
        if (_t != null) this._t = _t;
        if (_buf != null) this._buf = _buf;
        if (_saved != null) this._saved = _saved;
        if (_stk != null) this._stk = _stk;
        if (_free != null) this._free = _free;
        if (_needClose != null) this._needClose = _needClose;
        if (_toClose != null) this._toClose = _toClose;
        if (_nextToken != null) this._nextToken = _nextToken;
        if (_nextByte != null) this._nextByte = _nextByte;
        if (_ns != null) this._ns = _ns;
        if (_err != null) this._err = _err;
        if (_line != null) this._line = _line;
        if (_linestart != null) this._linestart = _linestart;
        if (_offset != null) this._offset = _offset;
        if (_unmarshalDepth != null) this._unmarshalDepth = _unmarshalDepth;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Decoder(
strict,
autoClose,
entity,
charsetReader,
defaultSpace,
_r,
_t,
_buf,
_saved,
_stk,
_free,
_needClose,
_toClose,
_nextToken,
_nextByte,
_ns,
_err,
_line,
_linestart,
_offset,
_unmarshalDepth);
    }
}
