package stdgo.math.big;
@:structInit @:using(stdgo.math.big.Big.T_byteReader_static_extension) abstract T_byteReader(stdgo._internal.math.big.Big_T_byteReader.T_byteReader) from stdgo._internal.math.big.Big_T_byteReader.T_byteReader to stdgo._internal.math.big.Big_T_byteReader.T_byteReader {
    public var scanState(get, set) : stdgo._internal.fmt.Fmt_ScanState.ScanState;
    function get_scanState():stdgo._internal.fmt.Fmt_ScanState.ScanState return this.scanState;
    function set_scanState(v:stdgo._internal.fmt.Fmt_ScanState.ScanState):stdgo._internal.fmt.Fmt_ScanState.ScanState {
        this.scanState = v;
        return v;
    }
    public function new(?scanState:stdgo._internal.fmt.Fmt_ScanState.ScanState) this = new stdgo._internal.math.big.Big_T_byteReader.T_byteReader(scanState);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
