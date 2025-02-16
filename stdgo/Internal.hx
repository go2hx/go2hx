package stdgo;
var defaultOutput(get, set) : (stdgo.GoUIntptr, Array<std.UInt>) -> stdgo.Error;
private function get_defaultOutput():(stdgo.GoUIntptr, Array<std.UInt>) -> stdgo.Error return (_0, _1) -> stdgo._internal.log.internal.Internal_defaultoutput.defaultOutput(_0, [for (i in _1) i]);
private function set_defaultOutput(v:(stdgo.GoUIntptr, Array<std.UInt>) -> stdgo.Error):(stdgo.GoUIntptr, Array<std.UInt>) -> stdgo.Error {
        stdgo._internal.log.internal.Internal_defaultoutput.defaultOutput = v;
        return v;
    }
/**
    * Package internal contains definitions used by both log and log/slog.
**/
class Internal {

}
