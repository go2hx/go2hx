package stdgo._internal.net;
function listen(_network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_listener.Listener; var _1 : stdgo.Error; } {
        #if sys {
            final network:String = _network;
            final address:String = _address;
            final colonIndex = address.indexOf(":");
            if (colonIndex == -1) throw "invalid address formatting: " + address;
            final host = new sys.net.Host(address.substr(0, colonIndex));
            final port = Std.parseInt(address.substr(colonIndex + 1));
            switch network {
                case "tcp", "tcp4", "tcp6":
                    final l = new sys.net.Socket();
final addr = new stdgo._internal.net.Net_haxeaddr.HaxeAddr(network, host.toString(), port);
l.bind(host, port);
l.listen(0);
return { _0 : new stdgo._internal.net.Net_haxelistener.HaxeListener(addr, l), _1 : null };
                case "udp", "udp4", "udp6":
                    throw "unimplemented network: " + network;
                case "ip", "ip4", "ip6":
                    throw "unimplemented network: " + network;
                case "unix", "unixgram", "unixpacket":
                    throw "unimplemented network: " + network;
                default:
                    throw "unimplemented network: " + network;
            };
        } #else throw "net.Listen only implemented on sys targets" #end;
    }
