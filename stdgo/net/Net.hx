package stdgo.net;
var flagUp : Flags = ((0 : stdgo.GoUInt) : stdgo._internal.net.Net_flags.Flags);
var flagBroadcast : Flags = ((0 : stdgo.GoUInt) : stdgo._internal.net.Net_flags.Flags);
var flagLoopback : Flags = ((0 : stdgo.GoUInt) : stdgo._internal.net.Net_flags.Flags);
var flagPointToPoint : Flags = ((0 : stdgo.GoUInt) : stdgo._internal.net.Net_flags.Flags);
var flagMulticast : Flags = ((0 : stdgo.GoUInt) : stdgo._internal.net.Net_flags.Flags);
var flagRunning : Flags = ((0 : stdgo.GoUInt) : stdgo._internal.net.Net_flags.Flags);
var iPv4len : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var iPv6len : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var iPv4bcast(get, set) : IP;
private function get_iPv4bcast():IP return stdgo._internal.net.Net_ipv4bcast.iPv4bcast;
private function set_iPv4bcast(v:IP):stdgo._internal.net.Net_ip.IP {
        stdgo._internal.net.Net_ipv4bcast.iPv4bcast = v;
        return v;
    }
var iPv4allsys(get, set) : IP;
private function get_iPv4allsys():IP return stdgo._internal.net.Net_ipv4allsys.iPv4allsys;
private function set_iPv4allsys(v:IP):stdgo._internal.net.Net_ip.IP {
        stdgo._internal.net.Net_ipv4allsys.iPv4allsys = v;
        return v;
    }
var iPv4allrouter(get, set) : IP;
private function get_iPv4allrouter():IP return stdgo._internal.net.Net_ipv4allrouter.iPv4allrouter;
private function set_iPv4allrouter(v:IP):stdgo._internal.net.Net_ip.IP {
        stdgo._internal.net.Net_ipv4allrouter.iPv4allrouter = v;
        return v;
    }
var iPv4zero(get, set) : IP;
private function get_iPv4zero():IP return stdgo._internal.net.Net_ipv4zero.iPv4zero;
private function set_iPv4zero(v:IP):stdgo._internal.net.Net_ip.IP {
        stdgo._internal.net.Net_ipv4zero.iPv4zero = v;
        return v;
    }
var iPv6zero(get, set) : IP;
private function get_iPv6zero():IP return stdgo._internal.net.Net_ipv6zero.iPv6zero;
private function set_iPv6zero(v:IP):stdgo._internal.net.Net_ip.IP {
        stdgo._internal.net.Net_ipv6zero.iPv6zero = v;
        return v;
    }
var iPv6unspecified(get, set) : IP;
private function get_iPv6unspecified():IP return stdgo._internal.net.Net_ipv6unspecified.iPv6unspecified;
private function set_iPv6unspecified(v:IP):stdgo._internal.net.Net_ip.IP {
        stdgo._internal.net.Net_ipv6unspecified.iPv6unspecified = v;
        return v;
    }
var iPv6loopback(get, set) : IP;
private function get_iPv6loopback():IP return stdgo._internal.net.Net_ipv6loopback.iPv6loopback;
private function set_iPv6loopback(v:IP):stdgo._internal.net.Net_ip.IP {
        stdgo._internal.net.Net_ipv6loopback.iPv6loopback = v;
        return v;
    }
var iPv6interfacelocalallnodes(get, set) : IP;
private function get_iPv6interfacelocalallnodes():IP return stdgo._internal.net.Net_ipv6interfacelocalallnodes.iPv6interfacelocalallnodes;
private function set_iPv6interfacelocalallnodes(v:IP):stdgo._internal.net.Net_ip.IP {
        stdgo._internal.net.Net_ipv6interfacelocalallnodes.iPv6interfacelocalallnodes = v;
        return v;
    }
var iPv6linklocalallnodes(get, set) : IP;
private function get_iPv6linklocalallnodes():IP return stdgo._internal.net.Net_ipv6linklocalallnodes.iPv6linklocalallnodes;
private function set_iPv6linklocalallnodes(v:IP):stdgo._internal.net.Net_ip.IP {
        stdgo._internal.net.Net_ipv6linklocalallnodes.iPv6linklocalallnodes = v;
        return v;
    }
var iPv6linklocalallrouters(get, set) : IP;
private function get_iPv6linklocalallrouters():IP return stdgo._internal.net.Net_ipv6linklocalallrouters.iPv6linklocalallrouters;
private function set_iPv6linklocalallrouters(v:IP):stdgo._internal.net.Net_ip.IP {
        stdgo._internal.net.Net_ipv6linklocalallrouters.iPv6linklocalallrouters = v;
        return v;
    }
var defaultResolver(get, set) : stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>;
private function get_defaultResolver():stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> return stdgo._internal.net.Net_defaultresolver.defaultResolver;
private function set_defaultResolver(v:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>):stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> {
        stdgo._internal.net.Net_defaultresolver.defaultResolver = v;
        return v;
    }
var errWriteToConnected(get, set) : stdgo.Error;
private function get_errWriteToConnected():stdgo.Error return stdgo._internal.net.Net_errwritetoconnected.errWriteToConnected;
private function set_errWriteToConnected(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.Net_errwritetoconnected.errWriteToConnected = v;
        return v;
    }
