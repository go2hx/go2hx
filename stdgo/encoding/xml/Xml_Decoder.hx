package stdgo.encoding.xml;
@:structInit @:using(stdgo.encoding.xml.Xml.Decoder_static_extension) abstract Decoder(stdgo._internal.encoding.xml.Xml_Decoder.Decoder) from stdgo._internal.encoding.xml.Xml_Decoder.Decoder to stdgo._internal.encoding.xml.Xml_Decoder.Decoder {
    public var strict(get, set) : Bool;
    function get_strict():Bool return this.strict;
    function set_strict(v:Bool):Bool {
        this.strict = v;
        return v;
    }
    public var autoClose(get, set) : Array<String>;
    function get_autoClose():Array<String> return [for (i in this.autoClose) i];
    function set_autoClose(v:Array<String>):Array<String> {
        this.autoClose = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var entity(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
    function get_entity():stdgo.GoMap<stdgo.GoString, stdgo.GoString> return this.entity;
    function set_entity(v:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        this.entity = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        return v;
    }
    public var charsetReader(get, set) : (stdgo.GoString, stdgo._internal.io.Io_Reader.Reader) -> { var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo.Error; };
    function get_charsetReader():(stdgo.GoString, stdgo._internal.io.Io_Reader.Reader) -> { var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo.Error; } return (_0, _1) -> this.charsetReader(_0, _1);
    function set_charsetReader(v:(stdgo.GoString, stdgo._internal.io.Io_Reader.Reader) -> { var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo.Error; }):(stdgo.GoString, stdgo._internal.io.Io_Reader.Reader) -> { var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo.Error; } {
        this.charsetReader = v;
        return v;
    }
    public var defaultSpace(get, set) : String;
    function get_defaultSpace():String return this.defaultSpace;
    function set_defaultSpace(v:String):String {
        this.defaultSpace = (v : stdgo.GoString);
        return v;
    }
    public var _r(get, set) : stdgo._internal.io.Io_ByteReader.ByteReader;
    function get__r():stdgo._internal.io.Io_ByteReader.ByteReader return this._r;
    function set__r(v:stdgo._internal.io.Io_ByteReader.ByteReader):stdgo._internal.io.Io_ByteReader.ByteReader {
        this._r = v;
        return v;
    }
    public var _t(get, set) : TokenReader;
    function get__t():TokenReader return this._t;
    function set__t(v:TokenReader):TokenReader {
        this._t = v;
        return v;
    }
    public var _buf(get, set) : stdgo._internal.bytes.Bytes_Buffer.Buffer;
    function get__buf():stdgo._internal.bytes.Bytes_Buffer.Buffer return this._buf;
    function set__buf(v:stdgo._internal.bytes.Bytes_Buffer.Buffer):stdgo._internal.bytes.Bytes_Buffer.Buffer {
        this._buf = v;
        return v;
    }
    public var _saved(get, set) : stdgo._internal.bytes.Bytes_Buffer.Buffer;
    function get__saved():stdgo._internal.bytes.Bytes_Buffer.Buffer return this._saved;
    function set__saved(v:stdgo._internal.bytes.Bytes_Buffer.Buffer):stdgo._internal.bytes.Bytes_Buffer.Buffer {
        this._saved = (v : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        return v;
    }
    public var _stk(get, set) : T_stack;
    function get__stk():T_stack return this._stk;
    function set__stk(v:T_stack):T_stack {
        this._stk = (v : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_stack.T_stack>);
        return v;
    }
    public var _free(get, set) : T_stack;
    function get__free():T_stack return this._free;
    function set__free(v:T_stack):T_stack {
        this._free = (v : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_stack.T_stack>);
        return v;
    }
    public var _needClose(get, set) : Bool;
    function get__needClose():Bool return this._needClose;
    function set__needClose(v:Bool):Bool {
        this._needClose = v;
        return v;
    }
    public var _toClose(get, set) : Name;
    function get__toClose():Name return this._toClose;
    function set__toClose(v:Name):Name {
        this._toClose = v;
        return v;
    }
    public var _nextToken(get, set) : Token;
    function get__nextToken():Token return this._nextToken;
    function set__nextToken(v:Token):Token {
        this._nextToken = v;
        return v;
    }
    public var _nextByte(get, set) : StdTypes.Int;
    function get__nextByte():StdTypes.Int return this._nextByte;
    function set__nextByte(v:StdTypes.Int):StdTypes.Int {
        this._nextByte = (v : stdgo.GoInt);
        return v;
    }
    public var _ns(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
    function get__ns():stdgo.GoMap<stdgo.GoString, stdgo.GoString> return this._ns;
    function set__ns(v:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        this._ns = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _line(get, set) : StdTypes.Int;
    function get__line():StdTypes.Int return this._line;
    function set__line(v:StdTypes.Int):StdTypes.Int {
        this._line = (v : stdgo.GoInt);
        return v;
    }
    public var _linestart(get, set) : haxe.Int64;
    function get__linestart():haxe.Int64 return this._linestart;
    function set__linestart(v:haxe.Int64):haxe.Int64 {
        this._linestart = (v : stdgo.GoInt64);
        return v;
    }
    public var _offset(get, set) : haxe.Int64;
    function get__offset():haxe.Int64 return this._offset;
    function set__offset(v:haxe.Int64):haxe.Int64 {
        this._offset = (v : stdgo.GoInt64);
        return v;
    }
    public var _unmarshalDepth(get, set) : StdTypes.Int;
    function get__unmarshalDepth():StdTypes.Int return this._unmarshalDepth;
    function set__unmarshalDepth(v:StdTypes.Int):StdTypes.Int {
        this._unmarshalDepth = (v : stdgo.GoInt);
        return v;
    }
    public function new(?strict:Bool, ?autoClose:Array<String>, ?entity:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?charsetReader:(stdgo.GoString, stdgo._internal.io.Io_Reader.Reader) -> { var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo.Error; }, ?defaultSpace:String, ?_r:stdgo._internal.io.Io_ByteReader.ByteReader, ?_t:TokenReader, ?_buf:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?_saved:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?_stk:T_stack, ?_free:T_stack, ?_needClose:Bool, ?_toClose:Name, ?_nextToken:Token, ?_nextByte:StdTypes.Int, ?_ns:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?_err:stdgo.Error, ?_line:StdTypes.Int, ?_linestart:haxe.Int64, ?_offset:haxe.Int64, ?_unmarshalDepth:StdTypes.Int) this = new stdgo._internal.encoding.xml.Xml_Decoder.Decoder(
strict,
([for (i in autoClose) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
(entity : stdgo.GoMap<stdgo.GoString, stdgo.GoString>),
charsetReader,
(defaultSpace : stdgo.GoString),
_r,
_t,
_buf,
(_saved : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>),
(_stk : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_stack.T_stack>),
(_free : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_stack.T_stack>),
_needClose,
_toClose,
_nextToken,
(_nextByte : stdgo.GoInt),
(_ns : stdgo.GoMap<stdgo.GoString, stdgo.GoString>),
(_err : stdgo.Error),
(_line : stdgo.GoInt),
(_linestart : stdgo.GoInt64),
(_offset : stdgo.GoInt64),
(_unmarshalDepth : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
