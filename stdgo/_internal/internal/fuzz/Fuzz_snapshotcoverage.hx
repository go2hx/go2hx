package stdgo._internal.internal.fuzz;
function snapshotCoverage():Void {
        var _cov = stdgo._internal.internal.fuzz.Fuzz__coverage._coverage();
        for (_i => _b in _cov) {
            _b = (_b | ((_b >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) : stdgo.GoUInt8);
            _b = (_b | ((_b >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) : stdgo.GoUInt8);
            _b = (_b | ((_b >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) : stdgo.GoUInt8);
            _b = (_b - ((_b >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) : stdgo.GoUInt8);
            stdgo._internal.internal.fuzz.Fuzz__coveragesnapshot._coverageSnapshot[(_i : stdgo.GoInt)] = _b;
        };
    }
