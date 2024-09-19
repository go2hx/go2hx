package _internal.vendor.golang_dot_org.x.text.transform;
function append(_t:_internal.vendor.golang_dot_org.x.text.transform.Transform_Transformer.Transformer, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        var _result = (null : stdgo.Slice<stdgo.GoUInt8>), _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((_dst.length) == (_dst.capacity)) {
            var _n = ((_src.length) + (_dst.length) : stdgo.GoInt);
            var _b = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            _dst = (_b.__slice__(0, stdgo.Go.copySlice(_b, _dst)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _internal.vendor.golang_dot_org.x.text.transform.Transform__doAppend._doAppend(_t, (_dst.length), (_dst.__slice__(0, _dst.capacity) : stdgo.Slice<stdgo.GoUInt8>), _src);
    }
