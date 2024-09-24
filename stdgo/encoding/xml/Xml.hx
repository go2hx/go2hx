package stdgo.encoding.xml;
final header : String = stdgo._internal.encoding.xml.Xml_header.header;
var htmlentity(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
private function get_htmlentity():stdgo.GoMap<stdgo.GoString, stdgo.GoString> return stdgo._internal.encoding.xml.Xml_htmlentity.htmlentity;
private function set_htmlentity(v:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        stdgo._internal.encoding.xml.Xml_htmlentity.htmlentity = v;
        return v;
    }
var htmlautoClose(get, set) : Array<String>;
private function get_htmlautoClose():Array<String> return [for (i in stdgo._internal.encoding.xml.Xml_htmlautoClose.htmlautoClose) i];
private function set_htmlautoClose(v:Array<String>):Array<String> {
        stdgo._internal.encoding.xml.Xml_htmlautoClose.htmlautoClose = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
class Marshaler_static_extension {
    static public function marshalXML(t:stdgo._internal.encoding.xml.Xml_Marshaler.Marshaler, _e:Encoder, _start:StartElement):stdgo.Error {
        return stdgo._internal.encoding.xml.Xml_Marshaler_static_extension.Marshaler_static_extension.marshalXML(t, _e, _start);
    }
}
typedef Marshaler = stdgo._internal.encoding.xml.Xml_Marshaler.Marshaler;
class MarshalerAttr_static_extension {
    static public function marshalXMLAttr(t:stdgo._internal.encoding.xml.Xml_MarshalerAttr.MarshalerAttr, _name:Name):stdgo.Tuple<Attr, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.xml.Xml_MarshalerAttr_static_extension.MarshalerAttr_static_extension.marshalXMLAttr(t, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef MarshalerAttr = stdgo._internal.encoding.xml.Xml_MarshalerAttr.MarshalerAttr;
class Unmarshaler_static_extension {
    static public function unmarshalXML(t:stdgo._internal.encoding.xml.Xml_Unmarshaler.Unmarshaler, _d:Decoder, _start:StartElement):stdgo.Error {
        return stdgo._internal.encoding.xml.Xml_Unmarshaler_static_extension.Unmarshaler_static_extension.unmarshalXML(t, _d, _start);
    }
}
typedef Unmarshaler = stdgo._internal.encoding.xml.Xml_Unmarshaler.Unmarshaler;
class UnmarshalerAttr_static_extension {
    static public function unmarshalXMLAttr(t:stdgo._internal.encoding.xml.Xml_UnmarshalerAttr.UnmarshalerAttr, _attr:Attr):stdgo.Error {
        return stdgo._internal.encoding.xml.Xml_UnmarshalerAttr_static_extension.UnmarshalerAttr_static_extension.unmarshalXMLAttr(t, _attr);
    }
}
typedef UnmarshalerAttr = stdgo._internal.encoding.xml.Xml_UnmarshalerAttr.UnmarshalerAttr;
class TokenReader_static_extension {
    static public function token(t:stdgo._internal.encoding.xml.Xml_TokenReader.TokenReader):stdgo.Tuple<Token, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.xml.Xml_TokenReader_static_extension.TokenReader_static_extension.token(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef TokenReader = stdgo._internal.encoding.xml.Xml_TokenReader.TokenReader;
@:structInit @:using(stdgo.encoding.xml.Xml.Encoder_static_extension) abstract Encoder(stdgo._internal.encoding.xml.Xml_Encoder.Encoder) from stdgo._internal.encoding.xml.Xml_Encoder.Encoder to stdgo._internal.encoding.xml.Xml_Encoder.Encoder {
    public var _p(get, set) : T_printer;
    function get__p():T_printer return this._p;
    function set__p(v:T_printer):T_printer {
        this._p = v;
        return v;
    }
    public function new(?_p:T_printer) this = new stdgo._internal.encoding.xml.Xml_Encoder.Encoder(_p);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.xml.Xml.T_printer_static_extension) abstract T_printer(stdgo._internal.encoding.xml.Xml_T_printer.T_printer) from stdgo._internal.encoding.xml.Xml_T_printer.T_printer to stdgo._internal.encoding.xml.Xml_T_printer.T_printer {
    public var _w(get, set) : stdgo._internal.bufio.Bufio_Writer.Writer;
    function get__w():stdgo._internal.bufio.Bufio_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.bufio.Bufio_Writer.Writer):stdgo._internal.bufio.Bufio_Writer.Writer {
        this._w = v;
        return v;
    }
    public var _encoder(get, set) : Encoder;
    function get__encoder():Encoder return this._encoder;
    function set__encoder(v:Encoder):Encoder {
        this._encoder = v;
        return v;
    }
    public var _seq(get, set) : StdTypes.Int;
    function get__seq():StdTypes.Int return this._seq;
    function set__seq(v:StdTypes.Int):StdTypes.Int {
        this._seq = v;
        return v;
    }
    public var _indent(get, set) : String;
    function get__indent():String return this._indent;
    function set__indent(v:String):String {
        this._indent = v;
        return v;
    }
    public var _prefix(get, set) : String;
    function get__prefix():String return this._prefix;
    function set__prefix(v:String):String {
        this._prefix = v;
        return v;
    }
    public var _depth(get, set) : StdTypes.Int;
    function get__depth():StdTypes.Int return this._depth;
    function set__depth(v:StdTypes.Int):StdTypes.Int {
        this._depth = v;
        return v;
    }
    public var _indentedIn(get, set) : Bool;
    function get__indentedIn():Bool return this._indentedIn;
    function set__indentedIn(v:Bool):Bool {
        this._indentedIn = v;
        return v;
    }
    public var _putNewline(get, set) : Bool;
    function get__putNewline():Bool return this._putNewline;
    function set__putNewline(v:Bool):Bool {
        this._putNewline = v;
        return v;
    }
    public var _attrNS(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
    function get__attrNS():stdgo.GoMap<stdgo.GoString, stdgo.GoString> return this._attrNS;
    function set__attrNS(v:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        this._attrNS = v;
        return v;
    }
    public var _attrPrefix(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
    function get__attrPrefix():stdgo.GoMap<stdgo.GoString, stdgo.GoString> return this._attrPrefix;
    function set__attrPrefix(v:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        this._attrPrefix = v;
        return v;
    }
    public var _prefixes(get, set) : Array<String>;
    function get__prefixes():Array<String> return [for (i in this._prefixes) i];
    function set__prefixes(v:Array<String>):Array<String> {
        this._prefixes = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _tags(get, set) : Array<Name>;
    function get__tags():Array<Name> return [for (i in this._tags) i];
    function set__tags(v:Array<Name>):Array<Name> {
        this._tags = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.xml.Xml_Name.Name>);
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?_w:stdgo._internal.bufio.Bufio_Writer.Writer, ?_encoder:Encoder, ?_seq:StdTypes.Int, ?_indent:String, ?_prefix:String, ?_depth:StdTypes.Int, ?_indentedIn:Bool, ?_putNewline:Bool, ?_attrNS:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?_attrPrefix:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?_prefixes:Array<String>, ?_tags:Array<Name>, ?_closed:Bool, ?_err:stdgo.Error) this = new stdgo._internal.encoding.xml.Xml_T_printer.T_printer(
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
([for (i in _prefixes) i] : stdgo.Slice<stdgo.GoString>),
([for (i in _tags) i] : stdgo.Slice<stdgo._internal.encoding.xml.Xml_Name.Name>),
_closed,
_err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.xml.Xml.T_parentStack_static_extension) abstract T_parentStack(stdgo._internal.encoding.xml.Xml_T_parentStack.T_parentStack) from stdgo._internal.encoding.xml.Xml_T_parentStack.T_parentStack to stdgo._internal.encoding.xml.Xml_T_parentStack.T_parentStack {
    public var _p(get, set) : T_printer;
    function get__p():T_printer return this._p;
    function set__p(v:T_printer):T_printer {
        this._p = v;
        return v;
    }
    public var _stack(get, set) : Array<String>;
    function get__stack():Array<String> return [for (i in this._stack) i];
    function set__stack(v:Array<String>):Array<String> {
        this._stack = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?_p:T_printer, ?_stack:Array<String>) this = new stdgo._internal.encoding.xml.Xml_T_parentStack.T_parentStack(_p, ([for (i in _stack) i] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.xml.Xml.UnsupportedTypeError_static_extension) abstract UnsupportedTypeError(stdgo._internal.encoding.xml.Xml_UnsupportedTypeError.UnsupportedTypeError) from stdgo._internal.encoding.xml.Xml_UnsupportedTypeError.UnsupportedTypeError to stdgo._internal.encoding.xml.Xml_UnsupportedTypeError.UnsupportedTypeError {
    public var type(get, set) : stdgo._internal.reflect.Reflect_Type_.Type_;
    function get_type():stdgo._internal.reflect.Reflect_Type_.Type_ return this.type;
    function set_type(v:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Type_.Type_ {
        this.type = v;
        return v;
    }
    public function new(?type:stdgo._internal.reflect.Reflect_Type_.Type_) this = new stdgo._internal.encoding.xml.Xml_UnsupportedTypeError.UnsupportedTypeError(type);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_typeInfo(stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo) from stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo to stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo {
    public var _xmlname(get, set) : T_fieldInfo;
    function get__xmlname():T_fieldInfo return this._xmlname;
    function set__xmlname(v:T_fieldInfo):T_fieldInfo {
        this._xmlname = v;
        return v;
    }
    public var _fields(get, set) : Array<T_fieldInfo>;
    function get__fields():Array<T_fieldInfo> return [for (i in this._fields) i];
    function set__fields(v:Array<T_fieldInfo>):Array<T_fieldInfo> {
        this._fields = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        return v;
    }
    public function new(?_xmlname:T_fieldInfo, ?_fields:Array<T_fieldInfo>) this = new stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo(_xmlname, ([for (i in _fields) i] : stdgo.Slice<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.xml.Xml.T_fieldInfo_static_extension) abstract T_fieldInfo(stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo) from stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo to stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo {
    public var _idx(get, set) : Array<StdTypes.Int>;
    function get__idx():Array<StdTypes.Int> return [for (i in this._idx) i];
    function set__idx(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._idx = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = v;
        return v;
    }
    public var _xmlns(get, set) : String;
    function get__xmlns():String return this._xmlns;
    function set__xmlns(v:String):String {
        this._xmlns = v;
        return v;
    }
    public var _flags(get, set) : T_fieldFlags;
    function get__flags():T_fieldFlags return this._flags;
    function set__flags(v:T_fieldFlags):T_fieldFlags {
        this._flags = v;
        return v;
    }
    public var _parents(get, set) : Array<String>;
    function get__parents():Array<String> return [for (i in this._parents) i];
    function set__parents(v:Array<String>):Array<String> {
        this._parents = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?_idx:Array<StdTypes.Int>, ?_name:String, ?_xmlns:String, ?_flags:T_fieldFlags, ?_parents:Array<String>) this = new stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo(([for (i in _idx) i] : stdgo.Slice<stdgo.GoInt>), _name, _xmlns, _flags, ([for (i in _parents) i] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.xml.Xml.TagPathError_static_extension) abstract TagPathError(stdgo._internal.encoding.xml.Xml_TagPathError.TagPathError) from stdgo._internal.encoding.xml.Xml_TagPathError.TagPathError to stdgo._internal.encoding.xml.Xml_TagPathError.TagPathError {
    public var struct_(get, set) : stdgo._internal.reflect.Reflect_Type_.Type_;
    function get_struct_():stdgo._internal.reflect.Reflect_Type_.Type_ return this.struct_;
    function set_struct_(v:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Type_.Type_ {
        this.struct_ = v;
        return v;
    }
    public var field1(get, set) : String;
    function get_field1():String return this.field1;
    function set_field1(v:String):String {
        this.field1 = v;
        return v;
    }
    public var tag1(get, set) : String;
    function get_tag1():String return this.tag1;
    function set_tag1(v:String):String {
        this.tag1 = v;
        return v;
    }
    public var field2(get, set) : String;
    function get_field2():String return this.field2;
    function set_field2(v:String):String {
        this.field2 = v;
        return v;
    }
    public var tag2(get, set) : String;
    function get_tag2():String return this.tag2;
    function set_tag2(v:String):String {
        this.tag2 = v;
        return v;
    }
    public function new(?struct_:stdgo._internal.reflect.Reflect_Type_.Type_, ?field1:String, ?tag1:String, ?field2:String, ?tag2:String) this = new stdgo._internal.encoding.xml.Xml_TagPathError.TagPathError(struct_, field1, tag1, field2, tag2);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.xml.Xml.SyntaxError_static_extension) abstract SyntaxError(stdgo._internal.encoding.xml.Xml_SyntaxError.SyntaxError) from stdgo._internal.encoding.xml.Xml_SyntaxError.SyntaxError to stdgo._internal.encoding.xml.Xml_SyntaxError.SyntaxError {
    public var msg(get, set) : String;
    function get_msg():String return this.msg;
    function set_msg(v:String):String {
        this.msg = v;
        return v;
    }
    public var line(get, set) : StdTypes.Int;
    function get_line():StdTypes.Int return this.line;
    function set_line(v:StdTypes.Int):StdTypes.Int {
        this.line = v;
        return v;
    }
    public function new(?msg:String, ?line:StdTypes.Int) this = new stdgo._internal.encoding.xml.Xml_SyntaxError.SyntaxError(msg, line);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Name(stdgo._internal.encoding.xml.Xml_Name.Name) from stdgo._internal.encoding.xml.Xml_Name.Name to stdgo._internal.encoding.xml.Xml_Name.Name {
    public var space(get, set) : String;
    function get_space():String return this.space;
    function set_space(v:String):String {
        this.space = v;
        return v;
    }
    public var local(get, set) : String;
    function get_local():String return this.local;
    function set_local(v:String):String {
        this.local = v;
        return v;
    }
    public function new(?space:String, ?local:String) this = new stdgo._internal.encoding.xml.Xml_Name.Name(space, local);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Attr(stdgo._internal.encoding.xml.Xml_Attr.Attr) from stdgo._internal.encoding.xml.Xml_Attr.Attr to stdgo._internal.encoding.xml.Xml_Attr.Attr {
    public var name(get, set) : Name;
    function get_name():Name return this.name;
    function set_name(v:Name):Name {
        this.name = v;
        return v;
    }
    public var value(get, set) : String;
    function get_value():String return this.value;
    function set_value(v:String):String {
        this.value = v;
        return v;
    }
    public function new(?name:Name, ?value:String) this = new stdgo._internal.encoding.xml.Xml_Attr.Attr(name, value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.xml.Xml.StartElement_static_extension) abstract StartElement(stdgo._internal.encoding.xml.Xml_StartElement.StartElement) from stdgo._internal.encoding.xml.Xml_StartElement.StartElement to stdgo._internal.encoding.xml.Xml_StartElement.StartElement {
    public var name(get, set) : Name;
    function get_name():Name return this.name;
    function set_name(v:Name):Name {
        this.name = v;
        return v;
    }
    public var attr(get, set) : Array<Attr>;
    function get_attr():Array<Attr> return [for (i in this.attr) i];
    function set_attr(v:Array<Attr>):Array<Attr> {
        this.attr = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.xml.Xml_Attr.Attr>);
        return v;
    }
    public function new(?name:Name, ?attr:Array<Attr>) this = new stdgo._internal.encoding.xml.Xml_StartElement.StartElement(name, ([for (i in attr) i] : stdgo.Slice<stdgo._internal.encoding.xml.Xml_Attr.Attr>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract EndElement(stdgo._internal.encoding.xml.Xml_EndElement.EndElement) from stdgo._internal.encoding.xml.Xml_EndElement.EndElement to stdgo._internal.encoding.xml.Xml_EndElement.EndElement {
    public var name(get, set) : Name;
    function get_name():Name return this.name;
    function set_name(v:Name):Name {
        this.name = v;
        return v;
    }
    public function new(?name:Name) this = new stdgo._internal.encoding.xml.Xml_EndElement.EndElement(name);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.xml.Xml.ProcInst_static_extension) abstract ProcInst(stdgo._internal.encoding.xml.Xml_ProcInst.ProcInst) from stdgo._internal.encoding.xml.Xml_ProcInst.ProcInst to stdgo._internal.encoding.xml.Xml_ProcInst.ProcInst {
    public var target(get, set) : String;
    function get_target():String return this.target;
    function set_target(v:String):String {
        this.target = v;
        return v;
    }
    public var inst(get, set) : Array<std.UInt>;
    function get_inst():Array<std.UInt> return [for (i in this.inst) i];
    function set_inst(v:Array<std.UInt>):Array<std.UInt> {
        this.inst = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?target:String, ?inst:Array<std.UInt>) this = new stdgo._internal.encoding.xml.Xml_ProcInst.ProcInst(target, ([for (i in inst) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
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
        this.autoClose = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var entity(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
    function get_entity():stdgo.GoMap<stdgo.GoString, stdgo.GoString> return this.entity;
    function set_entity(v:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        this.entity = v;
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
        this.defaultSpace = v;
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
        this._saved = v;
        return v;
    }
    public var _stk(get, set) : T_stack;
    function get__stk():T_stack return this._stk;
    function set__stk(v:T_stack):T_stack {
        this._stk = v;
        return v;
    }
    public var _free(get, set) : T_stack;
    function get__free():T_stack return this._free;
    function set__free(v:T_stack):T_stack {
        this._free = v;
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
        this._nextByte = v;
        return v;
    }
    public var _ns(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
    function get__ns():stdgo.GoMap<stdgo.GoString, stdgo.GoString> return this._ns;
    function set__ns(v:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        this._ns = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _line(get, set) : StdTypes.Int;
    function get__line():StdTypes.Int return this._line;
    function set__line(v:StdTypes.Int):StdTypes.Int {
        this._line = v;
        return v;
    }
    public var _linestart(get, set) : haxe.Int64;
    function get__linestart():haxe.Int64 return this._linestart;
    function set__linestart(v:haxe.Int64):haxe.Int64 {
        this._linestart = v;
        return v;
    }
    public var _offset(get, set) : haxe.Int64;
    function get__offset():haxe.Int64 return this._offset;
    function set__offset(v:haxe.Int64):haxe.Int64 {
        this._offset = v;
        return v;
    }
    public var _unmarshalDepth(get, set) : StdTypes.Int;
    function get__unmarshalDepth():StdTypes.Int return this._unmarshalDepth;
    function set__unmarshalDepth(v:StdTypes.Int):StdTypes.Int {
        this._unmarshalDepth = v;
        return v;
    }
    public function new(?strict:Bool, ?autoClose:Array<String>, ?entity:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?charsetReader:(stdgo.GoString, stdgo._internal.io.Io_Reader.Reader) -> { var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo.Error; }, ?defaultSpace:String, ?_r:stdgo._internal.io.Io_ByteReader.ByteReader, ?_t:TokenReader, ?_buf:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?_saved:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?_stk:T_stack, ?_free:T_stack, ?_needClose:Bool, ?_toClose:Name, ?_nextToken:Token, ?_nextByte:StdTypes.Int, ?_ns:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?_err:stdgo.Error, ?_line:StdTypes.Int, ?_linestart:haxe.Int64, ?_offset:haxe.Int64, ?_unmarshalDepth:StdTypes.Int) this = new stdgo._internal.encoding.xml.Xml_Decoder.Decoder(
strict,
([for (i in autoClose) i] : stdgo.Slice<stdgo.GoString>),
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
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_stack(stdgo._internal.encoding.xml.Xml_T_stack.T_stack) from stdgo._internal.encoding.xml.Xml_T_stack.T_stack to stdgo._internal.encoding.xml.Xml_T_stack.T_stack {
    public var _next(get, set) : T_stack;
    function get__next():T_stack return this._next;
    function set__next(v:T_stack):T_stack {
        this._next = v;
        return v;
    }
    public var _kind(get, set) : StdTypes.Int;
    function get__kind():StdTypes.Int return this._kind;
    function set__kind(v:StdTypes.Int):StdTypes.Int {
        this._kind = v;
        return v;
    }
    public var _name(get, set) : Name;
    function get__name():Name return this._name;
    function set__name(v:Name):Name {
        this._name = v;
        return v;
    }
    public var _ok(get, set) : Bool;
    function get__ok():Bool return this._ok;
    function set__ok(v:Bool):Bool {
        this._ok = v;
        return v;
    }
    public function new(?_next:T_stack, ?_kind:StdTypes.Int, ?_name:Name, ?_ok:Bool) this = new stdgo._internal.encoding.xml.Xml_T_stack.T_stack(_next, _kind, _name, _ok);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef UnmarshalError = stdgo._internal.encoding.xml.Xml_UnmarshalError.UnmarshalError;
typedef T_fieldFlags = stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags;
typedef Token = stdgo._internal.encoding.xml.Xml_Token.Token;
typedef CharData = stdgo._internal.encoding.xml.Xml_CharData.CharData;
typedef Comment = stdgo._internal.encoding.xml.Xml_Comment.Comment;
typedef Directive = stdgo._internal.encoding.xml.Xml_Directive.Directive;
class Encoder_static_extension {
    static public function close(_enc:Encoder):stdgo.Error {
        return stdgo._internal.encoding.xml.Xml_Encoder_static_extension.Encoder_static_extension.close(_enc);
    }
    static public function flush(_enc:Encoder):stdgo.Error {
        return stdgo._internal.encoding.xml.Xml_Encoder_static_extension.Encoder_static_extension.flush(_enc);
    }
    static public function encodeToken(_enc:Encoder, _t:Token):stdgo.Error {
        return stdgo._internal.encoding.xml.Xml_Encoder_static_extension.Encoder_static_extension.encodeToken(_enc, _t);
    }
    static public function encodeElement(_enc:Encoder, _v:stdgo.AnyInterface, _start:StartElement):stdgo.Error {
        return stdgo._internal.encoding.xml.Xml_Encoder_static_extension.Encoder_static_extension.encodeElement(_enc, _v, _start);
    }
    static public function encode(_enc:Encoder, _v:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.encoding.xml.Xml_Encoder_static_extension.Encoder_static_extension.encode(_enc, _v);
    }
    static public function indent(_enc:Encoder, _prefix:String, _indent:String):Void {
        stdgo._internal.encoding.xml.Xml_Encoder_static_extension.Encoder_static_extension.indent(_enc, _prefix, _indent);
    }
}
class T_printer_static_extension {
    static public function escapeString(_p:T_printer, _s:String):Void {
        stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension.escapeString(_p, _s);
    }
    static public function _writeIndent(_p:T_printer, _depthDelta:StdTypes.Int):Void {
        stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension._writeIndent(_p, _depthDelta);
    }
    static public function _cachedWriteError(_p:T_printer):stdgo.Error {
        return stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension._cachedWriteError(_p);
    }
    static public function close(_p:T_printer):stdgo.Error {
        return stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension.close(_p);
    }
    static public function writeByte(_p:T_printer, _c:std.UInt):stdgo.Error {
        return stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension.writeByte(_p, _c);
    }
    static public function writeString(_p:T_printer, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension.writeString(_p, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_p:T_printer, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension.write(_p, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _marshalStruct(_p:T_printer, _tinfo:T_typeInfo, _val:stdgo._internal.reflect.Reflect_Value.Value):stdgo.Error {
        return stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension._marshalStruct(_p, _tinfo, _val);
    }
    static public function _marshalSimple(_p:T_printer, _typ:stdgo._internal.reflect.Reflect_Type_.Type_, _val:stdgo._internal.reflect.Reflect_Value.Value):stdgo.Tuple.Tuple3<String, Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension._marshalSimple(_p, _typ, _val);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    static public function _writeEnd(_p:T_printer, _name:Name):stdgo.Error {
        return stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension._writeEnd(_p, _name);
    }
    static public function _writeStart(_p:T_printer, _start:StartElement):stdgo.Error {
        return stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension._writeStart(_p, _start);
    }
    static public function _marshalTextInterface(_p:T_printer, _val:stdgo._internal.encoding.Encoding_TextMarshaler.TextMarshaler, _start:StartElement):stdgo.Error {
        return stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension._marshalTextInterface(_p, _val, _start);
    }
    static public function _marshalInterface(_p:T_printer, _val:Marshaler, _start:StartElement):stdgo.Error {
        return stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension._marshalInterface(_p, _val, _start);
    }
    static public function _marshalAttr(_p:T_printer, _start:StartElement, _name:Name, _val:stdgo._internal.reflect.Reflect_Value.Value):stdgo.Error {
        return stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension._marshalAttr(_p, _start, _name, _val);
    }
    static public function _marshalValue(_p:T_printer, _val:stdgo._internal.reflect.Reflect_Value.Value, _finfo:T_fieldInfo, _startTemplate:StartElement):stdgo.Error {
        return stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension._marshalValue(_p, _val, _finfo, _startTemplate);
    }
    static public function _popPrefix(_p:T_printer):Void {
        stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension._popPrefix(_p);
    }
    static public function _markPrefix(_p:T_printer):Void {
        stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension._markPrefix(_p);
    }
    static public function _deleteAttrPrefix(_p:T_printer, _prefix:String):Void {
        stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension._deleteAttrPrefix(_p, _prefix);
    }
    static public function _createAttrPrefix(_p:T_printer, _url:String):String {
        return stdgo._internal.encoding.xml.Xml_T_printer_static_extension.T_printer_static_extension._createAttrPrefix(_p, _url);
    }
}
class T_parentStack_static_extension {
    static public function _push(_s:T_parentStack, _parents:Array<String>):stdgo.Error {
        final _parents = ([for (i in _parents) i] : stdgo.Slice<stdgo.GoString>);
        return stdgo._internal.encoding.xml.Xml_T_parentStack_static_extension.T_parentStack_static_extension._push(_s, _parents);
    }
    static public function _trim(_s:T_parentStack, _parents:Array<String>):stdgo.Error {
        final _parents = ([for (i in _parents) i] : stdgo.Slice<stdgo.GoString>);
        return stdgo._internal.encoding.xml.Xml_T_parentStack_static_extension.T_parentStack_static_extension._trim(_s, _parents);
    }
}
class UnsupportedTypeError_static_extension {
    static public function error(_e:UnsupportedTypeError):String {
        return stdgo._internal.encoding.xml.Xml_UnsupportedTypeError_static_extension.UnsupportedTypeError_static_extension.error(_e);
    }
}
class T_fieldInfo_static_extension {
    static public function _value(_finfo:T_fieldInfo, _v:stdgo._internal.reflect.Reflect_Value.Value, _shouldInitNilPointers:Bool):stdgo._internal.reflect.Reflect_Value.Value {
        return stdgo._internal.encoding.xml.Xml_T_fieldInfo_static_extension.T_fieldInfo_static_extension._value(_finfo, _v, _shouldInitNilPointers);
    }
}
class TagPathError_static_extension {
    static public function error(_e:TagPathError):String {
        return stdgo._internal.encoding.xml.Xml_TagPathError_static_extension.TagPathError_static_extension.error(_e);
    }
}
class SyntaxError_static_extension {
    static public function error(_e:SyntaxError):String {
        return stdgo._internal.encoding.xml.Xml_SyntaxError_static_extension.SyntaxError_static_extension.error(_e);
    }
}
class StartElement_static_extension {
    static public function end(_e:StartElement):EndElement {
        return stdgo._internal.encoding.xml.Xml_StartElement_static_extension.StartElement_static_extension.end(_e);
    }
    static public function copy(_e:StartElement):StartElement {
        return stdgo._internal.encoding.xml.Xml_StartElement_static_extension.StartElement_static_extension.copy(_e);
    }
}
class ProcInst_static_extension {
    static public function copy(_p:ProcInst):ProcInst {
        return stdgo._internal.encoding.xml.Xml_ProcInst_static_extension.ProcInst_static_extension.copy(_p);
    }
}
class Decoder_static_extension {
    static public function _readName(_d:Decoder):Bool {
        return stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._readName(_d);
    }
    static public function _name(_d:Decoder):stdgo.Tuple<String, Bool> {
        return {
            final obj = stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._name(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _nsname(_d:Decoder):stdgo.Tuple<Name, Bool> {
        return {
            final obj = stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._nsname(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _text(_d:Decoder, _quote:StdTypes.Int, _cdata:Bool):Array<std.UInt> {
        return [for (i in stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._text(_d, _quote, _cdata)) i];
    }
    static public function _ungetc(_d:Decoder, _b:std.UInt):Void {
        stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._ungetc(_d, _b);
    }
    static public function _mustgetc(_d:Decoder):stdgo.Tuple<std.UInt, Bool> {
        return {
            final obj = stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._mustgetc(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _savedOffset(_d:Decoder):StdTypes.Int {
        return stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._savedOffset(_d);
    }
    static public function inputPos(_d:Decoder):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        return {
            final obj = stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension.inputPos(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function inputOffset(_d:Decoder):haxe.Int64 {
        return stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension.inputOffset(_d);
    }
    static public function _getc(_d:Decoder):stdgo.Tuple<std.UInt, Bool> {
        return {
            final obj = stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._getc(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _space(_d:Decoder):Void {
        stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._space(_d);
    }
    static public function _attrval(_d:Decoder):Array<std.UInt> {
        return [for (i in stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._attrval(_d)) i];
    }
    static public function _rawToken(_d:Decoder):stdgo.Tuple<Token, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._rawToken(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function rawToken(_d:Decoder):stdgo.Tuple<Token, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension.rawToken(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _autoClose(_d:Decoder, _t:Token):stdgo.Tuple<Token, Bool> {
        return {
            final obj = stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._autoClose(_d, _t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _popElement(_d:Decoder, _t:EndElement):Bool {
        return stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._popElement(_d, _t);
    }
    static public function _syntaxError(_d:Decoder, _msg:String):stdgo.Error {
        return stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._syntaxError(_d, _msg);
    }
    static public function _pushNs(_d:Decoder, _local:String, _url:String, _ok:Bool):Void {
        stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._pushNs(_d, _local, _url, _ok);
    }
    static public function _pushElement(_d:Decoder, _name:Name):Void {
        stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._pushElement(_d, _name);
    }
    static public function _popEOF(_d:Decoder):Bool {
        return stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._popEOF(_d);
    }
    static public function _pushEOF(_d:Decoder):Void {
        stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._pushEOF(_d);
    }
    static public function _pop(_d:Decoder):T_stack {
        return stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._pop(_d);
    }
    static public function _push(_d:Decoder, _kind:StdTypes.Int):T_stack {
        return stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._push(_d, _kind);
    }
    static public function _switchToReader(_d:Decoder, _r:stdgo._internal.io.Io_Reader.Reader):Void {
        stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._switchToReader(_d, _r);
    }
    static public function _translate(_d:Decoder, _n:Name, _isElementName:Bool):Void {
        stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._translate(_d, _n, _isElementName);
    }
    static public function token(_d:Decoder):stdgo.Tuple<Token, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension.token(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function skip(_d:Decoder):stdgo.Error {
        return stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension.skip(_d);
    }
    static public function _unmarshalPath(_d:Decoder, _tinfo:T_typeInfo, _sv:stdgo._internal.reflect.Reflect_Value.Value, _parents:Array<String>, _start:StartElement, _depth:StdTypes.Int):stdgo.Tuple<Bool, stdgo.Error> {
        final _parents = ([for (i in _parents) i] : stdgo.Slice<stdgo.GoString>);
        return {
            final obj = stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._unmarshalPath(_d, _tinfo, _sv, _parents, _start, _depth);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _unmarshal(_d:Decoder, _val:stdgo._internal.reflect.Reflect_Value.Value, _start:StartElement, _depth:StdTypes.Int):stdgo.Error {
        return stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._unmarshal(_d, _val, _start, _depth);
    }
    static public function _unmarshalAttr(_d:Decoder, _val:stdgo._internal.reflect.Reflect_Value.Value, _attr:Attr):stdgo.Error {
        return stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._unmarshalAttr(_d, _val, _attr);
    }
    static public function _unmarshalTextInterface(_d:Decoder, _val:stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler):stdgo.Error {
        return stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._unmarshalTextInterface(_d, _val);
    }
    static public function _unmarshalInterface(_d:Decoder, _val:Unmarshaler, _start:StartElement):stdgo.Error {
        return stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension._unmarshalInterface(_d, _val, _start);
    }
    static public function decodeElement(_d:Decoder, _v:stdgo.AnyInterface, _start:StartElement):stdgo.Error {
        return stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension.decodeElement(_d, _v, _start);
    }
    static public function decode(_d:Decoder, _v:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.encoding.xml.Xml_Decoder_static_extension.Decoder_static_extension.decode(_d, _v);
    }
}
class UnmarshalError_static_extension {
    static public function error(_e:UnmarshalError):String {
        return stdgo._internal.encoding.xml.Xml_UnmarshalError_static_extension.UnmarshalError_static_extension.error(_e);
    }
}
class CharData_static_extension {
    static public function copy(_c:CharData):CharData {
        return stdgo._internal.encoding.xml.Xml_CharData_static_extension.CharData_static_extension.copy(_c);
    }
}
class Comment_static_extension {
    static public function copy(_c:Comment):Comment {
        return stdgo._internal.encoding.xml.Xml_Comment_static_extension.Comment_static_extension.copy(_c);
    }
}
class Directive_static_extension {
    static public function copy(_d:Directive):Directive {
        return stdgo._internal.encoding.xml.Xml_Directive_static_extension.Directive_static_extension.copy(_d);
    }
}
/**
    Package xml implements a simple XML 1.0 parser that
    understands XML name spaces.
**/
class Xml {
    /**
        Marshal returns the XML encoding of v.
        
        Marshal handles an array or slice by marshaling each of the elements.
        Marshal handles a pointer by marshaling the value it points at or, if the
        pointer is nil, by writing nothing. Marshal handles an interface value by
        marshaling the value it contains or, if the interface value is nil, by
        writing nothing. Marshal handles all other data by writing one or more XML
        elements containing the data.
        
        The name for the XML elements is taken from, in order of preference:
          - the tag on the XMLName field, if the data is a struct
          - the value of the XMLName field of type Name
          - the tag of the struct field used to obtain the data
          - the name of the struct field used to obtain the data
          - the name of the marshaled type
        
        The XML element for a struct contains marshaled elements for each of the
        exported fields of the struct, with these exceptions:
          - the XMLName field, described above, is omitted.
          - a field with tag "-" is omitted.
          - a field with tag "name,attr" becomes an attribute with
            the given name in the XML element.
          - a field with tag ",attr" becomes an attribute with the
            field name in the XML element.
          - a field with tag ",chardata" is written as character data,
            not as an XML element.
          - a field with tag ",cdata" is written as character data
            wrapped in one or more <![CDATA[ ... ]]> tags, not as an XML element.
          - a field with tag ",innerxml" is written verbatim, not subject
            to the usual marshaling procedure.
          - a field with tag ",comment" is written as an XML comment, not
            subject to the usual marshaling procedure. It must not contain
            the "--" string within it.
          - a field with a tag including the "omitempty" option is omitted
            if the field value is empty. The empty values are false, 0, any
            nil pointer or interface value, and any array, slice, map, or
            string of length zero.
          - an anonymous struct field is handled as if the fields of its
            value were part of the outer struct.
          - a field implementing Marshaler is written by calling its MarshalXML
            method.
          - a field implementing encoding.TextMarshaler is written by encoding the
            result of its MarshalText method as text.
        
        If a field uses a tag "a>b>c", then the element c will be nested inside
        parent elements a and b. Fields that appear next to each other that name
        the same parent will be enclosed in one XML element.
        
        If the XML name for a struct field is defined by both the field tag and the
        struct's XMLName field, the names must match.
        
        See MarshalIndent for an example.
        
        Marshal will return an error if asked to marshal a channel, function, or map.
    **/
    static public function marshal(_v:stdgo.AnyInterface):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.xml.Xml_marshal.marshal(_v);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        MarshalIndent works like Marshal, but each XML element begins on a new
        indented line that starts with prefix and is followed by one or more
        copies of indent according to the nesting depth.
    **/
    static public function marshalIndent(_v:stdgo.AnyInterface, _prefix:String, _indent:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.xml.Xml_marshalIndent.marshalIndent(_v, _prefix, _indent);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        NewEncoder returns a new encoder that writes to w.
    **/
    static public function newEncoder(_w:stdgo._internal.io.Io_Writer.Writer):Encoder {
        return stdgo._internal.encoding.xml.Xml_newEncoder.newEncoder(_w);
    }
    /**
        Unmarshal parses the XML-encoded data and stores the result in
        the value pointed to by v, which must be an arbitrary struct,
        slice, or string. Well-formed data that does not fit into v is
        discarded.
        
        Because Unmarshal uses the reflect package, it can only assign
        to exported (upper case) fields. Unmarshal uses a case-sensitive
        comparison to match XML element names to tag values and struct
        field names.
        
        Unmarshal maps an XML element to a struct using the following rules.
        In the rules, the tag of a field refers to the value associated with the
        key 'xml' in the struct field's tag (see the example above).
        
          - If the struct has a field of type []byte or string with tag
            ",innerxml", Unmarshal accumulates the raw XML nested inside the
            element in that field. The rest of the rules still apply.
        
          - If the struct has a field named XMLName of type Name,
            Unmarshal records the element name in that field.
        
          - If the XMLName field has an associated tag of the form
            "name" or "namespace-URL name", the XML element must have
            the given name (and, optionally, name space) or else Unmarshal
            returns an error.
        
          - If the XML element has an attribute whose name matches a
            struct field name with an associated tag containing ",attr" or
            the explicit name in a struct field tag of the form "name,attr",
            Unmarshal records the attribute value in that field.
        
          - If the XML element has an attribute not handled by the previous
            rule and the struct has a field with an associated tag containing
            ",any,attr", Unmarshal records the attribute value in the first
            such field.
        
          - If the XML element contains character data, that data is
            accumulated in the first struct field that has tag ",chardata".
            The struct field may have type []byte or string.
            If there is no such field, the character data is discarded.
        
          - If the XML element contains comments, they are accumulated in
            the first struct field that has tag ",comment".  The struct
            field may have type []byte or string. If there is no such
            field, the comments are discarded.
        
          - If the XML element contains a sub-element whose name matches
            the prefix of a tag formatted as "a" or "a>b>c", unmarshal
            will descend into the XML structure looking for elements with the
            given names, and will map the innermost elements to that struct
            field. A tag starting with ">" is equivalent to one starting
            with the field name followed by ">".
        
          - If the XML element contains a sub-element whose name matches
            a struct field's XMLName tag and the struct field has no
            explicit name tag as per the previous rule, unmarshal maps
            the sub-element to that struct field.
        
          - If the XML element contains a sub-element whose name matches a
            field without any mode flags (",attr", ",chardata", etc), Unmarshal
            maps the sub-element to that struct field.
        
          - If the XML element contains a sub-element that hasn't matched any
            of the above rules and the struct has a field with tag ",any",
            unmarshal maps the sub-element to that struct field.
        
          - An anonymous struct field is handled as if the fields of its
            value were part of the outer struct.
        
          - A struct field with tag "-" is never unmarshaled into.
        
        If Unmarshal encounters a field type that implements the Unmarshaler
        interface, Unmarshal calls its UnmarshalXML method to produce the value from
        the XML element.  Otherwise, if the value implements
        encoding.TextUnmarshaler, Unmarshal calls that value's UnmarshalText method.
        
        Unmarshal maps an XML element to a string or []byte by saving the
        concatenation of that element's character data in the string or
        []byte. The saved []byte is never nil.
        
        Unmarshal maps an attribute value to a string or []byte by saving
        the value in the string or slice.
        
        Unmarshal maps an attribute value to an Attr by saving the attribute,
        including its name, in the Attr.
        
        Unmarshal maps an XML element or attribute value to a slice by
        extending the length of the slice and mapping the element or attribute
        to the newly created value.
        
        Unmarshal maps an XML element or attribute value to a bool by
        setting it to the boolean value represented by the string. Whitespace
        is trimmed and ignored.
        
        Unmarshal maps an XML element or attribute value to an integer or
        floating-point field by setting the field to the result of
        interpreting the string value in decimal. There is no check for
        overflow. Whitespace is trimmed and ignored.
        
        Unmarshal maps an XML element to a Name by recording the element
        name.
        
        Unmarshal maps an XML element to a pointer by setting the pointer
        to a freshly allocated value and then mapping the element to that value.
        
        A missing element or empty attribute value will be unmarshaled as a zero value.
        If the field is a slice, a zero value will be appended to the field. Otherwise, the
        field will be set to its zero value.
    **/
    static public function unmarshal(_data:Array<std.UInt>, _v:stdgo.AnyInterface):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.xml.Xml_unmarshal.unmarshal(_data, _v);
    }
    /**
        CopyToken returns a copy of a Token.
    **/
    static public function copyToken(_t:Token):Token {
        return stdgo._internal.encoding.xml.Xml_copyToken.copyToken(_t);
    }
    /**
        NewDecoder creates a new XML parser reading from r.
        If r does not implement io.ByteReader, NewDecoder will
        do its own buffering.
    **/
    static public function newDecoder(_r:stdgo._internal.io.Io_Reader.Reader):Decoder {
        return stdgo._internal.encoding.xml.Xml_newDecoder.newDecoder(_r);
    }
    /**
        NewTokenDecoder creates a new XML parser using an underlying token stream.
    **/
    static public function newTokenDecoder(_t:TokenReader):Decoder {
        return stdgo._internal.encoding.xml.Xml_newTokenDecoder.newTokenDecoder(_t);
    }
    /**
        EscapeText writes to w the properly escaped XML equivalent
        of the plain text data s.
    **/
    static public function escapeText(_w:stdgo._internal.io.Io_Writer.Writer, _s:Array<std.UInt>):stdgo.Error {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.xml.Xml_escapeText.escapeText(_w, _s);
    }
    /**
        Escape is like EscapeText but omits the error return value.
        It is provided for backwards compatibility with Go 1.0.
        Code targeting Go 1.1 or later should use EscapeText.
    **/
    static public function escape(_w:stdgo._internal.io.Io_Writer.Writer, _s:Array<std.UInt>):Void {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.xml.Xml_escape.escape(_w, _s);
    }
}
