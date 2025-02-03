package stdgo.log.internal;
var defaultOutput(get, set) : (stdgo.GoUIntptr, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.Error;
private function get_defaultOutput():(stdgo.GoUIntptr, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.Error return (_0, _1) -> stdgo._internal.log.internal.Internal_defaultOutput.defaultOutput(_0, [for (i in _1) i]);
private function set_defaultOutput(v:(stdgo.GoUIntptr, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.Error):(stdgo.GoUIntptr, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.Error {
        stdgo._internal.log.internal.Internal_defaultOutput.defaultOutput = v;
        return v;
    }
/**
    Package internal contains definitions used by both log and log/slog.
**/
class Internal {

}