var errClosed(get, set) : stdgo.Error;
private function get_errClosed():stdgo.Error return stdgo._internal.net.Net_errclosed.errClosed;
private function set_errClosed(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.Net_errclosed.errClosed = v;
        return v;
    }
typedef Addr = stdgo._internal.net.Net_addr.Addr;
typedef Conn = stdgo._internal.net.Net_conn.Conn;
typedef PacketConn = stdgo._internal.net.Net_packetconn.PacketConn;
typedef Listener = stdgo._internal.net.Net_listener.Listener;
typedef Error = stdgo._internal.net.Net_error.Error;
typedef Dialer = stdgo._internal.net.Net_dialer.Dialer;
typedef ListenConfig = stdgo._internal.net.Net_listenconfig.ListenConfig;
typedef SRV = stdgo._internal.net.Net_srv.SRV;
typedef MX = stdgo._internal.net.Net_mx.MX;
typedef NS = stdgo._internal.net.Net_ns.NS;
typedef Interface = stdgo._internal.net.Net_interface.Interface;
typedef IPNet = stdgo._internal.net.Net_ipnet.IPNet;
typedef IPAddr = stdgo._internal.net.Net_ipaddr.IPAddr;
typedef IPConn = stdgo._internal.net.Net_ipconn.IPConn;
typedef Resolver = stdgo._internal.net.Net_resolver.Resolver;
typedef OpError = stdgo._internal.net.Net_operror.OpError;
typedef ParseError = stdgo._internal.net.Net_parseerror.ParseError;
typedef AddrError = stdgo._internal.net.Net_addrerror.AddrError;
typedef DNSConfigError = stdgo._internal.net.Net_dnsconfigerror.DNSConfigError;
typedef DNSError = stdgo._internal.net.Net_dnserror.DNSError;
typedef TCPAddr = stdgo._internal.net.Net_tcpaddr.TCPAddr;
typedef TCPConn = stdgo._internal.net.Net_tcpconn.TCPConn;
typedef TCPListener = stdgo._internal.net.Net_tcplistener.TCPListener;
typedef UDPAddr = stdgo._internal.net.Net_udpaddr.UDPAddr;
typedef UDPConn = stdgo._internal.net.Net_udpconn.UDPConn;
typedef UnixAddr = stdgo._internal.net.Net_unixaddr.UnixAddr;
typedef UnixConn = stdgo._internal.net.Net_unixconn.UnixConn;
typedef UnixListener = stdgo._internal.net.Net_unixlistener.UnixListener;
typedef Flags = stdgo._internal.net.Net_flags.Flags;
typedef IP = stdgo._internal.net.Net_ip.IP;
typedef IPMask = stdgo._internal.net.Net_ipmask.IPMask;
typedef HardwareAddr = stdgo._internal.net.Net_hardwareaddr.HardwareAddr;
typedef UnknownNetworkError = stdgo._internal.net.Net_unknownnetworkerror.UnknownNetworkError;
typedef InvalidAddrError = stdgo._internal.net.Net_invalidaddrerror.InvalidAddrError;
typedef Buffers = stdgo._internal.net.Net_buffers.Buffers;
typedef HaxeListener = stdgo._internal.net.Net_haxelistener.HaxeListener;
typedef HaxeAddr = stdgo._internal.net.Net_haxeaddr.HaxeAddr;
typedef HaxeConn = stdgo._internal.net.Net_haxeconn.HaxeConn;
typedef DialerPointer = stdgo._internal.net.Net_dialerpointer.DialerPointer;
typedef ListenConfigPointer = stdgo._internal.net.Net_listenconfigpointer.ListenConfigPointer;
typedef SRVPointer = stdgo._internal.net.Net_srvpointer.SRVPointer;
typedef MXPointer = stdgo._internal.net.Net_mxpointer.MXPointer;
typedef NSPointer = stdgo._internal.net.Net_nspointer.NSPointer;
typedef InterfacePointer = stdgo._internal.net.Net_interfacepointer.InterfacePointer;
typedef IPNetPointer = stdgo._internal.net.Net_ipnetpointer.IPNetPointer;
typedef IPAddrPointer = stdgo._internal.net.Net_ipaddrpointer.IPAddrPointer;
typedef IPConnPointer = stdgo._internal.net.Net_ipconnpointer.IPConnPointer;
typedef ResolverPointer = stdgo._internal.net.Net_resolverpointer.ResolverPointer;
typedef OpErrorPointer = stdgo._internal.net.Net_operrorpointer.OpErrorPointer;
typedef ParseErrorPointer = stdgo._internal.net.Net_parseerrorpointer.ParseErrorPointer;
typedef AddrErrorPointer = stdgo._internal.net.Net_addrerrorpointer.AddrErrorPointer;
typedef DNSConfigErrorPointer = stdgo._internal.net.Net_dnsconfigerrorpointer.DNSConfigErrorPointer;
typedef DNSErrorPointer = stdgo._internal.net.Net_dnserrorpointer.DNSErrorPointer;
typedef TCPAddrPointer = stdgo._internal.net.Net_tcpaddrpointer.TCPAddrPointer;
typedef TCPConnPointer = stdgo._internal.net.Net_tcpconnpointer.TCPConnPointer;
typedef TCPListenerPointer = stdgo._internal.net.Net_tcplistenerpointer.TCPListenerPointer;
typedef UDPAddrPointer = stdgo._internal.net.Net_udpaddrpointer.UDPAddrPointer;
typedef UDPConnPointer = stdgo._internal.net.Net_udpconnpointer.UDPConnPointer;
typedef UnixAddrPointer = stdgo._internal.net.Net_unixaddrpointer.UnixAddrPointer;
typedef UnixConnPointer = stdgo._internal.net.Net_unixconnpointer.UnixConnPointer;
typedef UnixListenerPointer = stdgo._internal.net.Net_unixlistenerpointer.UnixListenerPointer;
typedef FlagsPointer = stdgo._internal.net.Net_flagspointer.FlagsPointer;
typedef IPPointer = stdgo._internal.net.Net_ippointer.IPPointer;
typedef IPMaskPointer = stdgo._internal.net.Net_ipmaskpointer.IPMaskPointer;
typedef HardwareAddrPointer = stdgo._internal.net.Net_hardwareaddrpointer.HardwareAddrPointer;
typedef UnknownNetworkErrorPointer = stdgo._internal.net.Net_unknownnetworkerrorpointer.UnknownNetworkErrorPointer;
typedef InvalidAddrErrorPointer = stdgo._internal.net.Net_invalidaddrerrorpointer.InvalidAddrErrorPointer;
typedef BuffersPointer = stdgo._internal.net.Net_bufferspointer.BuffersPointer;
typedef HaxeListenerPointer = stdgo._internal.net.Net_haxelistenerpointer.HaxeListenerPointer;
typedef HaxeAddrPointer = stdgo._internal.net.Net_haxeaddrpointer.HaxeAddrPointer;
typedef HaxeConnPointer = stdgo._internal.net.Net_haxeconnpointer.HaxeConnPointer;
/**
    * 
    * Package net provides a portable interface for network I/O, including
    * TCP/IP, UDP, domain name resolution, and Unix domain sockets.
    * 
    * Although the package provides access to low-level networking
    * primitives, most clients will need only the basic interface provided
    * by the Dial, Listen, and Accept functions and the associated
    * Conn and Listener interfaces. The crypto/tls package uses
    * the same interfaces and similar Dial and Listen functions.
    * 
    * The Dial function connects to a server:
    * 
    * 	conn, err := net.Dial("tcp", "golang.org:80")
    * 	if err != nil {
    * 		// handle error
    * 	}
    * 	fmt.Fprintf(conn, "GET / HTTP/1.0\r\n\r\n")
    * 	status, err := bufio.NewReader(conn).ReadString('\n')
    * 	// ...
    * 
    * The Listen function creates servers:
    * 
    * 	ln, err := net.Listen("tcp", ":8080")
    * 	if err != nil {
    * 		// handle error
    * 	}
    * 	for {
    * 		conn, err := ln.Accept()
    * 		if err != nil {
    * 			// handle error
    * 		}
    * 		go handleConnection(conn)
    * 	}
    * 
    * # Name Resolution
    * 
    * The method for resolving domain names, whether indirectly with functions like Dial
    * or directly with functions like LookupHost and LookupAddr, varies by operating system.
    * 
    * On Unix systems, the resolver has two options for resolving names.
    * It can use a pure Go resolver that sends DNS requests directly to the servers
    * listed in /etc/resolv.conf, or it can use a cgo-based resolver that calls C
    * library routines such as getaddrinfo and getnameinfo.
    * 
    * By default the pure Go resolver is used, because a blocked DNS request consumes
    * only a goroutine, while a blocked C call consumes an operating system thread.
    * When cgo is available, the cgo-based resolver is used instead under a variety of
    * conditions: on systems that do not let programs make direct DNS requests (OS X),
    * when the LOCALDOMAIN environment variable is present (even if empty),
    * when the RES_OPTIONS or HOSTALIASES environment variable is non-empty,
    * when the ASR_CONFIG environment variable is non-empty (OpenBSD only),
    * when /etc/resolv.conf or /etc/nsswitch.conf specify the use of features that the
    * Go resolver does not implement, and when the name being looked up ends in .local
    * or is an mDNS name.
    * 
    * The resolver decision can be overridden by setting the netdns value of the
    * GODEBUG environment variable (see package runtime) to go or cgo, as in:
    * 
    * 	export GODEBUG=netdns=go    # force pure Go resolver
    * 	export GODEBUG=netdns=cgo   # force native resolver (cgo, win32)
    * 
    * The decision can also be forced while building the Go source tree
    * by setting the netgo or netcgo build tag.
    * 
    * A numeric netdns setting, as in GODEBUG=netdns=1, causes the resolver
    * to print debugging information about its decisions.
    * To force a particular resolver while also printing debugging information,
    * join the two settings by a plus sign, as in GODEBUG=netdns=go+1.
    * 
    * On macOS, if Go code that uses the net package is built with
    * -buildmode=c-archive, linking the resulting archive into a C program
    * requires passing -lresolv when linking the C code.
    * 
    * On Plan 9, the resolver always accesses /net/cs and /net/dns.
    * 
    * On Windows, in Go 1.18.x and earlier, the resolver always used C
    * library functions, such as GetAddrInfo and DnsQuery.
    * 
**/
class Net {
    /**
        * Dial connects to the address on the named network.
        * 
        * Known networks are "tcp", "tcp4" (IPv4-only), "tcp6" (IPv6-only),
        * "udp", "udp4" (IPv4-only), "udp6" (IPv6-only), "ip", "ip4"
        * (IPv4-only), "ip6" (IPv6-only), "unix", "unixgram" and
        * "unixpacket".
        * 
        * For TCP and UDP networks, the address has the form "host:port".
        * The host must be a literal IP address, or a host name that can be
        * resolved to IP addresses.
        * The port must be a literal port number or a service name.
        * If the host is a literal IPv6 address it must be enclosed in square
        * brackets, as in "[2001:db8::1]:80" or "[fe80::1%zone]:80".
        * The zone specifies the scope of the literal IPv6 address as defined
        * in RFC 4007.
        * The functions JoinHostPort and SplitHostPort manipulate a pair of
        * host and port in this form.
        * When using TCP, and the host resolves to multiple IP addresses,
        * Dial will try each IP address in order until one succeeds.
        * 
        * Examples:
        * 
        * 	Dial("tcp", "golang.org:http")
        * 	Dial("tcp", "192.0.2.1:http")
        * 	Dial("tcp", "198.51.100.1:80")
        * 	Dial("udp", "[2001:db8::1]:domain")
        * 	Dial("udp", "[fe80::1%lo0]:53")
        * 	Dial("tcp", ":80")
        * 
        * For IP networks, the network must be "ip", "ip4" or "ip6" followed
        * by a colon and a literal protocol number or a protocol name, and
        * the address has the form "host". The host must be a literal IP
        * address or a literal IPv6 address with zone.
        * It depends on each operating system how the operating system
        * behaves with a non-well known protocol number such as "0" or "255".
        * 
        * Examples:
        * 
        * 	Dial("ip4:1", "192.0.2.1")
        * 	Dial("ip6:ipv6-icmp", "2001:db8::1")
        * 	Dial("ip6:58", "fe80::1%lo0")
        * 
        * For TCP, UDP and IP networks, if the host is empty or a literal
        * unspecified IP address, as in ":80", "0.0.0.0:80" or "[::]:80" for
        * TCP and UDP, "", "0.0.0.0" or "::" for IP, the local system is
        * assumed.
        * 
        * For Unix networks, the address must be a file system path.
    **/
    static public inline function dial(_network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } return stdgo._internal.net.Net_dial.dial(_network, _address);
    /**
        * DialTimeout acts like Dial but takes a timeout.
        * 
        * The timeout includes name resolution, if required.
        * When using TCP, and the host in the address parameter resolves to
        * multiple IP addresses, the timeout is spread over each consecutive
        * dial, such that each is given an appropriate fraction of the time
        * to connect.
        * 
        * See func Dial for a description of the network and address
        * parameters.
    **/
    static public inline function dialTimeout(_network:stdgo.GoString, _address:stdgo.GoString, _timeout:stdgo._internal.time.Time_duration.Duration):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } return stdgo._internal.net.Net_dialtimeout.dialTimeout(_network, _address, _timeout);
    /**
        * Listen announces on the local network address.
        * 
        * The network must be "tcp", "tcp4", "tcp6", "unix" or "unixpacket".
        * 
        * For TCP networks, if the host in the address parameter is empty or
        * a literal unspecified IP address, Listen listens on all available
        * unicast and anycast IP addresses of the local system.
        * To only use IPv4, use network "tcp4".
        * The address can use a host name, but this is not recommended,
        * because it will create a listener for at most one of the host's IP
        * addresses.
        * If the port in the address parameter is empty or "0", as in
        * "127.0.0.1:" or "[::1]:0", a port number is automatically chosen.
        * The Addr method of Listener can be used to discover the chosen
        * port.
        * 
        * See func Dial for a description of the network and address
        * parameters.
        * 
        * Listen uses context.Background internally; to specify the context, use
        * ListenConfig.Listen.
    **/
    static public inline function listen(_network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_listener.Listener; var _1 : stdgo.Error; } return stdgo._internal.net.Net_listen.listen(_network, _address);
    /**
        * ListenPacket announces on the local network address.
        * 
        * The network must be "udp", "udp4", "udp6", "unixgram", or an IP
        * transport. The IP transports are "ip", "ip4", or "ip6" followed by
        * a colon and a literal protocol number or a protocol name, as in
        * "ip:1" or "ip:icmp".
        * 
        * For UDP and IP networks, if the host in the address parameter is
        * empty or a literal unspecified IP address, ListenPacket listens on
        * all available IP addresses of the local system except multicast IP
        * addresses.
        * To only use IPv4, use network "udp4" or "ip4:proto".
        * The address can use a host name, but this is not recommended,
        * because it will create a listener for at most one of the host's IP
        * addresses.
        * If the port in the address parameter is empty or "0", as in
        * "127.0.0.1:" or "[::1]:0", a port number is automatically chosen.
        * The LocalAddr method of PacketConn can be used to discover the
        * chosen port.
        * 
        * See func Dial for a description of the network and address
        * parameters.
        * 
        * ListenPacket uses context.Background internally; to specify the context, use
        * ListenConfig.ListenPacket.
    **/
    static public inline function listenPacket(_network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_packetconn.PacketConn; var _1 : stdgo.Error; } return stdgo._internal.net.Net_listenpacket.listenPacket(_network, _address);
    /**
        * FileConn returns a copy of the network connection corresponding to
        * the open file f.
        * It is the caller's responsibility to close f when finished.
        * Closing c does not affect f, and closing f does not affect c.
    **/
    static public inline function fileConn(_f:stdgo.Ref<stdgo._internal.os.Os_file.File>):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } return stdgo._internal.net.Net_fileconn.fileConn(_f);
    /**
        * FileListener returns a copy of the network listener corresponding
        * to the open file f.
        * It is the caller's responsibility to close ln when finished.
        * Closing ln does not affect f, and closing f does not affect ln.
    **/
    static public inline function fileListener(_f:stdgo.Ref<stdgo._internal.os.Os_file.File>):{ var _0 : stdgo._internal.net.Net_listener.Listener; var _1 : stdgo.Error; } return stdgo._internal.net.Net_filelistener.fileListener(_f);
    /**
        * FilePacketConn returns a copy of the packet network connection
        * corresponding to the open file f.
        * It is the caller's responsibility to close f when finished.
        * Closing c does not affect f, and closing f does not affect c.
    **/
    static public inline function filePacketConn(_f:stdgo.Ref<stdgo._internal.os.Os_file.File>):{ var _0 : stdgo._internal.net.Net_packetconn.PacketConn; var _1 : stdgo.Error; } return stdgo._internal.net.Net_filepacketconn.filePacketConn(_f);
    /**
        * Interfaces returns a list of the system's network interfaces.
    **/
    static public inline function interfaces():{ var _0 : stdgo.Slice<stdgo._internal.net.Net_interface.Interface>; var _1 : stdgo.Error; } return stdgo._internal.net.Net_interfaces.interfaces();
    /**
        * InterfaceAddrs returns a list of the system's unicast interface
        * addresses.
        * 
        * The returned list does not identify the associated interface; use
        * Interfaces and Interface.Addrs for more detail.
    **/
    static public inline function interfaceAddrs():{ var _0 : stdgo.Slice<stdgo._internal.net.Net_addr.Addr>; var _1 : stdgo.Error; } return stdgo._internal.net.Net_interfaceaddrs.interfaceAddrs();
    /**
        * InterfaceByIndex returns the interface specified by index.
        * 
        * On Solaris, it returns one of the logical network interfaces
        * sharing the logical data link; for more precision use
        * InterfaceByName.
    **/
    static public inline function interfaceByIndex(_index:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_interface.Interface>; var _1 : stdgo.Error; } return stdgo._internal.net.Net_interfacebyindex.interfaceByIndex(_index);
    /**
        * InterfaceByName returns the interface specified by name.
    **/
    static public inline function interfaceByName(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_interface.Interface>; var _1 : stdgo.Error; } return stdgo._internal.net.Net_interfacebyname.interfaceByName(_name);
    /**
        * IPv4 returns the IP address (in 16-byte form) of the
        * IPv4 address a.b.c.d.
    **/
    static public inline function iPv4(_a:stdgo.GoUInt8, _b:stdgo.GoUInt8, _c:stdgo.GoUInt8, _d:stdgo.GoUInt8):stdgo._internal.net.Net_ip.IP return stdgo._internal.net.Net_ipv4.iPv4(_a, _b, _c, _d);
    /**
        * IPv4Mask returns the IP mask (in 4-byte form) of the
        * IPv4 mask a.b.c.d.
    **/
    static public inline function iPv4Mask(_a:stdgo.GoUInt8, _b:stdgo.GoUInt8, _c:stdgo.GoUInt8, _d:stdgo.GoUInt8):stdgo._internal.net.Net_ipmask.IPMask return stdgo._internal.net.Net_ipv4mask.iPv4Mask(_a, _b, _c, _d);
    /**
        * CIDRMask returns an IPMask consisting of 'ones' 1 bits
        * followed by 0s up to a total length of 'bits' bits.
        * For a mask of this form, CIDRMask is the inverse of IPMask.Size.
    **/
    static public inline function cIDRMask(_ones:stdgo.GoInt, _bits:stdgo.GoInt):stdgo._internal.net.Net_ipmask.IPMask return stdgo._internal.net.Net_cidrmask.cIDRMask(_ones, _bits);
    /**
        * ParseIP parses s as an IP address, returning the result.
        * The string s can be in IPv4 dotted decimal ("192.0.2.1"), IPv6
        * ("2001:db8::68"), or IPv4-mapped IPv6 ("::ffff:192.0.2.1") form.
        * If s is not a valid textual representation of an IP address,
        * ParseIP returns nil.
    **/
    static public inline function parseIP(_s:stdgo.GoString):stdgo._internal.net.Net_ip.IP return stdgo._internal.net.Net_parseip.parseIP(_s);
    /**
        * ParseCIDR parses s as a CIDR notation IP address and prefix length,
        * like "192.0.2.0/24" or "2001:db8::/32", as defined in
        * RFC 4632 and RFC 4291.
        * 
        * It returns the IP address and the network implied by the IP and
        * prefix length.
        * For example, ParseCIDR("192.0.2.1/24") returns the IP address
        * 192.0.2.1 and the network 192.0.2.0/24.
    **/
    static public inline function parseCIDR(_s:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_ip.IP; var _1 : stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>; var _2 : stdgo.Error; } return stdgo._internal.net.Net_parsecidr.parseCIDR(_s);
    /**
        * ResolveIPAddr returns an address of IP end point.
        * 
        * The network must be an IP network name.
        * 
        * If the host in the address parameter is not a literal IP address,
        * ResolveIPAddr resolves the address to an address of IP end point.
        * Otherwise, it parses the address as a literal IP address.
        * The address parameter can use a host name, but this is not
        * recommended, because it will return at most one of the host name's
        * IP addresses.
        * 
        * See func Dial for a description of the network and address
        * parameters.
    **/
    static public inline function resolveIPAddr(_network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>; var _1 : stdgo.Error; } return stdgo._internal.net.Net_resolveipaddr.resolveIPAddr(_network, _address);
    /**
        * DialIP acts like Dial for IP networks.
        * 
        * The network must be an IP network name; see func Dial for details.
        * 
        * If laddr is nil, a local address is automatically chosen.
        * If the IP field of raddr is nil or an unspecified IP address, the
        * local system is assumed.
    **/
    static public inline function dialIP(_network:stdgo.GoString, _laddr:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>, _raddr:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn>; var _1 : stdgo.Error; } return stdgo._internal.net.Net_dialip.dialIP(_network, _laddr, _raddr);
    /**
        * ListenIP acts like ListenPacket for IP networks.
        * 
        * The network must be an IP network name; see func Dial for details.
        * 
        * If the IP field of laddr is nil or an unspecified IP address,
        * ListenIP listens on all available IP addresses of the local system
        * except multicast IP addresses.
    **/
    static public inline function listenIP(_network:stdgo.GoString, _laddr:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn>; var _1 : stdgo.Error; } return stdgo._internal.net.Net_listenip.listenIP(_network, _laddr);
    /**
        * SplitHostPort splits a network address of the form "host:port",
        * "host%zone:port", "[host]:port" or "[host%zone]:port" into host or
        * host%zone and port.
        * 
        * A literal IPv6 address in hostport must be enclosed in square
        * brackets, as in "[::1]:80", "[::1%lo0]:80".
        * 
        * See func Dial for a description of the hostport parameter, and host
        * and port results.
    **/
    static public inline function splitHostPort(_hostport:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return stdgo._internal.net.Net_splithostport.splitHostPort(_hostport);
    /**
        * JoinHostPort combines host and port into a network address of the
        * form "host:port". If host contains a colon, as found in literal
        * IPv6 addresses, then JoinHostPort returns "[host]:port".
        * 
        * See func Dial for a description of the host and port parameters.
    **/
    static public inline function joinHostPort(_host:stdgo.GoString, _port:stdgo.GoString):stdgo.GoString return stdgo._internal.net.Net_joinhostport.joinHostPort(_host, _port);
    /**
        * LookupHost looks up the given host using the local resolver.
        * It returns a slice of that host's addresses.
        * 
        * LookupHost uses context.Background internally; to specify the context, use
        * Resolver.LookupHost.
    **/
    static public inline function lookupHost(_host:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return stdgo._internal.net.Net_lookuphost.lookupHost(_host);
    /**
        * LookupIP looks up host using the local resolver.
        * It returns a slice of that host's IPv4 and IPv6 addresses.
    **/
    static public inline function lookupIP(_host:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.net.Net_ip.IP>; var _1 : stdgo.Error; } return stdgo._internal.net.Net_lookupip.lookupIP(_host);
    /**
        * LookupPort looks up the port for the given network and service.
        * 
        * LookupPort uses context.Background internally; to specify the context, use
        * Resolver.LookupPort.
    **/
    static public inline function lookupPort(_network:stdgo.GoString, _service:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return stdgo._internal.net.Net_lookupport.lookupPort(_network, _service);
    /**
        * LookupCNAME returns the canonical name for the given host.
        * Callers that do not care about the canonical name can call
        * LookupHost or LookupIP directly; both take care of resolving
        * the canonical name as part of the lookup.
        * 
        * A canonical name is the final name after following zero
        * or more CNAME records.
        * LookupCNAME does not return an error if host does not
        * contain DNS "CNAME" records, as long as host resolves to
        * address records.
        * 
        * The returned canonical name is validated to be a properly
        * formatted presentation-format domain name.
        * 
        * LookupCNAME uses context.Background internally; to specify the context, use
        * Resolver.LookupCNAME.
    **/
    static public inline function lookupCNAME(_host:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return stdgo._internal.net.Net_lookupcname.lookupCNAME(_host);
    /**
        * LookupSRV tries to resolve an SRV query of the given service,
        * protocol, and domain name. The proto is "tcp" or "udp".
        * The returned records are sorted by priority and randomized
        * by weight within a priority.
        * 
        * LookupSRV constructs the DNS name to look up following RFC 2782.
        * That is, it looks up _service._proto.name. To accommodate services
        * publishing SRV records under non-standard names, if both service
        * and proto are empty strings, LookupSRV looks up name directly.
        * 
        * The returned service names are validated to be properly
        * formatted presentation-format domain names. If the response contains
        * invalid names, those records are filtered out and an error
        * will be returned alongside the remaining results, if any.
    **/
    static public inline function lookupSRV(_service:stdgo.GoString, _proto:stdgo.GoString, _name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>; var _2 : stdgo.Error; } return stdgo._internal.net.Net_lookupsrv.lookupSRV(_service, _proto, _name);
    /**
        * LookupMX returns the DNS MX records for the given domain name sorted by preference.
        * 
        * The returned mail server names are validated to be properly
        * formatted presentation-format domain names. If the response contains
        * invalid names, those records are filtered out and an error
        * will be returned alongside the remaining results, if any.
        * 
        * LookupMX uses context.Background internally; to specify the context, use
        * Resolver.LookupMX.
    **/
    static public inline function lookupMX(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>>; var _1 : stdgo.Error; } return stdgo._internal.net.Net_lookupmx.lookupMX(_name);
    /**
        * LookupNS returns the DNS NS records for the given domain name.
        * 
        * The returned name server names are validated to be properly
        * formatted presentation-format domain names. If the response contains
        * invalid names, those records are filtered out and an error
        * will be returned alongside the remaining results, if any.
        * 
        * LookupNS uses context.Background internally; to specify the context, use
        * Resolver.LookupNS.
    **/
    static public inline function lookupNS(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>>; var _1 : stdgo.Error; } return stdgo._internal.net.Net_lookupns.lookupNS(_name);
    /**
        * LookupTXT returns the DNS TXT records for the given domain name.
        * 
        * LookupTXT uses context.Background internally; to specify the context, use
        * Resolver.LookupTXT.
    **/
    static public inline function lookupTXT(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return stdgo._internal.net.Net_lookuptxt.lookupTXT(_name);
    /**
        * LookupAddr performs a reverse lookup for the given address, returning a list
        * of names mapping to that address.
        * 
        * The returned names are validated to be properly formatted presentation-format
        * domain names. If the response contains invalid names, those records are filtered
        * out and an error will be returned alongside the remaining results, if any.
        * 
        * When using the host C library resolver, at most one result will be
        * returned. To bypass the host resolver, use a custom Resolver.
        * 
        * LookupAddr uses context.Background internally; to specify the context, use
        * Resolver.LookupAddr.
    **/
    static public inline function lookupAddr(_addr:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return stdgo._internal.net.Net_lookupaddr.lookupAddr(_addr);
    /**
        * ParseMAC parses s as an IEEE 802 MAC-48, EUI-48, EUI-64, or a 20-octet
        * IP over InfiniBand link-layer address using one of the following formats:
        * 
        * 	00:00:5e:00:53:01
        * 	02:00:5e:10:00:00:00:01
        * 	00:00:00:00:fe:80:00:00:00:00:00:00:02:00:5e:10:00:00:00:01
        * 	00-00-5e-00-53-01
        * 	02-00-5e-10-00-00-00-01
        * 	00-00-00-00-fe-80-00-00-00-00-00-00-02-00-5e-10-00-00-00-01
        * 	0000.5e00.5301
        * 	0200.5e10.0000.0001
        * 	0000.0000.fe80.0000.0000.0000.0200.5e10.0000.0001
    **/
    static public inline function parseMAC(_s:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_hardwareaddr.HardwareAddr; var _1 : stdgo.Error; } return stdgo._internal.net.Net_parsemac.parseMAC(_s);
    /**
        * Pipe creates a synchronous, in-memory, full duplex
        * network connection; both ends implement the Conn interface.
        * Reads on one end are matched with writes on the other,
        * copying data directly between the two; there is no internal
        * buffering.
    **/
    static public inline function pipe():{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo._internal.net.Net_conn.Conn; } return stdgo._internal.net.Net_pipe.pipe();
    /**
        * ResolveTCPAddr returns an address of TCP end point.
        * 
        * The network must be a TCP network name.
        * 
        * If the host in the address parameter is not a literal IP address or
        * the port is not a literal port number, ResolveTCPAddr resolves the
        * address to an address of TCP end point.
        * Otherwise, it parses the address as a pair of literal IP address
        * and port number.
        * The address parameter can use a host name, but this is not
        * recommended, because it will return at most one of the host name's
        * IP addresses.
        * 
        * See func Dial for a description of the network and address
        * parameters.
    **/
    static public inline function resolveTCPAddr(_network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>; var _1 : stdgo.Error; } return stdgo._internal.net.Net_resolvetcpaddr.resolveTCPAddr(_network, _address);
    /**
        * TCPAddrFromAddrPort returns addr as a TCPAddr. If addr.IsValid() is false,
        * then the returned TCPAddr will contain a nil IP field, indicating an
        * address family-agnostic unspecified address.
    **/
    static public inline function tCPAddrFromAddrPort(_addr:stdgo._internal.net.netip.Netip_addrport.AddrPort):stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr> return stdgo._internal.net.Net_tcpaddrfromaddrport.tCPAddrFromAddrPort(_addr);
    /**
        * DialTCP acts like Dial for TCP networks.
        * 
        * The network must be a TCP network name; see func Dial for details.
        * 
        * If laddr is nil, a local address is automatically chosen.
        * If the IP field of raddr is nil or an unspecified IP address, the
        * local system is assumed.
    **/
    static public inline function dialTCP(_network:stdgo.GoString, _laddr:stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>, _raddr:stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>; var _1 : stdgo.Error; } return stdgo._internal.net.Net_dialtcp.dialTCP(_network, _laddr, _raddr);
    /**
        * ListenTCP acts like Listen for TCP networks.
        * 
        * The network must be a TCP network name; see func Dial for details.
        * 
        * If the IP field of laddr is nil or an unspecified IP address,
        * ListenTCP listens on all available unicast and anycast IP addresses
        * of the local system.
        * If the Port field of laddr is 0, a port number is automatically
        * chosen.
    **/
    static public inline function listenTCP(_network:stdgo.GoString, _laddr:stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_tcplistener.TCPListener>; var _1 : stdgo.Error; } return stdgo._internal.net.Net_listentcp.listenTCP(_network, _laddr);
    /**
        * ResolveUDPAddr returns an address of UDP end point.
        * 
        * The network must be a UDP network name.
        * 
        * If the host in the address parameter is not a literal IP address or
        * the port is not a literal port number, ResolveUDPAddr resolves the
        * address to an address of UDP end point.
        * Otherwise, it parses the address as a pair of literal IP address
        * and port number.
        * The address parameter can use a host name, but this is not
        * recommended, because it will return at most one of the host name's
        * IP addresses.
        * 
        * See func Dial for a description of the network and address
        * parameters.
    **/
    static public inline function resolveUDPAddr(_network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>; var _1 : stdgo.Error; } return stdgo._internal.net.Net_resolveudpaddr.resolveUDPAddr(_network, _address);
    /**
        * UDPAddrFromAddrPort returns addr as a UDPAddr. If addr.IsValid() is false,
        * then the returned UDPAddr will contain a nil IP field, indicating an
        * address family-agnostic unspecified address.
    **/
    static public inline function uDPAddrFromAddrPort(_addr:stdgo._internal.net.netip.Netip_addrport.AddrPort):stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr> return stdgo._internal.net.Net_udpaddrfromaddrport.uDPAddrFromAddrPort(_addr);
    /**
        * DialUDP acts like Dial for UDP networks.
        * 
        * The network must be a UDP network name; see func Dial for details.
        * 
        * If laddr is nil, a local address is automatically chosen.
        * If the IP field of raddr is nil or an unspecified IP address, the
        * local system is assumed.
    **/
    static public inline function dialUDP(_network:stdgo.GoString, _laddr:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>, _raddr:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>; var _1 : stdgo.Error; } return stdgo._internal.net.Net_dialudp.dialUDP(_network, _laddr, _raddr);
    /**
        * ListenUDP acts like ListenPacket for UDP networks.
        * 
        * The network must be a UDP network name; see func Dial for details.
        * 
        * If the IP field of laddr is nil or an unspecified IP address,
        * ListenUDP listens on all available IP addresses of the local system
        * except multicast IP addresses.
        * If the Port field of laddr is 0, a port number is automatically
        * chosen.
    **/
    static public inline function listenUDP(_network:stdgo.GoString, _laddr:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>; var _1 : stdgo.Error; } return stdgo._internal.net.Net_listenudp.listenUDP(_network, _laddr);
    /**
        * ListenMulticastUDP acts like ListenPacket for UDP networks but
        * takes a group address on a specific network interface.
        * 
        * The network must be a UDP network name; see func Dial for details.
        * 
        * ListenMulticastUDP listens on all available IP addresses of the
        * local system including the group, multicast IP address.
        * If ifi is nil, ListenMulticastUDP uses the system-assigned
        * multicast interface, although this is not recommended because the
        * assignment depends on platforms and sometimes it might require
        * routing configuration.
        * If the Port field of gaddr is 0, a port number is automatically
        * chosen.
        * 
        * ListenMulticastUDP is just for convenience of simple, small
        * applications. There are golang.org/x/net/ipv4 and
        * golang.org/x/net/ipv6 packages for general purpose uses.
        * 
        * Note that ListenMulticastUDP will set the IP_MULTICAST_LOOP socket option
        * to 0 under IPPROTO_IP, to disable loopback of multicast packets.
    **/
    static public inline function listenMulticastUDP(_network:stdgo.GoString, _ifi:stdgo.Ref<stdgo._internal.net.Net_interface.Interface>, _gaddr:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>; var _1 : stdgo.Error; } return stdgo._internal.net.Net_listenmulticastudp.listenMulticastUDP(_network, _ifi, _gaddr);
    /**
        * ResolveUnixAddr returns an address of Unix domain socket end point.
        * 
        * The network must be a Unix network name.
        * 
        * See func Dial for a description of the network and address
        * parameters.
    **/
    static public inline function resolveUnixAddr(_network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>; var _1 : stdgo.Error; } return stdgo._internal.net.Net_resolveunixaddr.resolveUnixAddr(_network, _address);
    /**
        * DialUnix acts like Dial for Unix networks.
        * 
        * The network must be a Unix network name; see func Dial for details.
        * 
        * If laddr is non-nil, it is used as the local address for the
        * connection.
    **/
    static public inline function dialUnix(_network:stdgo.GoString, _laddr:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>, _raddr:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn>; var _1 : stdgo.Error; } return stdgo._internal.net.Net_dialunix.dialUnix(_network, _laddr, _raddr);
    /**
        * ListenUnix acts like Listen for Unix networks.
        * 
        * The network must be "unix" or "unixpacket".
    **/
    static public inline function listenUnix(_network:stdgo.GoString, _laddr:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener>; var _1 : stdgo.Error; } return stdgo._internal.net.Net_listenunix.listenUnix(_network, _laddr);
    /**
        * ListenUnixgram acts like ListenPacket for Unix networks.
        * 
        * The network must be "unixgram".
    **/
    static public inline function listenUnixgram(_network:stdgo.GoString, _laddr:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn>; var _1 : stdgo.Error; } return stdgo._internal.net.Net_listenunixgram.listenUnixgram(_network, _laddr);
}
