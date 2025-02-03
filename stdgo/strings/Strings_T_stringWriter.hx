package stdgo.strings;
@:structInit @:using(stdgo.strings.Strings.T_stringWriter_static_extension) abstract T_stringWriter(stdgo._internal.strings.Strings_T_stringWriter.T_stringWriter) from stdgo._internal.strings.Strings_T_stringWriter.T_stringWriter to stdgo._internal.strings.Strings_T_stringWriter.T_stringWriter {
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io_Writer.Writer) this = new stdgo._internal.strings.Strings_T_stringWriter.T_stringWriter(_w);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
