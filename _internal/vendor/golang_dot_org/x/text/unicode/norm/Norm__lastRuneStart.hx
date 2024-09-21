package _internal.vendor.golang_dot_org.x.text.unicode.norm;
function _lastRuneStart(_fd:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_formInfo.T_formInfo>, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties; var _1 : stdgo.GoInt; } {
        var _p = ((_buf.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        stdgo.Go.cfor(((_p >= (0 : stdgo.GoInt) : Bool) && !stdgo._internal.unicode.utf8.Utf8_runeStart.runeStart(_buf[(_p : stdgo.GoInt)]) : Bool), _p--, {});
        if ((_p < (0 : stdgo.GoInt) : Bool)) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties() : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties), _1 : (-1 : stdgo.GoInt) };
        };
        return { _0 : _fd._info(_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__inputBytes._inputBytes(_buf)?.__copy__(), _p)?.__copy__(), _1 : _p };
    }
