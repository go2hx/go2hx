package _internal.vendor.golang_dot_org.x.text.transform;
function newReader(_r:stdgo._internal.io.Io_Reader.Reader, _t:_internal.vendor.golang_dot_org.x.text.transform.Transform_Transformer.Transformer):stdgo.Ref<_internal.vendor.golang_dot_org.x.text.transform.Transform_Reader.Reader> {
        _t.reset();
        return (stdgo.Go.setRef(({ _r : _r, _t : _t, _dst : (new stdgo.Slice<stdgo.GoUInt8>((4096 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _src : (new stdgo.Slice<stdgo.GoUInt8>((4096 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : _internal.vendor.golang_dot_org.x.text.transform.Transform_Reader.Reader)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.text.transform.Transform_Reader.Reader>);
    }
