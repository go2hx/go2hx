package stdgo._internal.crypto.tls;
function _readUint64(_s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Pointer<stdgo.GoUInt64>):Bool {
        var __0:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), __1:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
var _lo = __1, _hi = __0;
        var _lo__pointer__ = stdgo.Go.pointer(_lo);
        var _hi__pointer__ = stdgo.Go.pointer(_hi);
        if ((!@:check2r _s.readUint32(_hi__pointer__) || !@:check2r _s.readUint32(_lo__pointer__) : Bool)) {
            return false;
        };
        _out.value = (((_hi : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (_lo : stdgo.GoUInt64) : stdgo.GoUInt64);
        return true;
    }
