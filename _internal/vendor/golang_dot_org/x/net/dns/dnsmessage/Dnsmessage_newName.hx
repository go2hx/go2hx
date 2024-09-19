package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
function newName(_name:stdgo.GoString):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name; var _1 : stdgo.Error; } {
        var _n = ({ length_ : (_name.length : stdgo.GoUInt8) } : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name);
        if (((_name.length) > (_n.data.length) : Bool)) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name), _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errCalcLen._errCalcLen };
        };
        stdgo.Go.copySlice((_n.data.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _name);
        return { _0 : _n?.__copy__(), _1 : (null : stdgo.Error) };
    }
