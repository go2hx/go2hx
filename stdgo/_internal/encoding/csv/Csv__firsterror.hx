package stdgo._internal.encoding.csv;
function _firstError(_errs:stdgo.Slice<stdgo.Error>, _positions:stdgo.Slice<stdgo.Slice<stdgo.GoArray<stdgo.GoInt>>>, _errPositions:stdgo.GoMap<stdgo.GoInt, stdgo.GoArray<stdgo.GoInt>>):stdgo.Error {
        for (_i => _err in _errs) {
            if (_err != null) {
                return stdgo._internal.encoding.csv.Csv__errorwithposition._errorWithPosition(_err, _i, _positions, _errPositions);
            };
        };
        return (null : stdgo.Error);
    }
