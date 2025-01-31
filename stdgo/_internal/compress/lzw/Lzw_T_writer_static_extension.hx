package stdgo._internal.compress.lzw;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
@:keep class T_writer_static_extension {
    @:interfacetypeffun
    static public function flush(t:stdgo._internal.compress.lzw.Lzw_T_writer.T_writer):stdgo.Error return t.flush();
}
