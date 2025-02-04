package stdgo._internal.encoding.json;
function _equalError(_a:stdgo.Error, _b:stdgo.Error):Bool {
        if (_a == null) {
            return _b == null;
        };
        if (_b == null) {
            return _a == null;
        };
        return _a.error() == (_b.error());
    }
