package stdgo._internal.regexp;
function _newQueue(_size:stdgo.GoInt):stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass> {
        var _q = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass>);
        return _q = (stdgo.Go.setRef(({ _sparse : (new stdgo.Slice<stdgo.GoUInt32>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>), _dense : (new stdgo.Slice<stdgo.GoUInt32>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>) } : stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass)) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass>);
    }
