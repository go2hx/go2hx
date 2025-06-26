package go.net;

function listen(_network, _address) {
	@:define("sys", throw "net.Listen only implemented on sys targets") {
		final network:String = _network;
		final address:String = _address;
		final colonIndex = address.indexOf(":");
		if (colonIndex == -1)
			throw "invalid address formatting: " + address;
		final host = new sys.net.Host(address.substr(0, colonIndex));
		final port = Std.parseInt(address.substr(colonIndex + 1));
		switch network {
			case "tcp", "tcp4", "tcp6":
				final l = new sys.net.Socket();
				final addr = new stdgo._internal.net.Net_haxeaddr.HaxeAddr(network, host.toString(), port);
				l.bind(host, port);
				l.listen(0);
				return {_0: new stdgo._internal.net.Net_haxelistener.HaxeListener(addr, l), _1: null};
			case "udp", "udp4", "udp6":
				throw "unimplemented network: " + network;
			case "ip", "ip4", "ip6":
				throw "unimplemented network: " + network;
			case "unix", "unixgram", "unixpacket":
				throw "unimplemented network: " + network;
			default:
				throw "unimplemented network: " + network;
		}
	}
}


function joinHostPort(_host:stdgo.GoString,_port:stdgo.GoString):stdgo.GoString {
	final host:String = _host;
	final port:String = _port;
	// We assume that host is a literal IPv6 address if host has
	// colons.
	if (host.indexOf(":") >= 0) {
		return "[" + host + "]:" + port;
	}
	return host + ":" + port;
}


function _supportsIPv4()
	return true;

function _supportsIPv6()
	return true;
