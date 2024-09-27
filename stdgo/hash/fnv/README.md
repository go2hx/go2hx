# Module: `stdgo.hash.fnv`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [class Fnv](<#class-fnv>)

  - [`function new128():stdgo._internal.hash.Hash`](<#fnv-function-new128>)

  - [`function new128a():stdgo._internal.hash.Hash`](<#fnv-function-new128a>)

  - [`function new32():stdgo._internal.hash.Hash32`](<#fnv-function-new32>)

  - [`function new32a():stdgo._internal.hash.Hash32`](<#fnv-function-new32a>)

  - [`function new64():stdgo._internal.hash.Hash64`](<#fnv-function-new64>)

  - [`function new64a():stdgo._internal.hash.Hash64`](<#fnv-function-new64a>)

- [typedef T\_sum128](<#typedef-t_sum128>)

- [typedef T\_sum128a](<#typedef-t_sum128a>)

- [typedef T\_sum32](<#typedef-t_sum32>)

- [typedef T\_sum32a](<#typedef-t_sum32a>)

- [typedef T\_sum64](<#typedef-t_sum64>)

- [typedef T\_sum64a](<#typedef-t_sum64a>)

# Classes


```haxe
import
```


## class Fnv


```
Package fnv implements FNV-1 and FNV-1a, non-cryptographic hash functions
    created by Glenn Fowler, Landon Curt Noll, and Phong Vo.
    See
    https://en.wikipedia.org/wiki/Fowler-Noll-Vo_hash_function.
```

All the hash.Hash implementations returned by this package also
implement encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
marshal and unmarshal the internal state of the hash.  

### Fnv function new128


```haxe
function new128():stdgo._internal.hash.Hash
```


```
New128 returns a new 128-bit FNV-1 hash.Hash.
        Its Sum method will lay the value out in big-endian byte order.
```
[\(view code\)](<./Fnv.hx#L255>)


### Fnv function new128a


```haxe
function new128a():stdgo._internal.hash.Hash
```


```
New128a returns a new 128-bit FNV-1a hash.Hash.
        Its Sum method will lay the value out in big-endian byte order.
```
[\(view code\)](<./Fnv.hx#L262>)


### Fnv function new32


```haxe
function new32():stdgo._internal.hash.Hash32
```


```
New32 returns a new 32-bit FNV-1 hash.Hash.
        Its Sum method will lay the value out in big-endian byte order.
```
[\(view code\)](<./Fnv.hx#L227>)


### Fnv function new32a


```haxe
function new32a():stdgo._internal.hash.Hash32
```


```
New32a returns a new 32-bit FNV-1a hash.Hash.
        Its Sum method will lay the value out in big-endian byte order.
```
[\(view code\)](<./Fnv.hx#L234>)


### Fnv function new64


```haxe
function new64():stdgo._internal.hash.Hash64
```


```
New64 returns a new 64-bit FNV-1 hash.Hash.
        Its Sum method will lay the value out in big-endian byte order.
```
[\(view code\)](<./Fnv.hx#L241>)


### Fnv function new64a


```haxe
function new64a():stdgo._internal.hash.Hash64
```


```
New64a returns a new 64-bit FNV-1a hash.Hash.
        Its Sum method will lay the value out in big-endian byte order.
```
[\(view code\)](<./Fnv.hx#L248>)


# Typedefs


```haxe
import
```


## typedef T\_sum128


```haxe
typedef T_sum128 = stdgo._internal.hash.fnv.T_sum128;
```


## typedef T\_sum128a


```haxe
typedef T_sum128a = stdgo._internal.hash.fnv.T_sum128a;
```


## typedef T\_sum32


```haxe
typedef T_sum32 = stdgo._internal.hash.fnv.T_sum32;
```


## typedef T\_sum32a


```haxe
typedef T_sum32a = stdgo._internal.hash.fnv.T_sum32a;
```


## typedef T\_sum64


```haxe
typedef T_sum64 = stdgo._internal.hash.fnv.T_sum64;
```


## typedef T\_sum64a


```haxe
typedef T_sum64a = stdgo._internal.hash.fnv.T_sum64a;
```


