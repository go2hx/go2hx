package stdgo.text.scanner;
@:structInit @:using(stdgo.text.scanner.Scanner.T_errReader_static_extension) abstract T_errReader(stdgo._internal.text.scanner.Scanner_T_errReader.T_errReader) from stdgo._internal.text.scanner.Scanner_T_errReader.T_errReader to stdgo._internal.text.scanner.Scanner_T_errReader.T_errReader {
    public function new() this = new stdgo._internal.text.scanner.Scanner_T_errReader.T_errReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
