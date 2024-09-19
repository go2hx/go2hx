package _internal.vendor.golang_dot_org.x.text.transform;
function bytes(_t:_internal.vendor.golang_dot_org.x.text.transform.Transform_Transformer.Transformer, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        var _result = (null : stdgo.Slice<stdgo.GoUInt8>), _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return _internal.vendor.golang_dot_org.x.text.transform.Transform__doAppend._doAppend(_t, (0 : stdgo.GoInt), (new stdgo.Slice<stdgo.GoUInt8>((_b.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _b);
    }
