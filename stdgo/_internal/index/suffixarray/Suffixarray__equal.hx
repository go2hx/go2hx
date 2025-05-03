package stdgo._internal.index.suffixarray;
function _equal(_x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index>, _y:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L235"
        if (!stdgo._internal.bytes.Bytes_equal.equal((@:checkr _x ?? throw "null pointer dereference")._data, (@:checkr _y ?? throw "null pointer dereference")._data)) {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L236"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L238"
        if ((@:checkr _x ?? throw "null pointer dereference")._sa._len() != ((@:checkr _y ?? throw "null pointer dereference")._sa._len())) {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L239"
            return false;
        };
        var _n = ((@:checkr _x ?? throw "null pointer dereference")._sa._len() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L242"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L243"
                if ((@:checkr _x ?? throw "null pointer dereference")._sa._get(_i) != ((@:checkr _y ?? throw "null pointer dereference")._sa._get(_i))) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L244"
                    return false;
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L247"
        return true;
    }
