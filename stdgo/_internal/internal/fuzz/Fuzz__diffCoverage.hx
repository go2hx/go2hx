package stdgo._internal.internal.fuzz;
function _diffCoverage(_base:stdgo.Slice<stdgo.GoUInt8>, _snapshot:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        if ((_base.length) != ((_snapshot.length))) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("the number of coverage bits changed: before=%d, after=%d" : stdgo.GoString), stdgo.Go.toInterface((_base.length)), stdgo.Go.toInterface((_snapshot.length))));
        };
        var _found = (false : Bool);
        for (_i => _ in _snapshot) {
            if ((_snapshot[(_i : stdgo.GoInt)] & ((_base[(_i : stdgo.GoInt)] ^ (-1i32 : stdgo.GoInt32) : stdgo.GoUInt8)) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                _found = true;
                break;
            };
        };
        if (!_found) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _diff = (new stdgo.Slice<stdgo.GoUInt8>((_snapshot.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _diff) {
            _diff[(_i : stdgo.GoInt)] = (_snapshot[(_i : stdgo.GoInt)] & ((_base[(_i : stdgo.GoInt)] ^ (-1i32 : stdgo.GoInt32) : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        return _diff;
    }
