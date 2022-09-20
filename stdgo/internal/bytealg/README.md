# Module: stdgo.internal.bytealg


[(view library index)](../../stdgo.md)


# Overview


 


# Index


- [Constants](<#constants>)

- [function compare\(a:stdgo.Slice\<stdgo.GoByte\>, b:stdgo.Slice\<stdgo.GoByte\>\):stdgo.GoInt](<#function-compare>)

- [function count\(b:stdgo.Slice\<stdgo.GoByte\>, c:stdgo.GoByte\):stdgo.GoInt](<#function-count>)

- [function countString\(s:stdgo.GoString, c:stdgo.GoByte\):stdgo.GoInt](<#function-countstring>)

- [function cutover\(\_n:stdgo.GoInt\):stdgo.GoInt](<#function-cutover>)

- [function hashStrRev\(sep:stdgo.GoString\):\{\_1:stdgo.GoUInt32, \_0:stdgo.GoUInt32\}](<#function-hashstrrev>)

- [function hashStrRevBytes\(sep:stdgo.Slice\<stdgo.GoByte\>\):\{\_1:stdgo.GoUInt32, \_0:stdgo.GoUInt32\}](<#function-hashstrrevbytes>)

- [function index\(a:stdgo.Slice\<stdgo.GoByte\>, b:stdgo.Slice\<stdgo.GoByte\>\):stdgo.GoInt](<#function-index>)

- [function indexByte\(\_b:stdgo.Slice\<stdgo.GoByte\>, \_c:stdgo.GoByte\):stdgo.GoInt](<#function-indexbyte>)

- [function indexByteString\(b:stdgo.GoString, c:stdgo.GoByte\):stdgo.GoInt](<#function-indexbytestring>)

- [function indexRabinKarp\(\_s:stdgo.GoString, \_substr:stdgo.GoString\):stdgo.GoInt](<#function-indexrabinkarp>)

- [function indexRabinKarpBytes\(\_s:stdgo.Slice\<stdgo.GoByte\>, \_sep:stdgo.Slice\<stdgo.GoByte\>\):stdgo.GoInt](<#function-indexrabinkarpbytes>)

- [function indexString\(\_a:stdgo.GoString, \_b:stdgo.GoString\):stdgo.GoInt](<#function-indexstring>)

# Constants


```haxe
import stdgo.internal.bytealg.Bytealg
```


```haxe
final maxBruteForce:stdgo.GoInt = 64
```


```haxe
final maxLen:stdgo.GoInt = 32
```


```haxe
final primeRK:stdgo.GoInt = 16777619
```


# Functions


```haxe
import stdgo.internal.bytealg.Bytealg
```


## function compare


```haxe
function compare(a:stdgo.Slice<stdgo.GoByte>, b:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```


 


[\(view code\)](<./Bytealg.hx#L99>)


## function count


```haxe
function count(b:stdgo.Slice<stdgo.GoByte>, c:stdgo.GoByte):stdgo.GoInt
```


 


[\(view code\)](<./Bytealg.hx#L46>)


## function countString


```haxe
function countString(s:stdgo.GoString, c:stdgo.GoByte):stdgo.GoInt
```


 


[\(view code\)](<./Bytealg.hx#L55>)


## function cutover


```haxe
function cutover(_n:stdgo.GoInt):stdgo.GoInt
```


 


[\(view code\)](<./Bytealg.hx#L123>)


## function hashStrRev


```haxe
function hashStrRev(sep:stdgo.GoString):{_1:stdgo.GoUInt32, _0:stdgo.GoUInt32}
```


 


[\(view code\)](<./Bytealg.hx#L67>)


## function hashStrRevBytes


```haxe
function hashStrRevBytes(sep:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.GoUInt32, _0:stdgo.GoUInt32}
```


 


[\(view code\)](<./Bytealg.hx#L27>)


## function index


```haxe
function index(a:stdgo.Slice<stdgo.GoByte>, b:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```


 


[\(view code\)](<./Bytealg.hx#L88>)


## function indexByte


```haxe
function indexByte(_b:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.GoInt
```


 


[\(view code\)](<./Bytealg.hx#L11>)


## function indexByteString


```haxe
function indexByteString(b:stdgo.GoString, c:stdgo.GoByte):stdgo.GoInt
```


 


[\(view code\)](<./Bytealg.hx#L19>)


## function indexRabinKarp


```haxe
function indexRabinKarp(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt
```


 


[\(view code\)](<./Bytealg.hx#L128>)


## function indexRabinKarpBytes


```haxe
function indexRabinKarpBytes(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```


 


[\(view code\)](<./Bytealg.hx#L130>)


## function indexString


```haxe
function indexString(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt
```


 


[\(view code\)](<./Bytealg.hx#L147>)


