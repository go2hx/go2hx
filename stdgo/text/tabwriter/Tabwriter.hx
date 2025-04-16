package stdgo.text.tabwriter;
var filterHTML : stdgo.GoUInt = 1i32;
var stripEscape : stdgo.GoUInt = 2i32;
var alignRight : stdgo.GoUInt = 4i32;
var discardEmptyColumns : stdgo.GoUInt = 8i32;
var tabIndent : stdgo.GoUInt = 16i32;
var debug : stdgo.GoUInt = 32i32;
var escape : stdgo.GoInt32 = 255i32;
typedef Writer = stdgo._internal.text.tabwriter.Tabwriter_writer.Writer;
typedef WriterPointer = stdgo._internal.text.tabwriter.Tabwriter_writerpointer.WriterPointer;
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
    static public inline function newWriter(_output:stdgo._internal.io.Io_writer.Writer, _minwidth:stdgo.GoInt, _tabwidth:stdgo.GoInt, _padding:stdgo.GoInt, _padchar:stdgo.GoUInt8, _flags:stdgo.GoUInt):stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> return stdgo._internal.text.tabwriter.Tabwriter_newwriter.newWriter(_output, _minwidth, _tabwidth, _padding, _padchar, _flags);
}
