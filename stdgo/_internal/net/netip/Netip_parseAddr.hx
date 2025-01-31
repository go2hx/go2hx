package stdgo._internal.net.netip;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.intern.Intern;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.math.bits.Bits;
function parseAddr(_s:stdgo.GoString):{ var _0 : stdgo._internal.net.netip.Netip_Addr.Addr; var _1 : stdgo.Error; } {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                {
                    final __value__ = _s[(_i : stdgo.GoInt)];
                    if (__value__ == ((46 : stdgo.GoUInt8))) {
                        return stdgo._internal.net.netip.Netip__parseIPv4._parseIPv4(_s.__copy__());
                    } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                        return stdgo._internal.net.netip.Netip__parseIPv6._parseIPv6(_s.__copy__());
                    } else if (__value__ == ((37 : stdgo.GoUInt8))) {
                        return { _0 : (new stdgo._internal.net.netip.Netip_Addr.Addr() : stdgo._internal.net.netip.Netip_Addr.Addr), _1 : stdgo.Go.asInterface(({ _in : _s.__copy__(), _msg : ("missing IPv6 address" : stdgo.GoString) } : stdgo._internal.net.netip.Netip_T_parseAddrError.T_parseAddrError)) };
                    };
                };
                _i++;
            };
        };
        return { _0 : (new stdgo._internal.net.netip.Netip_Addr.Addr() : stdgo._internal.net.netip.Netip_Addr.Addr), _1 : stdgo.Go.asInterface(({ _in : _s?.__copy__(), _msg : ("unable to parse IP" : stdgo.GoString) } : stdgo._internal.net.netip.Netip_T_parseAddrError.T_parseAddrError)) };
    }
