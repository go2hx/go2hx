package stdgo._internal.text.tabwriter;
function newWriter(_output:stdgo._internal.io.Io_writer.Writer, _minwidth:stdgo.GoInt, _tabwidth:stdgo.GoInt, _padding:stdgo.GoInt, _padchar:stdgo.GoUInt8, _flags:stdgo.GoUInt):stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> {
        //"file:///home/runner/.go/go1.21.3/src/text/tabwriter/tabwriter.go#L599"
        return (stdgo.Go.setRef(({} : stdgo._internal.text.tabwriter.Tabwriter_writer.Writer)) : stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer>).init(_output, _minwidth, _tabwidth, _padding, _padchar, _flags);
    }
