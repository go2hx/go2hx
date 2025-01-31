package stdgo._internal.encoding.xml;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.errors.Errors;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
@:structInit @:using(stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension) class Decoder {
    public var strict : Bool = false;
    public var autoClose : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var entity : stdgo.GoMap<stdgo.GoString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
    public var charsetReader : (stdgo.GoString, stdgo._internal.io.Io_Reader.Reader) -> { var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo.Error; } = null;
    public var defaultSpace : stdgo.GoString = "";
    public var _r : stdgo._internal.io.Io_ByteReader.ByteReader = (null : stdgo._internal.io.Io_ByteReader.ByteReader);
    public var _t : stdgo._internal.encoding.xml.Xml_TokenReader.TokenReader = (null : stdgo._internal.encoding.xml.Xml_TokenReader.TokenReader);
    public var _buf : stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
    public var _saved : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = (null : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
    public var _stk : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_stack.T_stack> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_stack.T_stack>);
    public var _free : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_stack.T_stack> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_stack.T_stack>);
    public var _needClose : Bool = false;
    public var _toClose : stdgo._internal.encoding.xml.Xml_Name.Name = ({} : stdgo._internal.encoding.xml.Xml_Name.Name);
    public var _nextToken : stdgo._internal.encoding.xml.Xml_Token.Token = (null : stdgo._internal.encoding.xml.Xml_Token.Token);
    public var _nextByte : stdgo.GoInt = 0;
    public var _ns : stdgo.GoMap<stdgo.GoString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _line : stdgo.GoInt = 0;
    public var _linestart : stdgo.GoInt64 = 0;
    public var _offset : stdgo.GoInt64 = 0;
    public var _unmarshalDepth : stdgo.GoInt = 0;
    public function new(?strict:Bool, ?autoClose:stdgo.Slice<stdgo.GoString>, ?entity:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?charsetReader:(stdgo.GoString, stdgo._internal.io.Io_Reader.Reader) -> { var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo.Error; }, ?defaultSpace:stdgo.GoString, ?_r:stdgo._internal.io.Io_ByteReader.ByteReader, ?_t:stdgo._internal.encoding.xml.Xml_TokenReader.TokenReader, ?_buf:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?_saved:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>, ?_stk:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_stack.T_stack>, ?_free:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_stack.T_stack>, ?_needClose:Bool, ?_toClose:stdgo._internal.encoding.xml.Xml_Name.Name, ?_nextToken:stdgo._internal.encoding.xml.Xml_Token.Token, ?_nextByte:stdgo.GoInt, ?_ns:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?_err:stdgo.Error, ?_line:stdgo.GoInt, ?_linestart:stdgo.GoInt64, ?_offset:stdgo.GoInt64, ?_unmarshalDepth:stdgo.GoInt) {
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
