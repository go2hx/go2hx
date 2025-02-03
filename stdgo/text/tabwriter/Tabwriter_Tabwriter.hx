package stdgo.text.tabwriter;
/**
    Package tabwriter implements a write filter (tabwriter.Writer) that
    translates tabbed columns in input into properly aligned text.
    
    The package is using the Elastic Tabstops algorithm described at
    http://nickgravgaard.com/elastictabstops/index.html.
    
    The text/tabwriter package is frozen and is not accepting new features.
**/
class Tabwriter {
    /**
        NewWriter allocates and initializes a new tabwriter.Writer.
        The parameters are the same as for the Init function.
    **/
    static public inline function newWriter(_output:stdgo._internal.io.Io_Writer.Writer, _minwidth:StdTypes.Int, _tabwidth:StdTypes.Int, _padding:StdTypes.Int, _padchar:std.UInt, _flags:std.UInt):Writer {
        final _minwidth = (_minwidth : stdgo.GoInt);
        final _tabwidth = (_tabwidth : stdgo.GoInt);
        final _padding = (_padding : stdgo.GoInt);
        final _padchar = (_padchar : stdgo.GoUInt8);
        final _flags = (_flags : stdgo.GoUInt);
        return stdgo._internal.text.tabwriter.Tabwriter_newWriter.newWriter(_output, _minwidth, _tabwidth, _padding, _padchar, _flags);
    }
}
