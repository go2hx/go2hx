package stdgo._internal.text.tabwriter;
@:structInit @:using(stdgo._internal.text.tabwriter.Tabwriter_writer_static_extension.Writer_static_extension) class Writer {
    public var _output : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _minwidth : stdgo.GoInt = 0;
    public var _tabwidth : stdgo.GoInt = 0;
    public var _padding : stdgo.GoInt = 0;
    public var _padbytes : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8).__setNumber32__();
    public var _flags : stdgo.GoUInt = 0;
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _pos : stdgo.GoInt = 0;
    public var _cell : stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell = ({} : stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell);
    public var _endChar : stdgo.GoUInt8 = 0;
    public var _lines : stdgo.Slice<stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell>> = (null : stdgo.Slice<stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell>>);
    public var _widths : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public function new(?_output:stdgo._internal.io.Io_writer.Writer, ?_minwidth:stdgo.GoInt, ?_tabwidth:stdgo.GoInt, ?_padding:stdgo.GoInt, ?_padbytes:stdgo.GoArray<stdgo.GoUInt8>, ?_flags:stdgo.GoUInt, ?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_pos:stdgo.GoInt, ?_cell:stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell, ?_endChar:stdgo.GoUInt8, ?_lines:stdgo.Slice<stdgo.Slice<stdgo._internal.text.tabwriter.Tabwriter_t_cell.T_cell>>, ?_widths:stdgo.Slice<stdgo.GoInt>) {
        if (_output != null) this._output = _output;
        if (_minwidth != null) this._minwidth = _minwidth;
        if (_tabwidth != null) this._tabwidth = _tabwidth;
        if (_padding != null) this._padding = _padding;
        if (_padbytes != null) this._padbytes = _padbytes;
        if (_flags != null) this._flags = _flags;
        if (_buf != null) this._buf = _buf;
        if (_pos != null) this._pos = _pos;
        if (_cell != null) this._cell = _cell;
        if (_endChar != null) this._endChar = _endChar;
        if (_lines != null) this._lines = _lines;
        if (_widths != null) this._widths = _widths;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Writer(
_output,
_minwidth,
_tabwidth,
_padding,
_padbytes,
_flags,
_buf,
_pos,
_cell,
_endChar,
_lines,
_widths);
    }
}
