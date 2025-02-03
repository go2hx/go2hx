package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.Encoder_static_extension) abstract Encoder(stdgo._internal.encoding.json.Json_Encoder.Encoder) from stdgo._internal.encoding.json.Json_Encoder.Encoder to stdgo._internal.encoding.json.Json_Encoder.Encoder {
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _escapeHTML(get, set) : Bool;
    function get__escapeHTML():Bool return this._escapeHTML;
    function set__escapeHTML(v:Bool):Bool {
        this._escapeHTML = v;
        return v;
    }
    public var _indentBuf(get, set) : Array<std.UInt>;
    function get__indentBuf():Array<std.UInt> return [for (i in this._indentBuf) i];
    function set__indentBuf(v:Array<std.UInt>):Array<std.UInt> {
        this._indentBuf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _indentPrefix(get, set) : String;
    function get__indentPrefix():String return this._indentPrefix;
    function set__indentPrefix(v:String):String {
        this._indentPrefix = (v : stdgo.GoString);
        return v;
    }
    public var _indentValue(get, set) : String;
    function get__indentValue():String return this._indentValue;
    function set__indentValue(v:String):String {
        this._indentValue = (v : stdgo.GoString);
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io_Writer.Writer, ?_err:stdgo.Error, ?_escapeHTML:Bool, ?_indentBuf:Array<std.UInt>, ?_indentPrefix:String, ?_indentValue:String) this = new stdgo._internal.encoding.json.Json_Encoder.Encoder(_w, (_err : stdgo.Error), _escapeHTML, ([for (i in _indentBuf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_indentPrefix : stdgo.GoString), (_indentValue : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
