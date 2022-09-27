# Module: stdgo.sync.atomic


[(view library index)](../../stdgo.md)


# Overview


 


# Index


- [Variables](<#variables>)

- [function addInt32\(addr:stdgo.Pointer\<stdgo.GoInt32\>, delta:stdgo.GoInt32\):stdgo.GoInt32](<#function-addint32>)

- [function addInt64\(addr:stdgo.Pointer\<stdgo.GoInt64\>, delta:stdgo.GoInt64\):stdgo.GoInt64](<#function-addint64>)

- [function addUint32\(addr:stdgo.Pointer\<stdgo.GoUInt32\>, delta:stdgo.GoUInt32\):stdgo.GoUInt32](<#function-adduint32>)

- [function addUint64\(addr:stdgo.Pointer\<stdgo.GoUInt64\>, delta:stdgo.GoUInt64\):stdgo.GoUInt64](<#function-adduint64>)

- [function compareAndSwapUint32\(addr:stdgo.Pointer\<stdgo.GoUInt32\>, old:stdgo.GoUInt32, new\_:stdgo.GoUInt32\):Bool](<#function-compareandswapuint32>)

- [function loadUint32\(addr:stdgo.Pointer\<stdgo.GoUInt32\>\):stdgo.GoUInt32](<#function-loaduint32>)

- [function loadUint64\(addr:stdgo.Pointer\<stdgo.GoUInt64\>\):stdgo.GoUInt64](<#function-loaduint64>)

- [function storeInt32\(addr:stdgo.Pointer\<stdgo.GoInt32\>, val:stdgo.GoInt32\):Void](<#function-storeint32>)

- [function storeInt64\(addr:stdgo.Pointer\<stdgo.GoInt64\>, val:stdgo.GoInt64\):Void](<#function-storeint64>)

- [function storeUint32\(addr:stdgo.Pointer\<stdgo.GoUInt32\>, val:stdgo.GoUInt32\):Void](<#function-storeuint32>)

- [function storeUint64\(addr:stdgo.Pointer\<stdgo.GoUInt64\>, val:stdgo.GoUInt64\):Void](<#function-storeuint64>)

- [function storeUintptr\(addr:stdgo.Pointer\<stdgo.GoUIntptr\>, val:stdgo.GoUIntptr\):Void](<#function-storeuintptr>)

- [function swapUInt32\(addr:stdgo.Pointer\<stdgo.GoUInt32\>, new\_:stdgo.GoUInt32\):stdgo.GoUInt32](<#function-swapuint32>)

# Variables


```haxe
import stdgo.sync.atomic.Atomic
```


```haxe
var mutex:sys.thread.Mutex
```


# Functions


```haxe
import stdgo.sync.atomic.Atomic
```


## function \`addInt32\`


```haxe
function addInt32(addr:stdgo.Pointer<stdgo.GoInt32>, delta:stdgo.GoInt32):stdgo.GoInt32
```


 


[\(view code\)](<./Atomic.hx#L9>)


## function \`addInt64\`


```haxe
function addInt64(addr:stdgo.Pointer<stdgo.GoInt64>, delta:stdgo.GoInt64):stdgo.GoInt64
```


 


[\(view code\)](<./Atomic.hx#L16>)


## function \`addUint32\`


```haxe
function addUint32(addr:stdgo.Pointer<stdgo.GoUInt32>, delta:stdgo.GoUInt32):stdgo.GoUInt32
```


 


[\(view code\)](<./Atomic.hx#L23>)


## function \`addUint64\`


```haxe
function addUint64(addr:stdgo.Pointer<stdgo.GoUInt64>, delta:stdgo.GoUInt64):stdgo.GoUInt64
```


 


[\(view code\)](<./Atomic.hx#L30>)


## function \`compareAndSwapUint32\`


```haxe
function compareAndSwapUint32(addr:stdgo.Pointer<stdgo.GoUInt32>, old:stdgo.GoUInt32, new_:stdgo.GoUInt32):Bool
```


 


[\(view code\)](<./Atomic.hx#L51>)


## function \`loadUint32\`


```haxe
function loadUint32(addr:stdgo.Pointer<stdgo.GoUInt32>):stdgo.GoUInt32
```


 


[\(view code\)](<./Atomic.hx#L37>)


## function \`loadUint64\`


```haxe
function loadUint64(addr:stdgo.Pointer<stdgo.GoUInt64>):stdgo.GoUInt64
```


 


[\(view code\)](<./Atomic.hx#L44>)


## function \`storeInt32\`


```haxe
function storeInt32(addr:stdgo.Pointer<stdgo.GoInt32>, val:stdgo.GoInt32):Void
```


 


[\(view code\)](<./Atomic.hx#L82>)


## function \`storeInt64\`


```haxe
function storeInt64(addr:stdgo.Pointer<stdgo.GoInt64>, val:stdgo.GoInt64):Void
```


 


[\(view code\)](<./Atomic.hx#L88>)


## function \`storeUint32\`


```haxe
function storeUint32(addr:stdgo.Pointer<stdgo.GoUInt32>, val:stdgo.GoUInt32):Void
```


 


[\(view code\)](<./Atomic.hx#L70>)


## function \`storeUint64\`


```haxe
function storeUint64(addr:stdgo.Pointer<stdgo.GoUInt64>, val:stdgo.GoUInt64):Void
```


 


[\(view code\)](<./Atomic.hx#L76>)


## function \`storeUintptr\`


```haxe
function storeUintptr(addr:stdgo.Pointer<stdgo.GoUIntptr>, val:stdgo.GoUIntptr):Void
```


 


[\(view code\)](<./Atomic.hx#L94>)


## function \`swapUInt32\`


```haxe
function swapUInt32(addr:stdgo.Pointer<stdgo.GoUInt32>, new_:stdgo.GoUInt32):stdgo.GoUInt32
```


 


[\(view code\)](<./Atomic.hx#L62>)


