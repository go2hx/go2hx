package stdgo._internal.text.template;
function _newIntSlice(_n:haxe.Rest<stdgo.GoInt>):stdgo.Ref<stdgo.Slice<stdgo.GoInt>> {
        var _n = new stdgo.Slice<stdgo.GoInt>(_n.length, 0, ..._n);
        var _p = (stdgo.Go.setRef((null : stdgo.Slice<stdgo.GoInt>)) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>);
        (_p : stdgo.Slice<stdgo.GoInt>).__setData__((new stdgo.Slice<stdgo.GoInt>((_n.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>));
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L195"
        (_p : stdgo.Slice<stdgo.GoInt>).__copyTo__(_n);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L196"
        return _p;
    }
