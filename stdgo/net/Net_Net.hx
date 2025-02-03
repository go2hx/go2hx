package stdgo.net;
/**
    /|*
    Package net provides a portable interface for network I/O, including
    TCP/IP, UDP, domain name resolution, and Unix domain sockets.
    
    Although the package provides access to low-level networking
    primitives, most clients will need only the basic interface provided
    by the Dial, Listen, and Accept functions and the associated
    Conn and Listener interfaces. The crypto/tls package uses
    the same interfaces and similar Dial and Listen functions.
    
    The Dial function connects to a server:
    
    	conn, err := net.Dial("tcp", "golang.org:80")
    	if err != nil {
    		// handle error
    	}
    	fmt.Fprintf(conn, "GET / HTTP/1.0\r\n\r\n")
    	status, err := bufio.NewReader(conn).ReadString('\n')
    	// ...
    
    The Listen function creates servers:
    
    	ln, err := net.Listen("tcp", ":8080")
    	if err != nil {
    		// handle error
    	}
    	for {
    		conn, err := ln.Accept()
    		if err != nil {
    			// handle error
    		}
    		go handleConnection(conn)
    	}
    
    # Name Resolution
    
    The method for resolving domain names, whether indirectly with functions like Dial
    or directly with functions like LookupHost and LookupAddr, varies by operating system.
    
    On Unix systems, the resolver has two options for resolving names.
    It can use a pure Go resolver that sends DNS requests directly to the servers
    listed in /etc/resolv.conf, or it can use a cgo-based resolver that calls C
    library routines such as getaddrinfo and getnameinfo.
    
    By default the pure Go resolver is used, because a blocked DNS request consumes
    only a goroutine, while a blocked C call consumes an operating system thread.
    When cgo is available, the cgo-based resolver is used instead under a variety of
    conditions: on systems that do not let programs make direct DNS requests (OS X),
    when the LOCALDOMAIN environment variable is present (even if empty),
    when the RES_OPTIONS or HOSTALIASES environment variable is non-empty,
    when the ASR_CONFIG environment variable is non-empty (OpenBSD only),
    when /etc/resolv.conf or /etc/nsswitch.conf specify the use of features that the
    Go resolver does not implement, and when the name being looked up ends in .local
    or is an mDNS name.
    
    The resolver decision can be overridden by setting the netdns value of the
    GODEBUG environment variable (see package runtime) to go or cgo, as in:
    
    	export GODEBUG=netdns=go    # force pure Go resolver
    	export GODEBUG=netdns=cgo   # force native resolver (cgo, win32)
    
    The decision can also be forced while building the Go source tree
    by setting the netgo or netcgo build tag.
    
    A numeric netdns setting, as in GODEBUG=netdns=1, causes the resolver
    to print debugging information about its decisions.
    To force a particular resolver while also printing debugging information,
    join the two settings by a plus sign, as in GODEBUG=netdns=go+1.
    
    On macOS, if Go code that uses the net package is built with
    -buildmode=c-archive, linking the resulting archive into a C program
    requires passing -lresolv when linking the C code.
    
    On Plan 9, the resolver always accesses /net/cs and /net/dns.
    
    On Windows, in Go 1.18.x and earlier, the resolver always used C
    library functions, such as GetAddrInfo and DnsQuery.
    *|/
**/
class Net {
    /**
        Dial connects to the address on the named network.
        
        Known networks are "tcp", "tcp4" (IPv4-only), "tcp6" (IPv6-only),
        "udp", "udp4" (IPv4-only), "udp6" (IPv6-only), "ip", "ip4"
        (IPv4-only), "ip6" (IPv6-only), "unix", "unixgram" and
        "unixpacket".
        
        For TCP and UDP networks, the address has the form "host:port".
        The host must be a literal IP address, or a host name that can be
        resolved to IP addresses.
        The port must be a literal port number or a service name.
        If the host is a literal IPv6 address it must be enclosed in square
        brackets, as in "[2001:db8::1]:80" or "[fe80::1%zone]:80".
        The zone specifies the scope of the literal IPv6 address as defined
        in RFC 4007.
        The functions JoinHostPort and SplitHostPort manipulate a pair of
        host and port in this form.
        When using TCP, and the host resolves to multiple IP addresses,
        Dial will try each IP address in order until one succeeds.
        
        Examples:
        
        	Dial("tcp", "golang.org:http")
        	Dial("tcp", "192.0.2.1:http")
        	Dial("tcp", "198.51.100.1:80")
        	Dial("udp", "[2001:db8::1]:domain")
        	Dial("udp", "[fe80::1%lo0]:53")
        	Dial("tcp", ":80")
        
        For IP networks, the network must be "ip", "ip4" or "ip6" followed
        by a colon and a literal protocol number or a protocol name, and
        the address has the form "host". The host must be a literal IP
        address or a literal IPv6 address with zone.
        It depends on each operating system how the operating system
        behaves with a non-well known protocol number such as "0" or "255".
        
        Examples:
        
        	Dial("ip4:1", "192.0.2.1")
        	Dial("ip6:ipv6-icmp", "2001:db8::1")
        	Dial("ip6:58", "fe80::1%lo0")
        
        For TCP, UDP and IP networks, if the host is empty or a literal
        unspecified IP address, as in ":80", "0.0.0.0:80" or "[::]:80" for
        TCP and UDP, "", "0.0.0.0" or "::" for IP, the local system is
        assumed.
        
        For Unix networks, the address must be a file system path.
    **/
    static public inline function dial(_network:String, _address:String):stdgo.Tuple<Conn, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_dial.dial(_network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        DialTimeout acts like Dial but takes a timeout.
        
        The timeout includes name resolution, if required.
        When using TCP, and the host in the address parameter resolves to
        multiple IP addresses, the timeout is spread over each consecutive
        dial, such that each is given an appropriate fraction of the time
        to connect.
        
        See func Dial for a description of the network and address
        parameters.
    **/
    static public inline function dialTimeout(_network:String, _address:String, _timeout:stdgo._internal.time.Time_Duration.Duration):stdgo.Tuple<Conn, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_dialTimeout.dialTimeout(_network, _address, _timeout);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Listen announces on the local network address.
        
        The network must be "tcp", "tcp4", "tcp6", "unix" or "unixpacket".
        
        For TCP networks, if the host in the address parameter is empty or
        a literal unspecified IP address, Listen listens on all available
        unicast and anycast IP addresses of the local system.
        To only use IPv4, use network "tcp4".
        The address can use a host name, but this is not recommended,
        because it will create a listener for at most one of the host's IP
        addresses.
        If the port in the address parameter is empty or "0", as in
        "127.0.0.1:" or "[::1]:0", a port number is automatically chosen.
        The Addr method of Listener can be used to discover the chosen
        port.
        
        See func Dial for a description of the network and address
        parameters.
        
        Listen uses context.Background internally; to specify the context, use
        ListenConfig.Listen.
    **/
    static public inline function listen(_network:String, _address:String):stdgo.Tuple<Listener, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_listen.listen(_network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ListenPacket announces on the local network address.
        
        The network must be "udp", "udp4", "udp6", "unixgram", or an IP
        transport. The IP transports are "ip", "ip4", or "ip6" followed by
        a colon and a literal protocol number or a protocol name, as in
        "ip:1" or "ip:icmp".
        
        For UDP and IP networks, if the host in the address parameter is
        empty or a literal unspecified IP address, ListenPacket listens on
        all available IP addresses of the local system except multicast IP
        addresses.
        To only use IPv4, use network "udp4" or "ip4:proto".
        The address can use a host name, but this is not recommended,
        because it will create a listener for at most one of the host's IP
        addresses.
        If the port in the address parameter is empty or "0", as in
        "127.0.0.1:" or "[::1]:0", a port number is automatically chosen.
        The LocalAddr method of PacketConn can be used to discover the
        chosen port.
        
        See func Dial for a description of the network and address
        parameters.
        
        ListenPacket uses context.Background internally; to specify the context, use
        ListenConfig.ListenPacket.
    **/
    static public inline function listenPacket(_network:String, _address:String):stdgo.Tuple<PacketConn, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_listenPacket.listenPacket(_network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        FileConn returns a copy of the network connection corresponding to
        the open file f.
        It is the caller's responsibility to close f when finished.
        Closing c does not affect f, and closing f does not affect c.
    **/
    static public inline function fileConn(_f:stdgo._internal.os.Os_File.File):stdgo.Tuple<Conn, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        return {
            final obj = stdgo._internal.net.Net_fileConn.fileConn(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        FileListener returns a copy of the network listener corresponding
        to the open file f.
        It is the caller's responsibility to close ln when finished.
        Closing ln does not affect f, and closing f does not affect ln.
    **/
    static public inline function fileListener(_f:stdgo._internal.os.Os_File.File):stdgo.Tuple<Listener, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        return {
            final obj = stdgo._internal.net.Net_fileListener.fileListener(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        FilePacketConn returns a copy of the packet network connection
        corresponding to the open file f.
        It is the caller's responsibility to close f when finished.
        Closing c does not affect f, and closing f does not affect c.
    **/
    static public inline function filePacketConn(_f:stdgo._internal.os.Os_File.File):stdgo.Tuple<PacketConn, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        return {
            final obj = stdgo._internal.net.Net_filePacketConn.filePacketConn(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Interfaces returns a list of the system's network interfaces.
    **/
    static public inline function interfaces():stdgo.Tuple<Array<Interface>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_interfaces.interfaces();
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        InterfaceAddrs returns a list of the system's unicast interface
        addresses.
        
        The returned list does not identify the associated interface; use
        Interfaces and Interface.Addrs for more detail.
    **/
    static public inline function interfaceAddrs():stdgo.Tuple<Array<Addr>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.Net_interfaceAddrs.interfaceAddrs();
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        InterfaceByIndex returns the interface specified by index.
        
        On Solaris, it returns one of the logical network interfaces
        sharing the logical data link; for more precision use
        InterfaceByName.
    **/
    static public inline function interfaceByIndex(_index:StdTypes.Int):stdgo.Tuple<Interface, stdgo.Error> {
        final _index = (_index : stdgo.GoInt);
        return {
            final obj = stdgo._internal.net.Net_interfaceByIndex.interfaceByIndex(_index);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        InterfaceByName returns the interface specified by name.
    **/
    static public inline function interfaceByName(_name:String):stdgo.Tuple<Interface, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_interfaceByName.interfaceByName(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        IPv4 returns the IP address (in 16-byte form) of the
        IPv4 address a.b.c.d.
    **/
    static public inline function iPv4(_a:std.UInt, _b:std.UInt, _c:std.UInt, _d:std.UInt):IP {
        final _a = (_a : stdgo.GoUInt8);
        final _b = (_b : stdgo.GoUInt8);
        final _c = (_c : stdgo.GoUInt8);
        final _d = (_d : stdgo.GoUInt8);
        return stdgo._internal.net.Net_iPv4.iPv4(_a, _b, _c, _d);
    }
    /**
        IPv4Mask returns the IP mask (in 4-byte form) of the
        IPv4 mask a.b.c.d.
    **/
    static public inline function iPv4Mask(_a:std.UInt, _b:std.UInt, _c:std.UInt, _d:std.UInt):IPMask {
        final _a = (_a : stdgo.GoUInt8);
        final _b = (_b : stdgo.GoUInt8);
        final _c = (_c : stdgo.GoUInt8);
        final _d = (_d : stdgo.GoUInt8);
        return stdgo._internal.net.Net_iPv4Mask.iPv4Mask(_a, _b, _c, _d);
    }
    /**
        CIDRMask returns an IPMask consisting of 'ones' 1 bits
        followed by 0s up to a total length of 'bits' bits.
        For a mask of this form, CIDRMask is the inverse of IPMask.Size.
    **/
    static public inline function cIDRMask(_ones:StdTypes.Int, _bits:StdTypes.Int):IPMask {
        final _ones = (_ones : stdgo.GoInt);
        final _bits = (_bits : stdgo.GoInt);
        return stdgo._internal.net.Net_cIDRMask.cIDRMask(_ones, _bits);
    }
    /**
        ParseIP parses s as an IP address, returning the result.
        The string s can be in IPv4 dotted decimal ("192.0.2.1"), IPv6
        ("2001:db8::68"), or IPv4-mapped IPv6 ("::ffff:192.0.2.1") form.
        If s is not a valid textual representation of an IP address,
        ParseIP returns nil.
    **/
    static public inline function parseIP(_s:String):IP {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.net.Net_parseIP.parseIP(_s);
    }
    /**
        ParseCIDR parses s as a CIDR notation IP address and prefix length,
        like "192.0.2.0/24" or "2001:db8::/32", as defined in
        RFC 4632 and RFC 4291.
        
        It returns the IP address and the network implied by the IP and
        prefix length.
        For example, ParseCIDR("192.0.2.1/24") returns the IP address
        192.0.2.1 and the network 192.0.2.0/24.
    **/
    static public inline function parseCIDR(_s:String):stdgo.Tuple.Tuple3<IP, IPNet, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_parseCIDR.parseCIDR(_s);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        ResolveIPAddr returns an address of IP end point.
        
        The network must be an IP network name.
        
        If the host in the address parameter is not a literal IP address,
        ResolveIPAddr resolves the address to an address of IP end point.
        Otherwise, it parses the address as a literal IP address.
        The address parameter can use a host name, but this is not
        recommended, because it will return at most one of the host name's
        IP addresses.
        
        See func Dial for a description of the network and address
        parameters.
    **/
    static public inline function resolveIPAddr(_network:String, _address:String):stdgo.Tuple<IPAddr, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_resolveIPAddr.resolveIPAddr(_network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        DialIP acts like Dial for IP networks.
        
        The network must be an IP network name; see func Dial for details.
        
        If laddr is nil, a local address is automatically chosen.
        If the IP field of raddr is nil or an unspecified IP address, the
        local system is assumed.
    **/
    static public inline function dialIP(_network:String, _laddr:IPAddr, _raddr:IPAddr):stdgo.Tuple<IPConn, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _laddr = (_laddr : stdgo.Ref<stdgo._internal.net.Net_IPAddr.IPAddr>);
        final _raddr = (_raddr : stdgo.Ref<stdgo._internal.net.Net_IPAddr.IPAddr>);
        return {
            final obj = stdgo._internal.net.Net_dialIP.dialIP(_network, _laddr, _raddr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ListenIP acts like ListenPacket for IP networks.
        
        The network must be an IP network name; see func Dial for details.
        
        If the IP field of laddr is nil or an unspecified IP address,
        ListenIP listens on all available IP addresses of the local system
        except multicast IP addresses.
    **/
    static public inline function listenIP(_network:String, _laddr:IPAddr):stdgo.Tuple<IPConn, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _laddr = (_laddr : stdgo.Ref<stdgo._internal.net.Net_IPAddr.IPAddr>);
        return {
            final obj = stdgo._internal.net.Net_listenIP.listenIP(_network, _laddr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        SplitHostPort splits a network address of the form "host:port",
        "host%zone:port", "[host]:port" or "[host%zone]:port" into host or
        host%zone and port.
        
        A literal IPv6 address in hostport must be enclosed in square
        brackets, as in "[::1]:80", "[::1%lo0]:80".
        
        See func Dial for a description of the hostport parameter, and host
        and port results.
    **/
    static public inline function splitHostPort(_hostport:String):stdgo.Tuple.Tuple3<String, String, stdgo.Error> {
        final _hostport = (_hostport : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_splitHostPort.splitHostPort(_hostport);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        JoinHostPort combines host and port into a network address of the
        form "host:port". If host contains a colon, as found in literal
        IPv6 addresses, then JoinHostPort returns "[host]:port".
        
        See func Dial for a description of the host and port parameters.
    **/
    static public inline function joinHostPort(_host:String, _port:String):String {
        final _host = (_host : stdgo.GoString);
        final _port = (_port : stdgo.GoString);
        return stdgo._internal.net.Net_joinHostPort.joinHostPort(_host, _port);
    }
    /**
        LookupHost looks up the given host using the local resolver.
        It returns a slice of that host's addresses.
        
        LookupHost uses context.Background internally; to specify the context, use
        Resolver.LookupHost.
    **/
    static public inline function lookupHost(_host:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _host = (_host : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_lookupHost.lookupHost(_host);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        LookupIP looks up host using the local resolver.
        It returns a slice of that host's IPv4 and IPv6 addresses.
    **/
    static public inline function lookupIP(_host:String):stdgo.Tuple<Array<IP>, stdgo.Error> {
        final _host = (_host : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_lookupIP.lookupIP(_host);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        LookupPort looks up the port for the given network and service.
        
        LookupPort uses context.Background internally; to specify the context, use
        Resolver.LookupPort.
    **/
    static public inline function lookupPort(_network:String, _service:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _service = (_service : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_lookupPort.lookupPort(_network, _service);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        LookupCNAME returns the canonical name for the given host.
        Callers that do not care about the canonical name can call
        LookupHost or LookupIP directly; both take care of resolving
        the canonical name as part of the lookup.
        
        A canonical name is the final name after following zero
        or more CNAME records.
        LookupCNAME does not return an error if host does not
        contain DNS "CNAME" records, as long as host resolves to
        address records.
        
        The returned canonical name is validated to be a properly
        formatted presentation-format domain name.
        
        LookupCNAME uses context.Background internally; to specify the context, use
        Resolver.LookupCNAME.
    **/
    static public inline function lookupCNAME(_host:String):stdgo.Tuple<String, stdgo.Error> {
        final _host = (_host : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_lookupCNAME.lookupCNAME(_host);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        LookupSRV tries to resolve an SRV query of the given service,
        protocol, and domain name. The proto is "tcp" or "udp".
        The returned records are sorted by priority and randomized
        by weight within a priority.
        
        LookupSRV constructs the DNS name to look up following RFC 2782.
        That is, it looks up _service._proto.name. To accommodate services
        publishing SRV records under non-standard names, if both service
        and proto are empty strings, LookupSRV looks up name directly.
        
        The returned service names are validated to be properly
        formatted presentation-format domain names. If the response contains
        invalid names, those records are filtered out and an error
        will be returned alongside the remaining results, if any.
    **/
    static public inline function lookupSRV(_service:String, _proto:String, _name:String):stdgo.Tuple.Tuple3<String, Array<SRV>, stdgo.Error> {
        final _service = (_service : stdgo.GoString);
        final _proto = (_proto : stdgo.GoString);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_lookupSRV.lookupSRV(_service, _proto, _name);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    /**
        LookupMX returns the DNS MX records for the given domain name sorted by preference.
        
        The returned mail server names are validated to be properly
        formatted presentation-format domain names. If the response contains
        invalid names, those records are filtered out and an error
        will be returned alongside the remaining results, if any.
        
        LookupMX uses context.Background internally; to specify the context, use
        Resolver.LookupMX.
    **/
    static public inline function lookupMX(_name:String):stdgo.Tuple<Array<MX>, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_lookupMX.lookupMX(_name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        LookupNS returns the DNS NS records for the given domain name.
        
        The returned name server names are validated to be properly
        formatted presentation-format domain names. If the response contains
        invalid names, those records are filtered out and an error
        will be returned alongside the remaining results, if any.
        
        LookupNS uses context.Background internally; to specify the context, use
        Resolver.LookupNS.
    **/
    static public inline function lookupNS(_name:String):stdgo.Tuple<Array<NS>, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_lookupNS.lookupNS(_name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        LookupTXT returns the DNS TXT records for the given domain name.
        
        LookupTXT uses context.Background internally; to specify the context, use
        Resolver.LookupTXT.
    **/
    static public inline function lookupTXT(_name:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_lookupTXT.lookupTXT(_name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        LookupAddr performs a reverse lookup for the given address, returning a list
        of names mapping to that address.
        
        The returned names are validated to be properly formatted presentation-format
        domain names. If the response contains invalid names, those records are filtered
        out and an error will be returned alongside the remaining results, if any.
        
        When using the host C library resolver, at most one result will be
        returned. To bypass the host resolver, use a custom Resolver.
        
        LookupAddr uses context.Background internally; to specify the context, use
        Resolver.LookupAddr.
    **/
    static public inline function lookupAddr(_addr:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _addr = (_addr : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_lookupAddr.lookupAddr(_addr);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        ParseMAC parses s as an IEEE 802 MAC-48, EUI-48, EUI-64, or a 20-octet
        IP over InfiniBand link-layer address using one of the following formats:
        
        	00:00:5e:00:53:01
        	02:00:5e:10:00:00:00:01
        	00:00:00:00:fe:80:00:00:00:00:00:00:02:00:5e:10:00:00:00:01
        	00-00-5e-00-53-01
        	02-00-5e-10-00-00-00-01
        	00-00-00-00-fe-80-00-00-00-00-00-00-02-00-5e-10-00-00-00-01
        	0000.5e00.5301
        	0200.5e10.0000.0001
        	0000.0000.fe80.0000.0000.0000.0200.5e10.0000.0001
    **/
    static public inline function parseMAC(_s:String):stdgo.Tuple<HardwareAddr, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_parseMAC.parseMAC(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Pipe creates a synchronous, in-memory, full duplex
        network connection; both ends implement the Conn interface.
        Reads on one end are matched with writes on the other,
        copying data directly between the two; there is no internal
        buffering.
    **/
    static public inline function pipe():stdgo.Tuple<Conn, Conn> {
        return {
            final obj = stdgo._internal.net.Net_pipe.pipe();
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ResolveTCPAddr returns an address of TCP end point.
        
        The network must be a TCP network name.
        
        If the host in the address parameter is not a literal IP address or
        the port is not a literal port number, ResolveTCPAddr resolves the
        address to an address of TCP end point.
        Otherwise, it parses the address as a pair of literal IP address
        and port number.
        The address parameter can use a host name, but this is not
        recommended, because it will return at most one of the host name's
        IP addresses.
        
        See func Dial for a description of the network and address
        parameters.
    **/
    static public inline function resolveTCPAddr(_network:String, _address:String):stdgo.Tuple<TCPAddr, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_resolveTCPAddr.resolveTCPAddr(_network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        TCPAddrFromAddrPort returns addr as a TCPAddr. If addr.IsValid() is false,
        then the returned TCPAddr will contain a nil IP field, indicating an
        address family-agnostic unspecified address.
    **/
    static public inline function tCPAddrFromAddrPort(_addr:AddrPort):TCPAddr {
        return stdgo._internal.net.Net_tCPAddrFromAddrPort.tCPAddrFromAddrPort(_addr);
    }
    /**
        DialTCP acts like Dial for TCP networks.
        
        The network must be a TCP network name; see func Dial for details.
        
        If laddr is nil, a local address is automatically chosen.
        If the IP field of raddr is nil or an unspecified IP address, the
        local system is assumed.
    **/
    static public inline function dialTCP(_network:String, _laddr:TCPAddr, _raddr:TCPAddr):stdgo.Tuple<TCPConn, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _laddr = (_laddr : stdgo.Ref<stdgo._internal.net.Net_TCPAddr.TCPAddr>);
        final _raddr = (_raddr : stdgo.Ref<stdgo._internal.net.Net_TCPAddr.TCPAddr>);
        return {
            final obj = stdgo._internal.net.Net_dialTCP.dialTCP(_network, _laddr, _raddr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ListenTCP acts like Listen for TCP networks.
        
        The network must be a TCP network name; see func Dial for details.
        
        If the IP field of laddr is nil or an unspecified IP address,
        ListenTCP listens on all available unicast and anycast IP addresses
        of the local system.
        If the Port field of laddr is 0, a port number is automatically
        chosen.
    **/
    static public inline function listenTCP(_network:String, _laddr:TCPAddr):stdgo.Tuple<TCPListener, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _laddr = (_laddr : stdgo.Ref<stdgo._internal.net.Net_TCPAddr.TCPAddr>);
        return {
            final obj = stdgo._internal.net.Net_listenTCP.listenTCP(_network, _laddr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ResolveUDPAddr returns an address of UDP end point.
        
        The network must be a UDP network name.
        
        If the host in the address parameter is not a literal IP address or
        the port is not a literal port number, ResolveUDPAddr resolves the
        address to an address of UDP end point.
        Otherwise, it parses the address as a pair of literal IP address
        and port number.
        The address parameter can use a host name, but this is not
        recommended, because it will return at most one of the host name's
        IP addresses.
        
        See func Dial for a description of the network and address
        parameters.
    **/
    static public inline function resolveUDPAddr(_network:String, _address:String):stdgo.Tuple<UDPAddr, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_resolveUDPAddr.resolveUDPAddr(_network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        UDPAddrFromAddrPort returns addr as a UDPAddr. If addr.IsValid() is false,
        then the returned UDPAddr will contain a nil IP field, indicating an
        address family-agnostic unspecified address.
    **/
    static public inline function uDPAddrFromAddrPort(_addr:AddrPort):UDPAddr {
        return stdgo._internal.net.Net_uDPAddrFromAddrPort.uDPAddrFromAddrPort(_addr);
    }
    /**
        DialUDP acts like Dial for UDP networks.
        
        The network must be a UDP network name; see func Dial for details.
        
        If laddr is nil, a local address is automatically chosen.
        If the IP field of raddr is nil or an unspecified IP address, the
        local system is assumed.
    **/
    static public inline function dialUDP(_network:String, _laddr:UDPAddr, _raddr:UDPAddr):stdgo.Tuple<UDPConn, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _laddr = (_laddr : stdgo.Ref<stdgo._internal.net.Net_UDPAddr.UDPAddr>);
        final _raddr = (_raddr : stdgo.Ref<stdgo._internal.net.Net_UDPAddr.UDPAddr>);
        return {
            final obj = stdgo._internal.net.Net_dialUDP.dialUDP(_network, _laddr, _raddr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ListenUDP acts like ListenPacket for UDP networks.
        
        The network must be a UDP network name; see func Dial for details.
        
        If the IP field of laddr is nil or an unspecified IP address,
        ListenUDP listens on all available IP addresses of the local system
        except multicast IP addresses.
        If the Port field of laddr is 0, a port number is automatically
        chosen.
    **/
    static public inline function listenUDP(_network:String, _laddr:UDPAddr):stdgo.Tuple<UDPConn, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _laddr = (_laddr : stdgo.Ref<stdgo._internal.net.Net_UDPAddr.UDPAddr>);
        return {
            final obj = stdgo._internal.net.Net_listenUDP.listenUDP(_network, _laddr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ListenMulticastUDP acts like ListenPacket for UDP networks but
        takes a group address on a specific network interface.
        
        The network must be a UDP network name; see func Dial for details.
        
        ListenMulticastUDP listens on all available IP addresses of the
        local system including the group, multicast IP address.
        If ifi is nil, ListenMulticastUDP uses the system-assigned
        multicast interface, although this is not recommended because the
        assignment depends on platforms and sometimes it might require
        routing configuration.
        If the Port field of gaddr is 0, a port number is automatically
        chosen.
        
        ListenMulticastUDP is just for convenience of simple, small
        applications. There are golang.org/x/net/ipv4 and
        golang.org/x/net/ipv6 packages for general purpose uses.
        
        Note that ListenMulticastUDP will set the IP_MULTICAST_LOOP socket option
        to 0 under IPPROTO_IP, to disable loopback of multicast packets.
    **/
    static public inline function listenMulticastUDP(_network:String, _ifi:Interface, _gaddr:UDPAddr):stdgo.Tuple<UDPConn, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _ifi = (_ifi : stdgo.Ref<stdgo._internal.net.Net_Interface.Interface>);
        final _gaddr = (_gaddr : stdgo.Ref<stdgo._internal.net.Net_UDPAddr.UDPAddr>);
        return {
            final obj = stdgo._internal.net.Net_listenMulticastUDP.listenMulticastUDP(_network, _ifi, _gaddr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ResolveUnixAddr returns an address of Unix domain socket end point.
        
        The network must be a Unix network name.
        
        See func Dial for a description of the network and address
        parameters.
    **/
    static public inline function resolveUnixAddr(_network:String, _address:String):stdgo.Tuple<UnixAddr, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.Net_resolveUnixAddr.resolveUnixAddr(_network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        DialUnix acts like Dial for Unix networks.
        
        The network must be a Unix network name; see func Dial for details.
        
        If laddr is non-nil, it is used as the local address for the
        connection.
    **/
    static public inline function dialUnix(_network:String, _laddr:UnixAddr, _raddr:UnixAddr):stdgo.Tuple<UnixConn, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _laddr = (_laddr : stdgo.Ref<stdgo._internal.net.Net_UnixAddr.UnixAddr>);
        final _raddr = (_raddr : stdgo.Ref<stdgo._internal.net.Net_UnixAddr.UnixAddr>);
        return {
            final obj = stdgo._internal.net.Net_dialUnix.dialUnix(_network, _laddr, _raddr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ListenUnix acts like Listen for Unix networks.
        
        The network must be "unix" or "unixpacket".
    **/
    static public inline function listenUnix(_network:String, _laddr:UnixAddr):stdgo.Tuple<UnixListener, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _laddr = (_laddr : stdgo.Ref<stdgo._internal.net.Net_UnixAddr.UnixAddr>);
        return {
            final obj = stdgo._internal.net.Net_listenUnix.listenUnix(_network, _laddr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ListenUnixgram acts like ListenPacket for Unix networks.
        
        The network must be "unixgram".
    **/
    static public inline function listenUnixgram(_network:String, _laddr:UnixAddr):stdgo.Tuple<UnixConn, stdgo.Error> {
        final _network = (_network : stdgo.GoString);
        final _laddr = (_laddr : stdgo.Ref<stdgo._internal.net.Net_UnixAddr.UnixAddr>);
        return {
            final obj = stdgo._internal.net.Net_listenUnixgram.listenUnixgram(_network, _laddr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
