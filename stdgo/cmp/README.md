# Module: `stdgo.cmp`

[(view library index)](../stdgo.md)


# Overview


# Index


- [class Cmp](<#class-cmp>)

  - [`function compare(_x:Dynamic, _y:Dynamic):Int`](<#cmp-function-compare>)

  - [`function less(_x:Dynamic, _y:Dynamic):Bool`](<#cmp-function-less>)

- [typedef Ordered](<#typedef-ordered>)

# Classes


```haxe
import
```


## class Cmp


```
Package cmp provides types and functions related to comparing
    ordered values.
```
### Cmp function compare


```haxe
function compare(_x:Dynamic, _y:Dynamic):Int
```



Compare returns  

```
        	-1 if x is less than y,
        	 0 if x equals y,
        	+1 if x is greater than y.
```

For floating\-point types, a NaN is considered less than any non\-NaN,
a NaN is considered equal to a NaN, and \-0.0 is equal to 0.0.  

[\(view code\)](<./Cmp.hx#L31>)


### Cmp function less


```haxe
function less(_x:Dynamic, _y:Dynamic):Bool
```


```
Less reports whether x is less than y.
        For floating-point types, a NaN is considered less than any non-NaN,
        and -0.0 is not less than (is equal to) 0.0.
```
[\(view code\)](<./Cmp.hx#L18>)


# Typedefs


```haxe
import
```


## typedef Ordered


```haxe
typedef Ordered = {
};
```


