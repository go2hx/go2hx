package stdgo.log;
/**
    Package internal contains definitions used by both log and log/slog.
**/
private var __go2hxdoc__package : Bool;
var defaultOutput(get, set) : (_pc:stdgo.GoUIntptr, _data:stdgo.Slice<stdgo.GoByte>) -> stdgo.Error;
private function get_defaultOutput():(_pc:stdgo.GoUIntptr, _data:stdgo.Slice<stdgo.GoByte>) -> stdgo.Error return stdgo._internal.log.internal.Internal.defaultOutput;
private function set_defaultOutput(v:(_pc:stdgo.GoUIntptr, _data:stdgo.Slice<stdgo.GoByte>) -> stdgo.Error):(_pc:stdgo.GoUIntptr, _data:stdgo.Slice<stdgo.GoByte>) -> stdgo.Error return stdgo._internal.log.internal.Internal.defaultOutput = v;
