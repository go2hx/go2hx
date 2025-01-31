package stdgo._internal.text.tabwriter;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
function newWriter(_output:stdgo._internal.io.Io_Writer.Writer, _minwidth:stdgo.GoInt, _tabwidth:stdgo.GoInt, _padding:stdgo.GoInt, _padchar:stdgo.GoUInt8, _flags:stdgo.GoUInt):stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer> {
        return @:check2r (stdgo.Go.setRef(({} : stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer)) : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_Writer.Writer>).init(_output, _minwidth, _tabwidth, _padding, _padchar, _flags);
    }
