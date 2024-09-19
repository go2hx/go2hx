package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
function newBuilder(_buf:stdgo.Slice<stdgo.GoUInt8>, _h:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Header.Header):_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder {
        if (_buf == null) {
            _buf = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (512 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _b = ({ _msg : _buf, _start : (_buf.length) } : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder);
        {
            var __tmp__ = _h._pack();
            _b._header._id = __tmp__._0;
            _b._header._bits = __tmp__._1;
        };
        var _hb:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(12, 12, ...[for (i in 0 ... 12) (0 : stdgo.GoUInt8)]);
        _b._msg = (_b._msg.__append__(...((_hb.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
        _b._section = (1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section);
        return _b?.__copy__();
    }
