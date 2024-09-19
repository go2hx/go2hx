# Module: `stdgo._internal.net.netip`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _appendDecimal(_b:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoUInt8):stdgo.Slice<stdgo.GoUInt8>`](<#function-_appenddecimal>)

- [`function _appendHex(_b:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoUInt16):stdgo.Slice<stdgo.GoUInt8>`](<#function-_appendhex>)

- [`function _appendHexPad(_b:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoUInt16):stdgo.Slice<stdgo.GoUInt8>`](<#function-_appendhexpad>)

- [`function _bePutUint32(_b:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt32):Void`](<#function-_beputuint32>)

- [`function _bePutUint64(_b:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt64):Void`](<#function-_beputuint64>)

- [`function _beUint64(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64`](<#function-_beuint64>)

- [`function _joinHostPort(_host:stdgo.GoString, _port:stdgo.GoString):stdgo.GoString`](<#function-_joinhostport>)

- [`function _lePutUint16(_b:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt16):Void`](<#function-_leputuint16>)

- [`function _leUint16(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt16`](<#function-_leuint16>)

- [`function _mask6(_n:stdgo.GoInt):stdgo._internal.net.netip.T_uint128`](<#function-_mask6>)

- [`function _parseIPv4(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo._internal.net.netip.Addr;
}`](<#function-_parseipv4>)

- [`function _parseIPv6(_in:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo._internal.net.netip.Addr;
}`](<#function-_parseipv6>)

- [`function _splitAddrPort(_s:stdgo.GoString):{
	_3:stdgo.Error;
	_2:Bool;
	_1:stdgo.GoString;
	_0:stdgo.GoString;
}`](<#function-_splitaddrport>)

- [`function _stringsLastIndexByte(_s:stdgo.GoString, _b:stdgo.GoUInt8):stdgo.GoInt`](<#function-_stringslastindexbyte>)

- [`function addrFrom16(_addr:stdgo.GoArray<stdgo.GoUInt8>):stdgo._internal.net.netip.Addr`](<#function-addrfrom16>)

- [`function addrFrom4(_addr:stdgo.GoArray<stdgo.GoUInt8>):stdgo._internal.net.netip.Addr`](<#function-addrfrom4>)

- [`function addrFromSlice(_slice:stdgo.Slice<stdgo.GoUInt8>):{
	_1:Bool;
	_0:stdgo._internal.net.netip.Addr;
}`](<#function-addrfromslice>)

- [`function addrPortFrom(_ip:stdgo._internal.net.netip.Addr, _port:stdgo.GoUInt16):stdgo._internal.net.netip.AddrPort`](<#function-addrportfrom>)

- [`function ipv4Unspecified():stdgo._internal.net.netip.Addr`](<#function-ipv4unspecified>)

- [`function ipv6LinkLocalAllNodes():stdgo._internal.net.netip.Addr`](<#function-ipv6linklocalallnodes>)

- [`function ipv6LinkLocalAllRouters():stdgo._internal.net.netip.Addr`](<#function-ipv6linklocalallrouters>)

- [`function ipv6Loopback():stdgo._internal.net.netip.Addr`](<#function-ipv6loopback>)

- [`function ipv6Unspecified():stdgo._internal.net.netip.Addr`](<#function-ipv6unspecified>)

- [`function mustParseAddr(_s:stdgo.GoString):stdgo._internal.net.netip.Addr`](<#function-mustparseaddr>)

- [`function mustParseAddrPort(_s:stdgo.GoString):stdgo._internal.net.netip.AddrPort`](<#function-mustparseaddrport>)

- [`function mustParsePrefix(_s:stdgo.GoString):stdgo._internal.net.netip.Prefix`](<#function-mustparseprefix>)

- [`function parseAddr(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo._internal.net.netip.Addr;
}`](<#function-parseaddr>)

- [`function parseAddrPort(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo._internal.net.netip.AddrPort;
}`](<#function-parseaddrport>)

- [`function parsePrefix(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo._internal.net.netip.Prefix;
}`](<#function-parseprefix>)

- [`function prefixFrom(_ip:stdgo._internal.net.netip.Addr, _bits:stdgo.GoInt):stdgo._internal.net.netip.Prefix`](<#function-prefixfrom>)

- [class Addr](<#class-addr>)

  - [`function new(?_addr:stdgo._internal.net.netip.T_uint128, ?_z:stdgo.Ref<stdgo._internal.internal.intern.Value>):Void`](<#addr-function-new>)

- [class AddrPort](<#class-addrport>)

  - [`function new(?_ip:stdgo._internal.net.netip.Addr, ?_port:stdgo.GoUInt16):Void`](<#addrport-function-new>)

- [class Prefix](<#class-prefix>)

  - [`function new(?_ip:stdgo._internal.net.netip.Addr, ?_bitsPlusOne:stdgo.GoUInt8):Void`](<#prefix-function-new>)

- [class T\_parseAddrError](<#class-t_parseaddrerror>)

  - [`function new(?_in:stdgo.GoString, ?_msg:stdgo.GoString, ?_at:stdgo.GoString):Void`](<#t_parseaddrerror-function-new>)

- [class T\_uint128](<#class-t_uint128>)

  - [`function new(?_hi:stdgo.GoUInt64, ?_lo:stdgo.GoUInt64):Void`](<#t_uint128-function-new>)

# Constants


```haxe
import stdgo._internal.net.netip.Netip_prefixFrom
```


```haxe
final _digits:stdgo.GoString = (("0123456789abcdef" : stdgo.GoString))
```


```haxe
final _netIPv4len:stdgo.GoUInt64 = ((4i64 : stdgo.GoUInt64))
```


```haxe
final _netIPv6len:stdgo.GoUInt64 = ((16i64 : stdgo.GoUInt64))
```


# Variables


```haxe
import stdgo._internal.net.netip.Netip_prefixFrom
```


```haxe
var _z0:stdgo.Ref<stdgo._internal.internal.intern.Value>
```


```haxe
var _z4:stdgo.Ref<stdgo._internal.internal.intern.Value>
```


```haxe
var _z6noz:stdgo.Ref<stdgo._internal.internal.intern.Value>
```


# Functions


```haxe
import stdgo._internal.net.netip.Netip_prefixFrom
```


## function \_appendDecimal


```haxe
function _appendDecimal(_b:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoUInt8):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Netip_prefixFrom.hx#L2>)


## function \_appendHex


```haxe
function _appendHex(_b:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoUInt16):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Netip_prefixFrom.hx#L2>)


## function \_appendHexPad


```haxe
function _appendHexPad(_b:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoUInt16):stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Netip_prefixFrom.hx#L2>)


## function \_bePutUint32


```haxe
function _bePutUint32(_b:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt32):Void
```


[\(view code\)](<./Netip_prefixFrom.hx#L2>)


## function \_bePutUint64


```haxe
function _bePutUint64(_b:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt64):Void
```


[\(view code\)](<./Netip_prefixFrom.hx#L2>)


## function \_beUint64


```haxe
function _beUint64(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64
```


[\(view code\)](<./Netip_prefixFrom.hx#L2>)


## function \_joinHostPort


```haxe
function _joinHostPort(_host:stdgo.GoString, _port:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Netip_prefixFrom.hx#L2>)


## function \_lePutUint16


```haxe
function _lePutUint16(_b:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt16):Void
```


[\(view code\)](<./Netip_prefixFrom.hx#L2>)


## function \_leUint16


```haxe
function _leUint16(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt16
```


[\(view code\)](<./Netip_prefixFrom.hx#L2>)


## function \_mask6


```haxe
function _mask6(_n:stdgo.GoInt):stdgo._internal.net.netip.T_uint128
```


[\(view code\)](<./Netip_prefixFrom.hx#L2>)


## function \_parseIPv4


```haxe
function _parseIPv4(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo._internal.net.netip.Addr;
}
```


[\(view code\)](<./Netip_prefixFrom.hx#L2>)


## function \_parseIPv6


```haxe
function _parseIPv6(_in:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo._internal.net.netip.Addr;
}
```


[\(view code\)](<./Netip_prefixFrom.hx#L2>)


## function \_splitAddrPort


```haxe
function _splitAddrPort(_s:stdgo.GoString):{
	_3:stdgo.Error;
	_2:Bool;
	_1:stdgo.GoString;
	_0:stdgo.GoString;
}
```


[\(view code\)](<./Netip_prefixFrom.hx#L2>)


## function \_stringsLastIndexByte


```haxe
function _stringsLastIndexByte(_s:stdgo.GoString, _b:stdgo.GoUInt8):stdgo.GoInt
```


[\(view code\)](<./Netip_prefixFrom.hx#L2>)


## function addrFrom16


```haxe
function addrFrom16(_addr:stdgo.GoArray<stdgo.GoUInt8>):stdgo._internal.net.netip.Addr
```


[\(view code\)](<./Netip_prefixFrom.hx#L2>)


## function addrFrom4


```haxe
function addrFrom4(_addr:stdgo.GoArray<stdgo.GoUInt8>):stdgo._internal.net.netip.Addr
```


[\(view code\)](<./Netip_prefixFrom.hx#L2>)


## function addrFromSlice


```haxe
function addrFromSlice(_slice:stdgo.Slice<stdgo.GoUInt8>):{
	_1:Bool;
	_0:stdgo._internal.net.netip.Addr;
}
```


[\(view code\)](<./Netip_prefixFrom.hx#L2>)


## function addrPortFrom


```haxe
function addrPortFrom(_ip:stdgo._internal.net.netip.Addr, _port:stdgo.GoUInt16):stdgo._internal.net.netip.AddrPort
```


[\(view code\)](<./Netip_prefixFrom.hx#L2>)


## function ipv4Unspecified


```haxe
function ipv4Unspecified():stdgo._internal.net.netip.Addr
```


[\(view code\)](<./Netip_prefixFrom.hx#L2>)


## function ipv6LinkLocalAllNodes


```haxe
function ipv6LinkLocalAllNodes():stdgo._internal.net.netip.Addr
```


[\(view code\)](<./Netip_prefixFrom.hx#L2>)


## function ipv6LinkLocalAllRouters


```haxe
function ipv6LinkLocalAllRouters():stdgo._internal.net.netip.Addr
```


[\(view code\)](<./Netip_prefixFrom.hx#L2>)


## function ipv6Loopback


```haxe
function ipv6Loopback():stdgo._internal.net.netip.Addr
```


[\(view code\)](<./Netip_prefixFrom.hx#L2>)


## function ipv6Unspecified


```haxe
function ipv6Unspecified():stdgo._internal.net.netip.Addr
```


[\(view code\)](<./Netip_prefixFrom.hx#L2>)


## function mustParseAddr


```haxe
function mustParseAddr(_s:stdgo.GoString):stdgo._internal.net.netip.Addr
```


[\(view code\)](<./Netip_prefixFrom.hx#L2>)


## function mustParseAddrPort


```haxe
function mustParseAddrPort(_s:stdgo.GoString):stdgo._internal.net.netip.AddrPort
```


[\(view code\)](<./Netip_prefixFrom.hx#L2>)


## function mustParsePrefix


```haxe
function mustParsePrefix(_s:stdgo.GoString):stdgo._internal.net.netip.Prefix
```


[\(view code\)](<./Netip_prefixFrom.hx#L2>)


## function parseAddr


```haxe
function parseAddr(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo._internal.net.netip.Addr;
}
```


[\(view code\)](<./Netip_prefixFrom.hx#L2>)


## function parseAddrPort


```haxe
function parseAddrPort(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo._internal.net.netip.AddrPort;
}
```


[\(view code\)](<./Netip_prefixFrom.hx#L2>)


## function parsePrefix


```haxe
function parsePrefix(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo._internal.net.netip.Prefix;
}
```


[\(view code\)](<./Netip_prefixFrom.hx#L2>)


## function prefixFrom


```haxe
function prefixFrom(_ip:stdgo._internal.net.netip.Addr, _bits:stdgo.GoInt):stdgo._internal.net.netip.Prefix
```


[\(view code\)](<./Netip_prefixFrom.hx#L2>)


# Classes


```haxe
import stdgo._internal.net.netip.*
```


## class Addr


```haxe
var _addr:stdgo._internal.net.netip.T_uint128
```


```haxe
var _z:stdgo.Ref<stdgo._internal.internal.intern.Value>
```


### Addr function new


```haxe
function new(?_addr:stdgo._internal.net.netip.T_uint128, ?_z:stdgo.Ref<stdgo._internal.internal.intern.Value>):Void
```


[\(view code\)](<./Netip_Addr.hx#L5>)


## class AddrPort


```haxe
var _ip:stdgo._internal.net.netip.Addr
```


```haxe
var _port:stdgo.GoUInt16
```


### AddrPort function new


```haxe
function new(?_ip:stdgo._internal.net.netip.Addr, ?_port:stdgo.GoUInt16):Void
```


[\(view code\)](<./Netip_AddrPort.hx#L5>)


## class Prefix


```haxe
var _bitsPlusOne:stdgo.GoUInt8
```


```haxe
var _ip:stdgo._internal.net.netip.Addr
```


### Prefix function new


```haxe
function new(?_ip:stdgo._internal.net.netip.Addr, ?_bitsPlusOne:stdgo.GoUInt8):Void
```


[\(view code\)](<./Netip_Prefix.hx#L5>)


## class T\_parseAddrError


```haxe
var _at:stdgo.GoString
```


```haxe
var _in:stdgo.GoString
```


```haxe
var _msg:stdgo.GoString
```


### T\_parseAddrError function new


```haxe
function new(?_in:stdgo.GoString, ?_msg:stdgo.GoString, ?_at:stdgo.GoString):Void
```


[\(view code\)](<./Netip_T_parseAddrError.hx#L6>)


## class T\_uint128


```haxe
var _hi:stdgo.GoUInt64
```


```haxe
var _lo:stdgo.GoUInt64
```


### T\_uint128 function new


```haxe
function new(?_hi:stdgo.GoUInt64, ?_lo:stdgo.GoUInt64):Void
```


[\(view code\)](<./Netip_T_uint128.hx#L5>)


