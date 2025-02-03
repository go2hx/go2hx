package stdgo.text.tabwriter;
class Writer_static_extension {
    static public function write(_b:Writer, _buf:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.text.tabwriter.Tabwriter_Writer_static_extension.Writer_static_extension.write(_b, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _flushNoDefers(_b:Writer):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>);
        stdgo._internal.text.tabwriter.Tabwriter_Writer_static_extension.Writer_static_extension._flushNoDefers(_b);
    }
    static public function _flush(_b:Writer):stdgo.Error {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>);
        return stdgo._internal.text.tabwriter.Tabwriter_Writer_static_extension.Writer_static_extension._flush(_b);
    }
    static public function flush(_b:Writer):stdgo.Error {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>);
        return stdgo._internal.text.tabwriter.Tabwriter_Writer_static_extension.Writer_static_extension.flush(_b);
    }
    static public function _handlePanic(_b:Writer, _err:stdgo.Error, _op:String):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>);
        final _err = (_err : stdgo.Ref<stdgo.Error>);
        final _op = (_op : stdgo.GoString);
        stdgo._internal.text.tabwriter.Tabwriter_Writer_static_extension.Writer_static_extension._handlePanic(_b, _err, _op);
    }
    static public function _terminateCell(_b:Writer, _htab:Bool):StdTypes.Int {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>);
        return stdgo._internal.text.tabwriter.Tabwriter_Writer_static_extension.Writer_static_extension._terminateCell(_b, _htab);
    }
    static public function _endEscape(_b:Writer):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>);
        stdgo._internal.text.tabwriter.Tabwriter_Writer_static_extension.Writer_static_extension._endEscape(_b);
    }
    static public function _startEscape(_b:Writer, _ch:std.UInt):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>);
        final _ch = (_ch : stdgo.GoUInt8);
        stdgo._internal.text.tabwriter.Tabwriter_Writer_static_extension.Writer_static_extension._startEscape(_b, _ch);
    }
    static public function _updateWidth(_b:Writer):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>);
        stdgo._internal.text.tabwriter.Tabwriter_Writer_static_extension.Writer_static_extension._updateWidth(_b);
    }
    static public function _append(_b:Writer, _text:Array<std.UInt>):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>);
        final _text = ([for (i in _text) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.text.tabwriter.Tabwriter_Writer_static_extension.Writer_static_extension._append(_b, _text);
    }
    static public function _format(_b:Writer, _pos0:StdTypes.Int, _line0:StdTypes.Int, _line1:StdTypes.Int):StdTypes.Int {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>);
        final _pos0 = (_pos0 : stdgo.GoInt);
        final _line0 = (_line0 : stdgo.GoInt);
        final _line1 = (_line1 : stdgo.GoInt);
        return stdgo._internal.text.tabwriter.Tabwriter_Writer_static_extension.Writer_static_extension._format(_b, _pos0, _line0, _line1);
    }
    static public function _writeLines(_b:Writer, _pos0:StdTypes.Int, _line0:StdTypes.Int, _line1:StdTypes.Int):StdTypes.Int {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>);
        final _pos0 = (_pos0 : stdgo.GoInt);
        final _line0 = (_line0 : stdgo.GoInt);
        final _line1 = (_line1 : stdgo.GoInt);
        return stdgo._internal.text.tabwriter.Tabwriter_Writer_static_extension.Writer_static_extension._writeLines(_b, _pos0, _line0, _line1);
    }
    static public function _writePadding(_b:Writer, _textw:StdTypes.Int, _cellw:StdTypes.Int, _useTabs:Bool):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>);
        final _textw = (_textw : stdgo.GoInt);
        final _cellw = (_cellw : stdgo.GoInt);
        stdgo._internal.text.tabwriter.Tabwriter_Writer_static_extension.Writer_static_extension._writePadding(_b, _textw, _cellw, _useTabs);
    }
    static public function _writeN(_b:Writer, _src:Array<std.UInt>, _n:StdTypes.Int):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.text.tabwriter.Tabwriter_Writer_static_extension.Writer_static_extension._writeN(_b, _src, _n);
    }
    static public function _write0(_b:Writer, _buf:Array<std.UInt>):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.text.tabwriter.Tabwriter_Writer_static_extension.Writer_static_extension._write0(_b, _buf);
    }
    static public function _dump(_b:Writer):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>);
        stdgo._internal.text.tabwriter.Tabwriter_Writer_static_extension.Writer_static_extension._dump(_b);
    }
    static public function init(_b:Writer, _output:stdgo._internal.io.Io_Writer.Writer, _minwidth:StdTypes.Int, _tabwidth:StdTypes.Int, _padding:StdTypes.Int, _padchar:std.UInt, _flags:std.UInt):Writer {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>);
        final _minwidth = (_minwidth : stdgo.GoInt);
        final _tabwidth = (_tabwidth : stdgo.GoInt);
        final _padding = (_padding : stdgo.GoInt);
        final _padchar = (_padchar : stdgo.GoUInt8);
        final _flags = (_flags : stdgo.GoUInt);
        return stdgo._internal.text.tabwriter.Tabwriter_Writer_static_extension.Writer_static_extension.init(_b, _output, _minwidth, _tabwidth, _padding, _padchar, _flags);
    }
    static public function _reset(_b:Writer):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>);
        stdgo._internal.text.tabwriter.Tabwriter_Writer_static_extension.Writer_static_extension._reset(_b);
    }
    static public function _addLine(_b:Writer, _flushed:Bool):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>);
        stdgo._internal.text.tabwriter.Tabwriter_Writer_static_extension.Writer_static_extension._addLine(_b, _flushed);
    }
}
