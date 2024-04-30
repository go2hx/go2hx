# Module: `stdgo.internal.fmtsort`

[(view library index)](../../stdgo.md)


# Overview


```
Package fmtsort provides a general stable ordering mechanism
    for maps, on behalf of the fmt and text/template packages.
    It is not guaranteed to be efficient and works only for types
    that are valid map keys.
```
# Index


- [`function compare(a:stdgo._internal.reflect.Value, b:stdgo._internal.reflect.Value):Int`](<#function-compare>)

- [`function sort(mapValue:stdgo._internal.reflect.Value):stdgo.internal.fmtsort.SortedMap`](<#function-sort>)

- [typedef SortedMap](<#typedef-sortedmap>)

- [typedef SortedMap\_asInterface](<#typedef-sortedmap_asinterface>)

- [typedef SortedMap\_static\_extension](<#typedef-sortedmap_static_extension>)

# Functions


```haxe
import stdgo.internal.fmtsort.Fmtsort
```


## function compare


```haxe
function compare(a:stdgo._internal.reflect.Value, b:stdgo._internal.reflect.Value):Int
```


[\(view code\)](<./Fmtsort.hx#L10>)


## function sort


```haxe
function sort(mapValue:stdgo._internal.reflect.Value):stdgo.internal.fmtsort.SortedMap
```


```
Sort accepts a map and returns a SortedMap that has the same keys and
    values but in a stable sorted order according to the keys, modulo issues
    raised by unorderable key values such as NaNs.
```

The ordering rules are more general than with Go's \< operator:  

```
      - when applicable, nil compares low
      - ints, floats, and strings order by <
      - NaN compares less than non-NaN floats
      - bool compares false before true
      - complex compares real, then imag
      - pointers compare by machine address
      - channel values compare by machine address
      - structs compare each field in turn
      - arrays compare each element in turn.
        Otherwise identical arrays compare by length.
      - interface values compare first by reflect.Type describing the concrete type
        and then by concrete value as described in the previous rules.
```
[\(view code\)](<./Fmtsort.hx#L31>)


# Typedefs


```haxe
import stdgo.internal.fmtsort.*
```


## typedef SortedMap


```haxe
typedef SortedMap = Dynamic;
```


## typedef SortedMap\_asInterface


```haxe
typedef SortedMap_asInterface = Dynamic;
```


## typedef SortedMap\_static\_extension


```haxe
typedef SortedMap_static_extension = Dynamic;
```


