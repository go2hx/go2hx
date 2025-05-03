package stdgo._internal.encoding.csv;
function _firstError(_errs:stdgo.Slice<stdgo.Error>, _positions:stdgo.Slice<stdgo.Slice<stdgo.GoArray<stdgo.GoInt>>>, _errPositions:stdgo.GoMap<stdgo.GoInt, stdgo.GoArray<stdgo.GoInt>>):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader_test.go#L495"
        for (_i => _err in _errs) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader_test.go#L496"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader_test.go#L497"
                return stdgo._internal.encoding.csv.Csv__errorwithposition._errorWithPosition(_err, _i, _positions, _errPositions);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader_test.go#L500"
        return (null : stdgo.Error);
    }
