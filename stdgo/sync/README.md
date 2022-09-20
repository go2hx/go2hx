# Module: stdgo.sync


[(view library index)](../stdgo.md)


# Overview


 


# Index


- [class Map\_](<#class-map_>)

  - [function delete\(key:stdgo.AnyInterface\):Void](<#map_-function-delete>)

  - [function load\(key:stdgo.AnyInterface\):\{\_1:Bool, \_0:\{\<unknown\>\}\}](<#map_-function-load>)

  - [function loadAndDelete\(key:stdgo.AnyInterface\):\{\_1:Bool, \_0:\{\<unknown\>\}\}](<#map_-function-loadanddelete>)

  - [function loadOrStore\(key:stdgo.AnyInterface, value:stdgo.AnyInterface\):\{\_1:Bool, \_0:\{\<unknown\>\}\}](<#map_-function-loadorstore>)

  - [function new\(\):Void](<#map_-function-new>)

  - [function range\(f:\(key:stdgo.AnyInterface, value:stdgo.AnyInterface\):Bool\):\{\<unknown\>\}](<#map_-function-range>)

  - [function store\(key:stdgo.AnyInterface, value:stdgo.AnyInterface\):Void](<#map_-function-store>)

- [class Mutex](<#class-mutex>)

  - [function \_lockSlow\(\):Void](<#mutex-function-_lockslow>)

  - [function \_unlockSlow\(i:stdgo.GoInt32\):Void](<#mutex-function-_unlockslow>)

  - [function lock\(\):Void](<#mutex-function-lock>)

  - [function new\(\):Void](<#mutex-function-new>)

  - [function rlock\(\):Void](<#mutex-function-rlock>)

  - [function runlock\(\):Void](<#mutex-function-runlock>)

  - [function tryLock\(\):Bool](<#mutex-function-trylock>)

  - [function unlock\(\):Void](<#mutex-function-unlock>)

- [class Once](<#class-once>)

  - [function do\_\(f:haxe.Function\):Void](<#once-function-do_>)

  - [function new\(\):Void](<#once-function-new>)

- [class Pool](<#class-pool>)

  - [function get\(\):stdgo.AnyInterface](<#pool-function-get>)

  - [function new\(?new\_:\(\):stdgo.AnyInterface, ?\_victimSize:stdgo.GoInt, ?\_victim:stdgo.AnyInterface, ?\_noCopy:stdgo.sync.T\_noCopy, ?\_localSize:stdgo.GoInt, ?\_local:stdgo.AnyInterface\):Void](<#pool-function-new>)

  - [function new\_\(\):stdgo.AnyInterface](<#pool-function-new_>)

  - [function put\(\_p:stdgo.AnyInterface\):Void](<#pool-function-put>)

- [class RWMutex](<#class-rwmutex>)

  - [function lock\(\):Void](<#rwmutex-function-lock>)

  - [function new\(\):Void](<#rwmutex-function-new>)

  - [function rlock\(\):Void](<#rwmutex-function-rlock>)

  - [function runlock\(\):Void](<#rwmutex-function-runlock>)

  - [function unlock\(\):Void](<#rwmutex-function-unlock>)

- [class T\_noCopy](<#class-t_nocopy>)

  - [function lock\(\):Void](<#t_nocopy-function-lock>)

  - [function new\(\):Void](<#t_nocopy-function-new>)

  - [function unlock\(\):Void](<#t_nocopy-function-unlock>)

- [class WaitGroup](<#class-waitgroup>)

  - [function add\(delta:stdgo.GoInt\):Void](<#waitgroup-function-add>)

  - [function done\(\):Void](<#waitgroup-function-done>)

  - [function new\(\):Void](<#waitgroup-function-new>)

  - [function wait\_\(\):Void](<#waitgroup-function-wait_>)

- [typedef Locker](<#typedef-locker>)

# Classes


```haxe
import
```


## class Map\_


 


### Map\_ function delete


```haxe
function delete(key:stdgo.AnyInterface):Void
```


 


[\(view code\)](<./Sync.hx#L114>)


### Map\_ function load


```haxe
function load(key:stdgo.AnyInterface):{_1:Bool, _0:{<unknown>}}
```


 


[\(view code\)](<./Sync.hx#L117>)


### Map\_ function loadAndDelete


```haxe
function loadAndDelete(key:stdgo.AnyInterface):{_1:Bool, _0:{<unknown>}}
```


 


[\(view code\)](<./Sync.hx#L120>)


### Map\_ function loadOrStore


```haxe
function loadOrStore(key:stdgo.AnyInterface, value:stdgo.AnyInterface):{_1:Bool, _0:{<unknown>}}
```


 


[\(view code\)](<./Sync.hx#L123>)


### Map\_ function new


```haxe
function new():Void
```


 


[\(view code\)](<./Sync.hx#L109>)


### Map\_ function range


```haxe
function range(f:(key:stdgo.AnyInterface, value:stdgo.AnyInterface):Bool):{<unknown>}
```


 


[\(view code\)](<./Sync.hx#L126>)


### Map\_ function store


```haxe
function store(key:stdgo.AnyInterface, value:stdgo.AnyInterface):Void
```


 


[\(view code\)](<./Sync.hx#L128>)


## class Mutex


 


### Mutex function \_lockSlow


```haxe
function _lockSlow():Void
```


 


[\(view code\)](<./Sync.hx#L155>)


### Mutex function \_unlockSlow


```haxe
function _unlockSlow(i:stdgo.GoInt32):Void
```


 


[\(view code\)](<./Sync.hx#L157>)


### Mutex function lock


```haxe
function lock():Void
```


 


[\(view code\)](<./Sync.hx#L150>)


### Mutex function new


```haxe
function new():Void
```


 


[\(view code\)](<./Sync.hx#L142>)


### Mutex function rlock


```haxe
function rlock():Void
```


 


[\(view code\)](<./Sync.hx#L162>)


### Mutex function runlock


```haxe
function runlock():Void
```


 


[\(view code\)](<./Sync.hx#L164>)


### Mutex function tryLock


```haxe
function tryLock():Bool
```


 


[\(view code\)](<./Sync.hx#L153>)


### Mutex function unlock


```haxe
function unlock():Void
```


 


[\(view code\)](<./Sync.hx#L160>)


## class Once


 


```haxe
var done:Bool
```


### Once function do\_


```haxe
function do_(f:haxe.Function):Void
```


 


[\(view code\)](<./Sync.hx#L214>)


### Once function new


```haxe
function new():Void
```


 


[\(view code\)](<./Sync.hx#L212>)


## class Pool


 


```haxe
var _local:stdgo.AnyInterface
```


```haxe
var _localSize:stdgo.GoInt
```


```haxe
var _noCopy:stdgo.sync.T_noCopy
```


```haxe
var _victim:stdgo.AnyInterface
```


```haxe
var _victimSize:stdgo.GoInt
```


### Pool function get


```haxe
function get():stdgo.AnyInterface
```


 


[\(view code\)](<./Sync.hx#L36>)


### Pool function new


```haxe
function new(?new_:():stdgo.AnyInterface, ?_victimSize:stdgo.GoInt, ?_victim:stdgo.AnyInterface, ?_noCopy:stdgo.sync.T_noCopy, ?_localSize:stdgo.GoInt, ?_local:stdgo.AnyInterface):Void
```


 


[\(view code\)](<./Sync.hx#L20>)


### Pool function new\_


```haxe
function new_():stdgo.AnyInterface
```


 


### Pool function put


```haxe
function put(_p:stdgo.AnyInterface):Void
```


 


[\(view code\)](<./Sync.hx#L43>)


## class RWMutex


 


### RWMutex function lock


```haxe
function lock():Void
```


 


[\(view code\)](<./Sync.hx#L98>)


### RWMutex function new


```haxe
function new():Void
```


 


[\(view code\)](<./Sync.hx#L94>)


### RWMutex function rlock


```haxe
function rlock():Void
```


 


[\(view code\)](<./Sync.hx#L102>)


### RWMutex function runlock


```haxe
function runlock():Void
```


 


[\(view code\)](<./Sync.hx#L104>)


### RWMutex function unlock


```haxe
function unlock():Void
```


 


[\(view code\)](<./Sync.hx#L100>)


## class T\_noCopy


 


### T\_noCopy function lock


```haxe
function lock():Void
```


 


[\(view code\)](<./Sync.hx#L200>)


### T\_noCopy function new


```haxe
function new():Void
```


 


[\(view code\)](<./Sync.hx#L198>)


### T\_noCopy function unlock


```haxe
function unlock():Void
```


 


[\(view code\)](<./Sync.hx#L202>)


## class WaitGroup


 


### WaitGroup function add


```haxe
function add(delta:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sync.hx#L179>)


### WaitGroup function done


```haxe
function done():Void
```


 


[\(view code\)](<./Sync.hx#L185>)


### WaitGroup function new


```haxe
function new():Void
```


 


[\(view code\)](<./Sync.hx#L176>)


### WaitGroup function wait\_


```haxe
function wait_():Void
```


 


[\(view code\)](<./Sync.hx#L193>)


# Typedefs


```haxe
import
```


## typedef Locker


```haxe
typedef Locker = var a:{<__underlying__> | ():Void | ():Void | ():stdgo.AnyInterface}
```


 


