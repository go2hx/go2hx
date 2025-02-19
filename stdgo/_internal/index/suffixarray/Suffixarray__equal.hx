package stdgo._internal.index.suffixarray;
function _equal(_x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index>, _y:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index>):Bool {
        if (!stdgo._internal.bytes.Bytes_equal.equal((@:checkr _x ?? throw "null pointer dereference")._data, (@:checkr _y ?? throw "null pointer dereference")._data)) {
            return false;
        };
        if (@:check2 (@:checkr _x ?? throw "null pointer dereference")._sa._len() != (@:check2 (@:checkr _y ?? throw "null pointer dereference")._sa._len())) {
            return false;
        };
        var _n = (@:check2 (@:checkr _x ?? throw "null pointer dereference")._sa._len() : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                if (@:check2 (@:checkr _x ?? throw "null pointer dereference")._sa._get(_i) != (@:check2 (@:checkr _y ?? throw "null pointer dereference")._sa._get(_i))) {
                    return false;
                };
                _i++;
            };
        };
        return true;
    }
