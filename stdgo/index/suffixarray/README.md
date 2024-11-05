# Module: `stdgo.index.suffixarray`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [class Suffixarray](<#class-suffixarray>)

  - [`function new_(_data:Array<UInt>):stdgo.index.suffixarray.Index`](<#suffixarray-function-new_>)

- [abstract Index](<#abstract-index>)

- [abstract T\_ints](<#abstract-t_ints>)

# Classes


```haxe
import
```


## class Suffixarray


```
Package suffixarray implements substring search in logarithmic time using
    an in-memory suffix array.
```

Example use:  

```
 create index for some data
    	index := suffixarray.New(data)
```
```
 lookup byte slice s
    	offsets1 := index.Lookup(s, -1) // the list of all indices where s occurs in data
    	offsets2 := index.Lookup(s, 3)  // the list of at most 3 indices where s occurs in data
```
### Suffixarray function new\_


```haxe
function new_(_data:Array<UInt>):stdgo.index.suffixarray.Index
```


```
New creates a new Index for data.
        Index creation time is O(N) for N = len(data).
```
[\(view code\)](<./Suffixarray.hx#L93>)


# Abstracts


## abstract Index


[\(view file containing code\)](<./Suffixarray.hx>)


## abstract T\_ints


[\(view file containing code\)](<./Suffixarray.hx>)


