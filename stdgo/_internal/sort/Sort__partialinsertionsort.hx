package stdgo._internal.sort;
function _partialInsertionSort(_data:stdgo._internal.sort.Sort_interface.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool {
        {};
        var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
        {
            var _j = (0 : stdgo.GoInt);
            while ((_j < (5 : stdgo.GoInt) : Bool)) {
                while (((_i < _b : Bool) && !_data.less(_i, (_i - (1 : stdgo.GoInt) : stdgo.GoInt)) : Bool)) {
                    _i++;
                };
if (_i == (_b)) {
                    return true;
                };
if (((_b - _a : stdgo.GoInt) < (50 : stdgo.GoInt) : Bool)) {
                    return false;
                };
_data.swap(_i, (_i - (1 : stdgo.GoInt) : stdgo.GoInt));
if (((_i - _a : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    {
                        var _j = (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j >= (1 : stdgo.GoInt) : Bool)) {
                            if (!_data.less(_j, (_j - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                                break;
                            };
_data.swap(_j, (_j - (1 : stdgo.GoInt) : stdgo.GoInt));
                            _j--;
                        };
                    };
                };
if (((_b - _i : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    {
                        var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j < _b : Bool)) {
                            if (!_data.less(_j, (_j - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                                break;
                            };
_data.swap(_j, (_j - (1 : stdgo.GoInt) : stdgo.GoInt));
                            _j++;
                        };
                    };
                };
                _j++;
            };
        };
        return false;
    }
