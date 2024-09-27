# Module: `stdgo.hash.maphash`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [class Maphash](<#class-maphash>)

  - [`function bytes(_seed:stdgo.hash.maphash.Seed, _b:Array<UInt>):haxe.UInt64`](<#maphash-function-bytes>)

  - [`function makeSeed():stdgo.hash.maphash.Seed`](<#maphash-function-makeseed>)

  - [`function string(_seed:stdgo.hash.maphash.Seed, _s:String):haxe.UInt64`](<#maphash-function-string>)

- [abstract Seed](<#abstract-seed>)

- [abstract Hash](<#abstract-hash>)

# Classes


```haxe
import
```


## class Maphash


```
Package maphash provides hash functions on byte sequences.
    These hash functions are intended to be used to implement hash tables or
    other data structures that need to map arbitrary strings or byte
    sequences to a uniform distribution on unsigned 64-bit integers.
    Each different instance of a hash table or data structure should use its own Seed.
```

The hash functions are not cryptographically secure.
\(See crypto/sha256 and crypto/sha512 for cryptographic use.\)  

### Maphash function bytes


```haxe
function bytes(_seed:stdgo.hash.maphash.Seed, _b:Array<UInt>):haxe.UInt64
```



Bytes returns the hash of b with the given seed.  


Bytes is equivalent to, but more convenient and efficient than:  

```
        	var h Hash
        	h.SetSeed(seed)
        	h.Write(b)
        	return h.Sum64()
```
[\(view code\)](<./Maphash.hx#L115>)


### Maphash function makeSeed


```haxe
function makeSeed():stdgo.hash.maphash.Seed
```



MakeSeed returns a new random seed.  

[\(view code\)](<./Maphash.hx#L135>)


### Maphash function string


```haxe
function string(_seed:stdgo.hash.maphash.Seed, _s:String):haxe.UInt64
```



String returns the hash of s with the given seed.  


String is equivalent to, but more convenient and efficient than:  

```
        	var h Hash
        	h.SetSeed(seed)
        	h.WriteString(s)
        	return h.Sum64()
```
[\(view code\)](<./Maphash.hx#L129>)


# Abstracts


## abstract Seed


[\(view file containing code\)](<./Maphash.hx>)


## abstract Hash


[\(view file containing code\)](<./Maphash.hx>)


