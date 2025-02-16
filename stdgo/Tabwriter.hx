package stdgo;
final filterHTML : std.UInt = stdgo._internal.text.tabwriter.Tabwriter_filterhtml.filterHTML;
final stripEscape = stdgo._internal.text.tabwriter.Tabwriter_stripescape.stripEscape;
final alignRight = stdgo._internal.text.tabwriter.Tabwriter_alignright.alignRight;
final discardEmptyColumns = stdgo._internal.text.tabwriter.Tabwriter_discardemptycolumns.discardEmptyColumns;
final tabIndent = stdgo._internal.text.tabwriter.Tabwriter_tabindent.tabIndent;
final debug = stdgo._internal.text.tabwriter.Tabwriter_debug.debug;
final escape : StdTypes.Int = stdgo._internal.text.tabwriter.Tabwriter_escape.escape;
@:structInit @:using(stdgo.text.tabwriter.Tabwriter.T_cell_static_extension) @:dox(hide) abstract T_cell(stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell) from stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell to stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell {
    public var _size(get, set) : StdTypes.Int;
    function get__size():StdTypes.Int return this._size;
    function set__size(v:StdTypes.Int):StdTypes.Int {
        this._size = (v : stdgo.GoInt);
        return v;
    }
    public var _width(get, set) : StdTypes.Int;
    function get__width():StdTypes.Int return this._width;
    function set__width(v:StdTypes.Int):StdTypes.Int {
        this._width = (v : stdgo.GoInt);
        return v;
    }
    public var _htab(get, set) : Bool;
    function get__htab():Bool return this._htab;
    function set__htab(v:Bool):Bool {
        this._htab = v;
        return v;
    }
    public function new(?_size:StdTypes.Int, ?_width:StdTypes.Int, ?_htab:Bool) this = new stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell((_size : stdgo.GoInt), (_width : stdgo.GoInt), _htab);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.tabwriter.Tabwriter.Writer_static_extension) abstract Writer(stdgo._internal.text.tabwriter.Tabwriter_writer.Writer) from stdgo._internal.text.tabwriter.Tabwriter_writer.Writer to stdgo._internal.text.tabwriter.Tabwriter_writer.Writer {
    public var _output(get, set) : stdgo._internal.io.Io_writer.Writer;
    function get__output():stdgo._internal.io.Io_writer.Writer return this._output;
    function set__output(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
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
        this._lines = ([for (i in v) ([for (i in i) i] : stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell>)] : stdgo.Slice<stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell>>);
        return v;
    }
    public var _widths(get, set) : Array<StdTypes.Int>;
    function get__widths():Array<StdTypes.Int> return [for (i in this._widths) i];
    function set__widths(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._widths = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public function new(?_output:stdgo._internal.io.Io_writer.Writer, ?_minwidth:StdTypes.Int, ?_tabwidth:StdTypes.Int, ?_padding:StdTypes.Int, ?_padbytes:haxe.ds.Vector<std.UInt>, ?_flags:std.UInt, ?_buf:Array<std.UInt>, ?_pos:StdTypes.Int, ?_cell:T_cell, ?_endChar:std.UInt, ?_lines:Array<Array<T_cell>>, ?_widths:Array<StdTypes.Int>) this = new stdgo._internal.text.tabwriter.Tabwriter_writer.Writer(
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
([for (i in _lines) ([for (i in i) i] : stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell>)] : stdgo.Slice<stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell>>),
([for (i in _widths) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.text.tabwriter.Tabwriter.T_osError_static_extension) @:dox(hide) abstract T_osError(stdgo._internal.text.tabwriter.Tabwriter_t_oserror.T_osError) from stdgo._internal.text.tabwriter.Tabwriter_t_oserror.T_osError to stdgo._internal.text.tabwriter.Tabwriter_t_oserror.T_osError {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_err:stdgo.Error) this = new stdgo._internal.text.tabwriter.Tabwriter_t_oserror.T_osError((_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_cellPointer = stdgo._internal.text.tabwriter.Tabwriter_t_cellpointer.T_cellPointer;
@:dox(hide) class T_cell_static_extension {

}
typedef WriterPointer = stdgo._internal.text.tabwriter.Tabwriter_writerpointer.WriterPointer;
class Writer_static_extension {
    static public function write(_b:Writer, _buf:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.text.tabwriter.Tabwriter_writer_static_extension.Writer_static_extension.write(_b, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _flushNoDefers(_b:Writer):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>);
        stdgo._internal.text.tabwriter.Tabwriter_writer_static_extension.Writer_static_extension._flushNoDefers(_b);
    }
    static public function _flush(_b:Writer):stdgo.Error {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>);
        return stdgo._internal.text.tabwriter.Tabwriter_writer_static_extension.Writer_static_extension._flush(_b);
    }
    static public function flush(_b:Writer):stdgo.Error {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>);
        return stdgo._internal.text.tabwriter.Tabwriter_writer_static_extension.Writer_static_extension.flush(_b);
    }
    static public function _handlePanic(_b:Writer, _err:stdgo.Error, _op:String):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>);
        final _err = (_err : stdgo.Ref<stdgo.Error>);
        final _op = (_op : stdgo.GoString);
        stdgo._internal.text.tabwriter.Tabwriter_writer_static_extension.Writer_static_extension._handlePanic(_b, _err, _op);
    }
    static public function _terminateCell(_b:Writer, _htab:Bool):StdTypes.Int {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>);
        return stdgo._internal.text.tabwriter.Tabwriter_writer_static_extension.Writer_static_extension._terminateCell(_b, _htab);
    }
    static public function _endEscape(_b:Writer):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>);
        stdgo._internal.text.tabwriter.Tabwriter_writer_static_extension.Writer_static_extension._endEscape(_b);
    }
    static public function _startEscape(_b:Writer, _ch:std.UInt):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>);
        final _ch = (_ch : stdgo.GoUInt8);
        stdgo._internal.text.tabwriter.Tabwriter_writer_static_extension.Writer_static_extension._startEscape(_b, _ch);
    }
    static public function _updateWidth(_b:Writer):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>);
        stdgo._internal.text.tabwriter.Tabwriter_writer_static_extension.Writer_static_extension._updateWidth(_b);
    }
    static public function _append(_b:Writer, _text:Array<std.UInt>):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>);
        final _text = ([for (i in _text) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.text.tabwriter.Tabwriter_writer_static_extension.Writer_static_extension._append(_b, _text);
    }
    static public function _format(_b:Writer, _pos0:StdTypes.Int, _line0:StdTypes.Int, _line1:StdTypes.Int):StdTypes.Int {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>);
        final _pos0 = (_pos0 : stdgo.GoInt);
        final _line0 = (_line0 : stdgo.GoInt);
        final _line1 = (_line1 : stdgo.GoInt);
        return stdgo._internal.text.tabwriter.Tabwriter_writer_static_extension.Writer_static_extension._format(_b, _pos0, _line0, _line1);
    }
    static public function _writeLines(_b:Writer, _pos0:StdTypes.Int, _line0:StdTypes.Int, _line1:StdTypes.Int):StdTypes.Int {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>);
        final _pos0 = (_pos0 : stdgo.GoInt);
        final _line0 = (_line0 : stdgo.GoInt);
        final _line1 = (_line1 : stdgo.GoInt);
        return stdgo._internal.text.tabwriter.Tabwriter_writer_static_extension.Writer_static_extension._writeLines(_b, _pos0, _line0, _line1);
    }
    static public function _writePadding(_b:Writer, _textw:StdTypes.Int, _cellw:StdTypes.Int, _useTabs:Bool):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>);
        final _textw = (_textw : stdgo.GoInt);
        final _cellw = (_cellw : stdgo.GoInt);
        stdgo._internal.text.tabwriter.Tabwriter_writer_static_extension.Writer_static_extension._writePadding(_b, _textw, _cellw, _useTabs);
    }
    static public function _writeN(_b:Writer, _src:Array<std.UInt>, _n:StdTypes.Int):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.text.tabwriter.Tabwriter_writer_static_extension.Writer_static_extension._writeN(_b, _src, _n);
    }
    static public function _write0(_b:Writer, _buf:Array<std.UInt>):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.text.tabwriter.Tabwriter_writer_static_extension.Writer_static_extension._write0(_b, _buf);
    }
    static public function _dump(_b:Writer):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>);
        stdgo._internal.text.tabwriter.Tabwriter_writer_static_extension.Writer_static_extension._dump(_b);
    }
    static public function init(_b:Writer, _output:stdgo._internal.io.Io_writer.Writer, _minwidth:StdTypes.Int, _tabwidth:StdTypes.Int, _padding:StdTypes.Int, _padchar:std.UInt, _flags:std.UInt):Writer {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>);
        final _minwidth = (_minwidth : stdgo.GoInt);
        final _tabwidth = (_tabwidth : stdgo.GoInt);
        final _padding = (_padding : stdgo.GoInt);
        final _padchar = (_padchar : stdgo.GoUInt8);
        final _flags = (_flags : stdgo.GoUInt);
        return stdgo._internal.text.tabwriter.Tabwriter_writer_static_extension.Writer_static_extension.init(_b, _output, _minwidth, _tabwidth, _padding, _padchar, _flags);
    }
    static public function _reset(_b:Writer):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>);
        stdgo._internal.text.tabwriter.Tabwriter_writer_static_extension.Writer_static_extension._reset(_b);
    }
    static public function _addLine(_b:Writer, _flushed:Bool):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>);
        stdgo._internal.text.tabwriter.Tabwriter_writer_static_extension.Writer_static_extension._addLine(_b, _flushed);
    }
}
@:dox(hide) typedef T_osErrorPointer = stdgo._internal.text.tabwriter.Tabwriter_t_oserrorpointer.T_osErrorPointer;
@:dox(hide) class T_osError_static_extension {

}
/**
    * Package tabwriter implements a write filter (tabwriter.Writer) that
    * translates tabbed columns in input into properly aligned text.
    * 
    * The package is using the Elastic Tabstops algorithm described at
    * http://nickgravgaard.com/elastictabstops/index.html.
    * 
    * The text/tabwriter package is frozen and is not accepting new features.
**/
class Tabwriter {
    /**
        * NewWriter allocates and initializes a new tabwriter.Writer.
        * The parameters are the same as for the Init function.
    **/
    static public inline function newWriter(_output:stdgo._internal.io.Io_writer.Writer, _minwidth:StdTypes.Int, _tabwidth:StdTypes.Int, _padding:StdTypes.Int, _padchar:std.UInt, _flags:std.UInt):Writer {
        final _minwidth = (_minwidth : stdgo.GoInt);
        final _tabwidth = (_tabwidth : stdgo.GoInt);
        final _padding = (_padding : stdgo.GoInt);
        final _padchar = (_padchar : stdgo.GoUInt8);
        final _flags = (_flags : stdgo.GoUInt);
        return stdgo._internal.text.tabwriter.Tabwriter_newwriter.newWriter(_output, _minwidth, _tabwidth, _padding, _padchar, _flags);
    }
}
