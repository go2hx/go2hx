# Module: `stdgo.net.netip`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [class Netip](<#class-netip>)

  - [`function addrFrom16(_addr:haxe.ds.Vector<UInt>):stdgo.net.netip.Addr`](<#netip-function-addrfrom16>)

  - [`function addrFrom4(_addr:haxe.ds.Vector<UInt>):stdgo.net.netip.Addr`](<#netip-function-addrfrom4>)

  - [`function addrFromSlice(_slice:Array<UInt>):stdgo.Tuple<stdgo.net.netip.Addr, Bool>`](<#netip-function-addrfromslice>)

  - [`function addrPortFrom(_ip:stdgo.net.netip.Addr, _port:UInt):stdgo.net.netip.AddrPort`](<#netip-function-addrportfrom>)

  - [`function ipv4Unspecified():stdgo.net.netip.Addr`](<#netip-function-ipv4unspecified>)

  - [`function ipv6LinkLocalAllNodes():stdgo.net.netip.Addr`](<#netip-function-ipv6linklocalallnodes>)

  - [`function ipv6LinkLocalAllRouters():stdgo.net.netip.Addr`](<#netip-function-ipv6linklocalallrouters>)

  - [`function ipv6Loopback():stdgo.net.netip.Addr`](<#netip-function-ipv6loopback>)

  - [`function ipv6Unspecified():stdgo.net.netip.Addr`](<#netip-function-ipv6unspecified>)

  - [`function mustParseAddr(_s:String):stdgo.net.netip.Addr`](<#netip-function-mustparseaddr>)

  - [`function mustParseAddrPort(_s:String):stdgo.net.netip.AddrPort`](<#netip-function-mustparseaddrport>)

  - [`function mustParsePrefix(_s:String):stdgo.net.netip.Prefix`](<#netip-function-mustparseprefix>)

  - [`function parseAddr(_s:String):stdgo.Tuple<stdgo.net.netip.Addr, stdgo.Error>`](<#netip-function-parseaddr>)

  - [`function parseAddrPort(_s:String):stdgo.Tuple<stdgo.net.netip.AddrPort, stdgo.Error>`](<#netip-function-parseaddrport>)

  - [`function parsePrefix(_s:String):stdgo.Tuple<stdgo.net.netip.Prefix, stdgo.Error>`](<#netip-function-parseprefix>)

  - [`function prefixFrom(_ip:stdgo.net.netip.Addr, _bits:Int):stdgo.net.netip.Prefix`](<#netip-function-prefixfrom>)

- [abstract Addr](<#abstract-addr>)

- [abstract T\_parseAddrError](<#abstract-t_parseaddrerror>)

- [abstract AddrPort](<#abstract-addrport>)

- [abstract Prefix](<#abstract-prefix>)

- [abstract T\_uint128](<#abstract-t_uint128>)

# Classes


```haxe
import
```


## class Netip


```
Package netip defines an IP address type that's a small value type.
    Building on that [Addr] type, the package also defines [AddrPort] (an
    IP address and a port) and [Prefix] (an IP address and a bit length
    prefix).
```

Compared to the \[net.IP\] type, \[Addr\] type takes less memory, is immutable,
and is comparable \(supports == and being a map key\).  

### Netip function addrFrom16


```haxe
function addrFrom16(_addr:haxe.ds.Vector<UInt>):stdgo.net.netip.Addr
```


```
AddrFrom16 returns the IPv6 address given by the bytes in addr.
        An IPv4-mapped IPv6 address is left as an IPv6 address.
        (Use Unmap to convert them if needed.)
```
[\(view code\)](<./Netip.hx#L417>)


### Netip function addrFrom4


```haxe
function addrFrom4(_addr:haxe.ds.Vector<UInt>):stdgo.net.netip.Addr
```



AddrFrom4 returns the address of the IPv4 address given by the bytes in addr.  

[\(view code\)](<./Netip.hx#L408>)


### Netip function addrFromSlice


```haxe
function addrFromSlice(_slice:Array<UInt>):stdgo.Tuple<stdgo.net.netip.Addr, Bool>
```


```
AddrFromSlice parses the 4- or 16-byte byte slice as an IPv4 or IPv6 address.
        Note that a net.IP can be passed directly as the []byte argument.
        If slice's length is not 4 or 16, AddrFromSlice returns Addr{}, false.
```
[\(view code\)](<./Netip.hx#L444>)


### Netip function addrPortFrom


```haxe
function addrPortFrom(_ip:stdgo.net.netip.Addr, _port:UInt):stdgo.net.netip.AddrPort
```


```
AddrPortFrom returns an AddrPort with the provided IP and port.
        It does not allocate.
```
[\(view code\)](<./Netip.hx#L455>)


### Netip function ipv4Unspecified


```haxe
function ipv4Unspecified():stdgo.net.netip.Addr
```



IPv4Unspecified returns the IPv4 unspecified address "0.0.0.0".  

[\(view code\)](<./Netip.hx#L402>)


### Netip function ipv6LinkLocalAllNodes


```haxe
function ipv6LinkLocalAllNodes():stdgo.net.netip.Addr
```


```
IPv6LinkLocalAllNodes returns the IPv6 link-local all nodes multicast
        address ff02::1.
```
[\(view code\)](<./Netip.hx#L377>)


### Netip function ipv6LinkLocalAllRouters


```haxe
function ipv6LinkLocalAllRouters():stdgo.net.netip.Addr
```


```
IPv6LinkLocalAllRouters returns the IPv6 link-local all routers multicast
        address ff02::2.
```
[\(view code\)](<./Netip.hx#L384>)


### Netip function ipv6Loopback


```haxe
function ipv6Loopback():stdgo.net.netip.Addr
```



IPv6Loopback returns the IPv6 loopback address ::1.  

[\(view code\)](<./Netip.hx#L390>)


### Netip function ipv6Unspecified


```haxe
function ipv6Unspecified():stdgo.net.netip.Addr
```



IPv6Unspecified returns the IPv6 unspecified address "::".  

[\(view code\)](<./Netip.hx#L396>)


### Netip function mustParseAddr


```haxe
function mustParseAddr(_s:String):stdgo.net.netip.Addr
```


```
MustParseAddr calls ParseAddr(s) and panics on error.
        It is intended for use in tests with hard-coded strings.
```
[\(view code\)](<./Netip.hx#L436>)


### Netip function mustParseAddrPort


```haxe
function mustParseAddrPort(_s:String):stdgo.net.netip.AddrPort
```


```
MustParseAddrPort calls ParseAddrPort(s) and panics on error.
        It is intended for use in tests with hard-coded strings.
```
[\(view code\)](<./Netip.hx#L474>)


### Netip function mustParsePrefix


```haxe
function mustParsePrefix(_s:String):stdgo.net.netip.Prefix
```


```
MustParsePrefix calls ParsePrefix(s) and panics on error.
        It is intended for use in tests with hard-coded strings.
```
[\(view code\)](<./Netip.hx#L509>)


### Netip function parseAddr


```haxe
function parseAddr(_s:String):stdgo.Tuple<stdgo.net.netip.Addr, stdgo.Error>
```


```
ParseAddr parses s as an IP address, returning the result. The string
        s can be in dotted decimal ("192.0.2.1"), IPv6 ("2001:db8::68"),
        or IPv6 with a scoped addressing zone ("fe80::1cc0:3e8c:119f:c2e1%ens18").
```
[\(view code\)](<./Netip.hx#L426>)


### Netip function parseAddrPort


```haxe
function parseAddrPort(_s:String):stdgo.Tuple<stdgo.net.netip.AddrPort, stdgo.Error>
```



ParseAddrPort parses s as an AddrPort.  


It doesn't do any name resolution: both the address and the port
must be numeric.  

[\(view code\)](<./Netip.hx#L464>)


### Netip function parsePrefix


```haxe
function parsePrefix(_s:String):stdgo.Tuple<stdgo.net.netip.Prefix, stdgo.Error>
```


```
ParsePrefix parses s as an IP address prefix.
        The string can be in the form "192.168.1.0/24" or "2001:db8::/32",
        the CIDR notation defined in RFC 4632 and RFC 4291.
        IPv6 zones are not permitted in prefixes, and an error will be returned if a
        zone is present.
```

Note that masked address bits are not zeroed. Use Masked for that.  

[\(view code\)](<./Netip.hx#L499>)


### Netip function prefixFrom


```haxe
function prefixFrom(_ip:stdgo.net.netip.Addr, _bits:Int):stdgo.net.netip.Prefix
```


```
PrefixFrom returns a Prefix with the provided IP address and bit
        prefix length.
```

It does not allocate. Unlike Addr.Prefix, PrefixFrom does not mask
off the host bits of ip.  


If bits is less than zero or greater than ip.BitLen, Prefix.Bits
will return an invalid value \-1.  

[\(view code\)](<./Netip.hx#L487>)


# Abstracts


## abstract Addr


[\(view file containing code\)](<./Netip.hx>)


## abstract T\_parseAddrError


[\(view file containing code\)](<./Netip.hx>)


## abstract AddrPort


[\(view file containing code\)](<./Netip.hx>)


## abstract Prefix


[\(view file containing code\)](<./Netip.hx>)


## abstract T\_uint128


[\(view file containing code\)](<./Netip.hx>)


