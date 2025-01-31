package stdgo._internal.net.netip;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.intern.Intern;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.math.bits.Bits;
function iPv4Unspecified():stdgo._internal.net.netip.Netip_Addr.Addr {
        return stdgo._internal.net.netip.Netip_addrFrom4.addrFrom4((new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__())?.__copy__();
    }
