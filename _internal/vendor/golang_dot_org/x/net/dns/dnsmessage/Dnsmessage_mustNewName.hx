package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
function mustNewName(_name:stdgo.GoString):_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name {
        var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_newName.newName(_name?.__copy__()), _n:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface((("creating name: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString));
        };
        return _n?.__copy__();
    }
