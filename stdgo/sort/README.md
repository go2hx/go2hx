# Module: `stdgo.sort`

[(view library index)](../stdgo.md)


# Overview


# Index


- [class Sort](<#class-sort>)

  - [`function find(_n:Int, _cmp:()):stdgo.Tuple<Int, Bool>`](<#sort-function-find>)

  - [`function float64s(_x:Array<Float>):Void`](<#sort-function-float64s>)

  - [`function float64sAreSorted(_x:Array<Float>):Bool`](<#sort-function-float64saresorted>)

  - [`function heapsort(_data:stdgo.sort.Interface):Void`](<#sort-function-heapsort>)

  - [`function ints(_x:Array<Int>):Void`](<#sort-function-ints>)

  - [`function intsAreSorted(_x:Array<Int>):Bool`](<#sort-function-intsaresorted>)

  - [`function isSorted(_data:stdgo.sort.Interface):Bool`](<#sort-function-issorted>)

  - [`function reverse(_data:stdgo.sort.Interface):stdgo.sort.Interface`](<#sort-function-reverse>)

  - [`function reverseRange(_data:stdgo.sort.Interface, _a:Int, _b:Int):Void`](<#sort-function-reverserange>)

  - [`function search(_n:Int, _f:()):Int`](<#sort-function-search>)

  - [`function searchFloat64s(_a:Array<Float>, _x:Float):Int`](<#sort-function-searchfloat64s>)

  - [`function searchInts(_a:Array<Int>, _x:Int):Int`](<#sort-function-searchints>)

  - [`function searchStrings(_a:Array<String>, _x:String):Int`](<#sort-function-searchstrings>)

  - [`function slice(_x:stdgo.AnyInterface, _less:(:stdgo.GoInt, :stdgo.GoInt):Bool):Void`](<#sort-function-slice>)

  - [`function sliceIsSorted(_x:stdgo.AnyInterface, _less:(:stdgo.GoInt, :stdgo.GoInt):Bool):Bool`](<#sort-function-sliceissorted>)

  - [`function sliceStable(_x:stdgo.AnyInterface, _less:(:stdgo.GoInt, :stdgo.GoInt):Bool):Void`](<#sort-function-slicestable>)

  - [`function sort(_data:stdgo.sort.Interface):Void`](<#sort-function-sort>)

  - [`function stable(_data:stdgo.sort.Interface):Void`](<#sort-function-stable>)

  - [`function strings(_x:Array<String>):Void`](<#sort-function-strings>)

  - [`function stringsAreSorted(_x:Array<String>):Bool`](<#sort-function-stringsaresorted>)

- [typedef Float64Slice](<#typedef-float64slice>)

- [typedef IntSlice](<#typedef-intslice>)

- [typedef Interface](<#typedef-interface>)

- [typedef StringSlice](<#typedef-stringslice>)

- [typedef T\_sortedHint](<#typedef-t_sortedhint>)

- [typedef T\_xorshift](<#typedef-t_xorshift>)

- [abstract T\_lessSwap](<#abstract-t_lessswap>)

- [abstract T\_reverse](<#abstract-t_reverse>)

# Classes


```haxe
import
```


## class Sort



Package sort provides primitives for sorting slices and user\-defined collections.  

### Sort function find


```haxe
function find(_n:Int, _cmp:()):stdgo.Tuple<Int, Bool>
```


```
Find uses binary search to find and return the smallest index i in [0, n)
        at which cmp(i) <= 0. If there is no such index i, Find returns i = n.
        The found result is true if i < n and cmp(i) == 0.
        Find calls cmp(i) only for i in the range [0, n).
```

To permit binary search, Find requires that cmp\(i\) \> 0 for a leading
prefix of the range, cmp\(i\) == 0 in the middle, and cmp\(i\) \< 0 for
the final suffix of the range. \(Each subrange could be empty.\)
The usual way to establish this condition is to interpret cmp\(i\)
as a comparison of a desired target value t against entry i in an
underlying indexed data structure x, returning \<0, 0, and \>0
when t \< x\[i\], t == x\[i\], and t \> x\[i\], respectively.  


For example, to look for a particular string in a sorted, random\-access
list of strings:  

```
        	i, found := sort.Find(x.Len(), func(i int) int {
        	    return strings.Compare(target, x.At(i))
        	})
        	if found {
        	    fmt.Printf("found %s at entry %d\n", target, i)
        	} else {
        	    fmt.Printf("%s not found, would insert at %d", target, i)
}
```
[\(view code\)](<./Sort.hx#L205>)


### Sort function float64s


```haxe
function float64s(_x:Array<Float>):Void
```


```
Float64s sorts a slice of float64s in increasing order.
        Not-a-number (NaN) values are ordered before other values.
```

Note: consider using the newer slices.Sort function, which runs faster.  

[\(view code\)](<./Sort.hx#L318>)


### Sort function float64sAreSorted


```haxe
function float64sAreSorted(_x:Array<Float>):Bool
```


```
Float64sAreSorted reports whether the slice x is sorted in increasing order,
        with not-a-number (NaN) values before any other values.
```

Note: consider using the newer slices.IsSorted function, which runs faster.  

[\(view code\)](<./Sort.hx#L346>)


### Sort function heapsort


```haxe
function heapsort(_data:stdgo.sort.Interface):Void
```


[\(view code\)](<./Sort.hx#L118>)


### Sort function ints


```haxe
function ints(_x:Array<Int>):Void
```



Ints sorts a slice of ints in increasing order.  


Note: consider using the newer slices.Sort function, which runs faster.  

[\(view code\)](<./Sort.hx#L308>)


### Sort function intsAreSorted


```haxe
function intsAreSorted(_x:Array<Int>):Bool
```



IntsAreSorted reports whether the slice x is sorted in increasing order.  


Note: consider using the newer slices.IsSorted function, which runs faster.  

[\(view code\)](<./Sort.hx#L336>)


### Sort function isSorted


```haxe
function isSorted(_data:stdgo.sort.Interface):Bool
```



IsSorted reports whether data is sorted.  


Note: in many situations, the newer slices.IsSortedFunc function is more
ergonomic and runs faster.  

[\(view code\)](<./Sort.hx#L300>)


### Sort function reverse


```haxe
function reverse(_data:stdgo.sort.Interface):stdgo.sort.Interface
```



Reverse returns the reverse order for data.  

[\(view code\)](<./Sort.hx#L291>)


### Sort function reverseRange


```haxe
function reverseRange(_data:stdgo.sort.Interface, _a:Int, _b:Int):Void
```


[\(view code\)](<./Sort.hx#L121>)


### Sort function search


```haxe
function search(_n:Int, _f:()):Int
```


```
Search uses binary search to find and return the smallest index i
        in [0, n) at which f(i) is true, assuming that on the range [0, n),
        f(i) == true implies f(i+1) == true. That is, Search requires that
        f is false for some (possibly empty) prefix of the input range [0, n)
        and then true for the (possibly empty) remainder; Search returns
        the first true index. If there is no such index, Search returns n.
        (Note that the "not found" return value is not -1 as in, for instance,
        strings.Index.)
        Search calls f(i) only for i in the range [0, n).
```

A common use of Search is to find the index i for a value x in
a sorted, indexable data structure such as an array or slice.
In this case, the argument f, typically a closure, captures the value
to be searched for, and how the data structure is indexed and
ordered.  


For instance, given a slice data sorted in ascending order,
the call Search\(len\(data\), func\(i int\) bool \{ return data\[i\] \>= 23 \}\)
returns the smallest index i such that data\[i\] \>= 23. If the caller
wants to find whether 23 is in the slice, it must test data\[i\] == 23
separately.  


Searching data sorted in descending order would use the \<=
operator instead of the \>= operator.  


To complete the example above, the following code tries to find the value
x in an integer slice data sorted in ascending order:  

```
        	x := 23
        	i := sort.Search(len(data), func(i int) bool { return data[i] >= x })
        	if i < len(data) && data[i] == x {
 x is present at data[i]
        	} else {
 x is not present in data,
 but i is the index where it would be inserted.
}
```

As a more whimsical example, this program guesses your number:  

```
        	func GuessingGame() {
        		var s string
        		fmt.Printf("Pick an integer from 0 to 100.\n")
        		answer := sort.Search(100, func(i int) bool {
        			fmt.Printf("Is your number <= %d? ", i)
        			fmt.Scanf("%s", &s)
        			return s != "" && s[0] == 'y'
        		})
        		fmt.Printf("Your number is %d.\n", answer)
}
```
[\(view code\)](<./Sort.hx#L175>)


### Sort function searchFloat64s


```haxe
function searchFloat64s(_a:Array<Float>, _x:Float):Int
```


```
SearchFloat64s searches for x in a sorted slice of float64s and returns the index
        as specified by Search. The return value is the index to insert x if x is not
        present (it could be len(a)).
        The slice must be sorted in ascending order.
```
[\(view code\)](<./Sort.hx#L228>)


### Sort function searchInts


```haxe
function searchInts(_a:Array<Int>, _x:Int):Int
```


```
SearchInts searches for x in a sorted slice of ints and returns the index
        as specified by Search. The return value is the index to insert x if x is
        not present (it could be len(a)).
        The slice must be sorted in ascending order.
```
[\(view code\)](<./Sort.hx#L218>)


### Sort function searchStrings


```haxe
function searchStrings(_a:Array<String>, _x:String):Int
```


```
SearchStrings searches for x in a sorted slice of strings and returns the index
        as specified by Search. The return value is the index to insert x if x is not
        present (it could be len(a)).
        The slice must be sorted in ascending order.
```
[\(view code\)](<./Sort.hx#L238>)


### Sort function slice


```haxe
function slice(_x:stdgo.AnyInterface, _less:(:stdgo.GoInt, :stdgo.GoInt):Bool):Void
```


```
Slice sorts the slice x given the provided less function.
        It panics if x is not a slice.
```

The sort is not guaranteed to be stable: equal elements
may be reversed from their original order.
For a stable sort, use SliceStable.  


The less function must satisfy the same requirements as
the Interface type's Less method.  

[\(view code\)](<./Sort.hx#L253>)


### Sort function sliceIsSorted


```haxe
function sliceIsSorted(_x:stdgo.AnyInterface, _less:(:stdgo.GoInt, :stdgo.GoInt):Bool):Bool
```


```
SliceIsSorted reports whether the slice x is sorted according to the provided less function.
        It panics if x is not a slice.
```
[\(view code\)](<./Sort.hx#L273>)


### Sort function sliceStable


```haxe
function sliceStable(_x:stdgo.AnyInterface, _less:(:stdgo.GoInt, :stdgo.GoInt):Bool):Void
```


```
SliceStable sorts the slice x using the provided less
        function, keeping equal elements in their original order.
        It panics if x is not a slice.
```

The less function must satisfy the same requirements as
the Interface type's Less method.  

[\(view code\)](<./Sort.hx#L265>)


### Sort function sort


```haxe
function sort(_data:stdgo.sort.Interface):Void
```


```
Sort sorts data in ascending order as determined by the Less method.
        It makes one call to data.Len to determine n and O(n*log(n)) calls to
        data.Less and data.Swap. The sort is not guaranteed to be stable.
```

Note: in many situations, the newer slices.SortFunc function is more
ergonomic and runs faster.  

[\(view code\)](<./Sort.hx#L285>)


### Sort function stable


```haxe
function stable(_data:stdgo.sort.Interface):Void
```


```
Stable sorts data in ascending order as determined by the Less method,
        while keeping the original order of equal elements.
```

It makes one call to data.Len to determine n, O\(n\*log\(n\)\) calls to
data.Less and O\(n\*log\(n\)\*log\(n\)\) calls to data.Swap.  


Note: in many situations, the newer slices.SortStableFunc function is more
ergonomic and runs faster.  

[\(view code\)](<./Sort.hx#L369>)


### Sort function strings


```haxe
function strings(_x:Array<String>):Void
```



Strings sorts a slice of strings in increasing order.  


Note: consider using the newer slices.Sort function, which runs faster.  

[\(view code\)](<./Sort.hx#L327>)


### Sort function stringsAreSorted


```haxe
function stringsAreSorted(_x:Array<String>):Bool
```



StringsAreSorted reports whether the slice x is sorted in increasing order.  


Note: consider using the newer slices.IsSorted function, which runs faster.  

[\(view code\)](<./Sort.hx#L355>)


# Typedefs


```haxe
import
```


## typedef Float64Slice


```haxe
typedef Float64Slice = stdgo._internal.sort.Float64Slice;
```


## typedef IntSlice


```haxe
typedef IntSlice = stdgo._internal.sort.IntSlice;
```


## typedef Interface


```haxe
typedef Interface = stdgo._internal.sort.Interface;
```


## typedef StringSlice


```haxe
typedef StringSlice = stdgo._internal.sort.StringSlice;
```


## typedef T\_sortedHint


```haxe
typedef T_sortedHint = stdgo._internal.sort.T_sortedHint;
```


## typedef T\_xorshift


```haxe
typedef T_xorshift = stdgo._internal.sort.T_xorshift;
```


# Abstracts


## abstract T\_lessSwap


[\(view file containing code\)](<./Sort.hx>)


## abstract T\_reverse


[\(view file containing code\)](<./Sort.hx>)


