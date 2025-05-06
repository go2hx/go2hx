package stdgo._internal.go.types;
function _makeObjList(_tlist:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>>):stdgo.Slice<stdgo._internal.go.types.Types_object.Object> {
        var _olist = (new stdgo.Slice<stdgo._internal.go.types.Types_object.Object>((_tlist.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.go.types.Types_object.Object>);
        //"file:///home/runner/.go/go1.21.3/src/go/types/validtype.go#L164"
        for (_i => _t in _tlist) {
            _olist[(_i : stdgo.GoInt)] = stdgo.Go.asInterface((@:checkr _t ?? throw "null pointer dereference")._obj);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/validtype.go#L167"
        return _olist;
    }
