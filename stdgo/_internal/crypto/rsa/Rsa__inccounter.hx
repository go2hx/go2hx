package stdgo._internal.crypto.rsa;
function _incCounter(_c:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):Void {
        {
            _c[(3 : stdgo.GoInt)]++;
            if (_c[(3 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                return;
            };
        };
        {
            _c[(2 : stdgo.GoInt)]++;
            if (_c[(2 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                return;
            };
        };
        {
            _c[(1 : stdgo.GoInt)]++;
            if (_c[(1 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                return;
            };
        };
        _c[(0 : stdgo.GoInt)]++;
    }
