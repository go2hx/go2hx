package stdgo.text.tabwriter;
@:structInit @:using(stdgo.text.tabwriter.Tabwriter.Writer_static_extension) abstract Writer(stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer) from stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer to stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer {
    public var _output(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__output():stdgo._internal.io.Io_Writer.Writer return this._output;
    function set__output(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._output = v;
        return v;
    }
    public var _minwidth(get, set) : StdTypes.Int;
    function get__minwidth():StdTypes.Int return this._minwidth;
    function set__minwidth(v:StdTypes.Int):StdTypes.Int {
        this._minwidth = (v : stdgo.GoInt);
        return v;
    }
    public var _tabwidth(get, set) : StdTypes.Int;
    function get__tabwidth():StdTypes.Int return this._tabwidth;
    function set__tabwidth(v:StdTypes.Int):StdTypes.Int {
        this._tabwidth = (v : stdgo.GoInt);
        return v;
    }
    public var _padding(get, set) : StdTypes.Int;
    function get__padding():StdTypes.Int return this._padding;
    function set__padding(v:StdTypes.Int):StdTypes.Int {
        this._padding = (v : stdgo.GoInt);
        return v;
    }
    public var _padbytes(get, set) : haxe.ds.Vector<std.UInt>;
    function get__padbytes():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._padbytes) i]);
    function set__padbytes(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._padbytes = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _flags(get, set) : std.UInt;
    function get__flags():std.UInt return this._flags;
    function set__flags(v:std.UInt):std.UInt {
        this._flags = (v : stdgo.GoUInt);
        return v;
    }
    public var _buf(get, set) : Array<std.UInt>;
    function get__buf():Array<std.UInt> return [for (i in this._buf) i];
    function set__buf(v:Array<std.UInt>):Array<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _pos(get, set) : StdTypes.Int;
    function get__pos():StdTypes.Int return this._pos;
    function set__pos(v:StdTypes.Int):StdTypes.Int {
        this._pos = (v : stdgo.GoInt);
        return v;
    }
    public var _cell(get, set) : T_cell;
    function get__cell():T_cell return this._cell;
    function set__cell(v:T_cell):T_cell {
        this._cell = v;
        return v;
    }
    public var _endChar(get, set) : std.UInt;
    function get__endChar():std.UInt return this._endChar;
    function set__endChar(v:std.UInt):std.UInt {
        this._endChar = (v : stdgo.GoUInt8);
        return v;
    }
    public var _lines(get, set) : Array<Array<T_cell>>;
    function get__lines():Array<Array<T_cell>> return [for (i in this._lines) [for (i in i) i]];
    function set__lines(v:Array<Array<T_cell>>):Array<Array<T_cell>> {
        this._lines = ([for (i in v) ([for (i in i) i] : stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_T_cell.T_cell>)] : stdgo.Slice<stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_T_cell.T_cell>>);
        return v;
    }
    public var _widths(get, set) : Array<StdTypes.Int>;
    function get__widths():Array<StdTypes.Int> return [for (i in this._widths) i];
    function set__widths(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._widths = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public function new(?_output:stdgo._internal.io.Io_Writer.Writer, ?_minwidth:StdTypes.Int, ?_tabwidth:StdTypes.Int, ?_padding:StdTypes.Int, ?_padbytes:haxe.ds.Vector<std.UInt>, ?_flags:std.UInt, ?_buf:Array<std.UInt>, ?_pos:StdTypes.Int, ?_cell:T_cell, ?_endChar:std.UInt, ?_lines:Array<Array<T_cell>>, ?_widths:Array<StdTypes.Int>) this = new stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer(
_output,
(_minwidth : stdgo.GoInt),
(_tabwidth : stdgo.GoInt),
(_padding : stdgo.GoInt),
([for (i in _padbytes) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
(_flags : stdgo.GoUInt),
([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(_pos : stdgo.GoInt),
_cell,
(_endChar : stdgo.GoUInt8),
([for (i in _lines) ([for (i in i) i] : stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_T_cell.T_cell>)] : stdgo.Slice<stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_T_cell.T_cell>>),
([for (i in _widths) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
