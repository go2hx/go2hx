package stdgo._internal.encoding.csv;
@:structInit @:using(stdgo._internal.encoding.csv.Csv_t_errorwriter_static_extension.T_errorWriter_static_extension) class T_errorWriter {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_errorWriter();
    }
}
