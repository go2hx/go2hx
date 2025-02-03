package stdgo.encoding.xml;
@:structInit @:using(stdgo.encoding.xml.Xml.T_printer_static_extension) abstract T_printer(stdgo._internal.encoding.xml.Xml_T_printer.T_printer) from stdgo._internal.encoding.xml.Xml_T_printer.T_printer to stdgo._internal.encoding.xml.Xml_T_printer.T_printer {
    public var _w(get, set) : stdgo._internal.bufio.Bufio_Writer.Writer;
    function get__w():stdgo._internal.bufio.Bufio_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.bufio.Bufio_Writer.Writer):stdgo._internal.bufio.Bufio_Writer.Writer {
        this._w = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
        return v;
    }
    public var _encoder(get, set) : Encoder;
    function get__encoder():Encoder return this._encoder;
    function set__encoder(v:Encoder):Encoder {
        this._encoder = (v : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Encoder.Encoder>);
        return v;
    }
    public var _seq(get, set) : StdTypes.Int;
    function get__seq():StdTypes.Int return this._seq;
    function set__seq(v:StdTypes.Int):StdTypes.Int {
        this._seq = (v : stdgo.GoInt);
        return v;
    }
    public var _indent(get, set) : String;
    function get__indent():String return this._indent;
    function set__indent(v:String):String {
        this._indent = (v : stdgo.GoString);
        return v;
    }
    public var _prefix(get, set) : String;
    function get__prefix():String return this._prefix;
    function set__prefix(v:String):String {
        this._prefix = (v : stdgo.GoString);
        return v;
    }
    public var _depth(get, set) : StdTypes.Int;
    function get__depth():StdTypes.Int return this._depth;
    function set__depth(v:StdTypes.Int):StdTypes.Int {
        this._depth = (v : stdgo.GoInt);
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
        this._attrNS = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        return v;
    }
    public var _attrPrefix(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
    function get__attrPrefix():stdgo.GoMap<stdgo.GoString, stdgo.GoString> return this._attrPrefix;
    function set__attrPrefix(v:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        this._attrPrefix = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        return v;
    }
    public var _prefixes(get, set) : Array<String>;
    function get__prefixes():Array<String> return [for (i in this._prefixes) i];
    function set__prefixes(v:Array<String>):Array<String> {
        this._prefixes = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
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
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_w:stdgo._internal.bufio.Bufio_Writer.Writer, ?_encoder:Encoder, ?_seq:StdTypes.Int, ?_indent:String, ?_prefix:String, ?_depth:StdTypes.Int, ?_indentedIn:Bool, ?_putNewline:Bool, ?_attrNS:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?_attrPrefix:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?_prefixes:Array<String>, ?_tags:Array<Name>, ?_closed:Bool, ?_err:stdgo.Error) this = new stdgo._internal.encoding.xml.Xml_T_printer.T_printer(
(_w : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>),
(_encoder : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Encoder.Encoder>),
(_seq : stdgo.GoInt),
(_indent : stdgo.GoString),
(_prefix : stdgo.GoString),
(_depth : stdgo.GoInt),
_indentedIn,
_putNewline,
(_attrNS : stdgo.GoMap<stdgo.GoString, stdgo.GoString>),
(_attrPrefix : stdgo.GoMap<stdgo.GoString, stdgo.GoString>),
([for (i in _prefixes) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in _tags) i] : stdgo.Slice<stdgo._internal.encoding.xml.Xml_Name.Name>),
_closed,
(_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
