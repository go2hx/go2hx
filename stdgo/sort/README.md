# Module: `stdgo.sort`

[(view library index)](../stdgo.md)


# Overview



Package sort provides primitives for sorting slices and user\-defined collections.  

# Index


- [`function find(n:Int, cmp:()):stdgo.Tuple<Int, Bool>`](<#function-find>)

- [`function float64s(x:Array<Float>):Void`](<#function-float64s>)

- [`function float64sAreSorted(x:Array<Float>):Bool`](<#function-float64saresorted>)

- [`function heapsort(data:stdgo.sort.Interface):Void`](<#function-heapsort>)

- [`function ints(x:Array<Int>):Void`](<#function-ints>)

- [`function intsAreSorted(x:Array<Int>):Bool`](<#function-intsaresorted>)

- [`function isSorted(data:stdgo.sort.Interface):Bool`](<#function-issorted>)

- [`function reverse(data:stdgo.sort.Interface):stdgo.sort.Interface`](<#function-reverse>)

- [`function reverseRange(data:stdgo.sort.Interface, a:Int, b:Int):Void`](<#function-reverserange>)

- [`function search(n:Int, f:()):Int`](<#function-search>)

- [`function searchFloat64s(a:Array<Float>, x:Float):Int`](<#function-searchfloat64s>)

- [`function searchInts(a:Array<Int>, x:Int):Int`](<#function-searchints>)

- [`function searchStrings(a:Array<String>, x:String):Int`](<#function-searchstrings>)

- [`function slice(x:stdgo.AnyInterface, less:(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool):Void`](<#function-slice>)

- [`function sliceIsSorted(x:stdgo.AnyInterface, less:(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool):Bool`](<#function-sliceissorted>)

- [`function sliceStable(x:stdgo.AnyInterface, less:(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool):Void`](<#function-slicestable>)

- [`function sort(data:stdgo.sort.Interface):Void`](<#function-sort>)

- [`function stable(data:stdgo.sort.Interface):Void`](<#function-stable>)

- [`function strings(x:Array<String>):Void`](<#function-strings>)

- [`function stringsAreSorted(x:Array<String>):Bool`](<#function-stringsaresorted>)

- [typedef Float64Slice](<#typedef-float64slice>)

- [typedef Float64Slice\_asInterface](<#typedef-float64slice_asinterface>)

- [typedef Float64Slice\_static\_extension](<#typedef-float64slice_static_extension>)

- [typedef IntSlice](<#typedef-intslice>)

- [typedef IntSlice\_asInterface](<#typedef-intslice_asinterface>)

- [typedef IntSlice\_static\_extension](<#typedef-intslice_static_extension>)

- [typedef Interface](<#typedef-interface>)

- [typedef StringSlice](<#typedef-stringslice>)

- [typedef StringSlice\_asInterface](<#typedef-stringslice_asinterface>)

- [typedef StringSlice\_static\_extension](<#typedef-stringslice_static_extension>)

- [typedef T\_lessSwap](<#typedef-t_lessswap>)

- [typedef T\_reverse](<#typedef-t_reverse>)

- [typedef T\_reverse\_asInterface](<#typedef-t_reverse_asinterface>)

- [typedef T\_reverse\_static\_extension](<#typedef-t_reverse_static_extension>)

- [typedef T\_sortedHint](<#typedef-t_sortedhint>)

- [typedef T\_xorshift](<#typedef-t_xorshift>)

- [typedef T\_xorshift\_asInterface](<#typedef-t_xorshift_asinterface>)

- [typedef T\_xorshift\_static\_extension](<#typedef-t_xorshift_static_extension>)

# Functions


```haxe
import stdgo.sort.Sort
```


## function find


```haxe
function find(n:Int, cmp:()):stdgo.Tuple<Int, Bool>
```



Find uses binary search to find and return the smallest index i in \[0, n\)
at which cmp\(i\) \<= 0. If there is no such index i, Find returns i = n.
The found result is true if i \< n and cmp\(i\) == 0.
Find calls cmp\(i\) only for i in the range \[0, n\).  


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
[\(view code\)](<./Sort.hx#L94>)


## function float64s


```haxe
function float64s(x:Array<Float>):Void
```



Float64s sorts a slice of float64s in increasing order.
Not\-a\-number \(NaN\) values are ordered before other values.  


Note: consider using the newer slices.Sort function, which runs faster.  

[\(view code\)](<./Sort.hx#L174>)


## function float64sAreSorted


```haxe
function float64sAreSorted(x:Array<Float>):Bool
```



Float64sAreSorted reports whether the slice x is sorted in increasing order,
with not\-a\-number \(NaN\) values before any other values.  


Note: consider using the newer slices.IsSorted function, which runs faster.  

[\(view code\)](<./Sort.hx#L193>)


## function heapsort


```haxe
function heapsort(data:stdgo.sort.Interface):Void
```


[\(view code\)](<./Sort.hx#L14>)


## function ints


```haxe
function ints(x:Array<Int>):Void
```



Ints sorts a slice of ints in increasing order.  


Note: consider using the newer slices.Sort function, which runs faster.  

[\(view code\)](<./Sort.hx#L167>)


## function intsAreSorted


```haxe
function intsAreSorted(x:Array<Int>):Bool
```



IntsAreSorted reports whether the slice x is sorted in increasing order.  


Note: consider using the newer slices.IsSorted function, which runs faster.  

[\(view code\)](<./Sort.hx#L186>)


## function isSorted


```haxe
function isSorted(data:stdgo.sort.Interface):Bool
```



IsSorted reports whether data is sorted.  


Note: in many situations, the newer slices.IsSortedFunc function is more
ergonomic and runs faster.  

[\(view code\)](<./Sort.hx#L161>)


## function reverse


```haxe
function reverse(data:stdgo.sort.Interface):stdgo.sort.Interface
```



Reverse returns the reverse order for data.  

[\(view code\)](<./Sort.hx#L154>)


## function reverseRange


```haxe
function reverseRange(data:stdgo.sort.Interface, a:Int, b:Int):Void
```


[\(view code\)](<./Sort.hx#L15>)


## function search


```haxe
function search(n:Int, f:()):Int
```



Search uses binary search to find and return the smallest index i
in \[0, n\) at which f\(i\) is true, assuming that on the range \[0, n\),
f\(i\) == true implies f\(i\+1\) == true. That is, Search requires that
f is false for some \(possibly empty\) prefix of the input range \[0, n\)
and then true for the \(possibly empty\) remainder; Search returns
the first true index. If there is no such index, Search returns n.
\(Note that the "not found" return value is not \-1 as in, for instance,
strings.Index.\)
Search calls f\(i\) only for i in the range \[0, n\).  


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
		// x is present at data[i]
	} else {
		// x is not present in data,
		// but i is the index where it would be inserted.
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
[\(view code\)](<./Sort.hx#L67>)


## function searchFloat64s


```haxe
function searchFloat64s(a:Array<Float>, x:Float):Int
```



SearchFloat64s searches for x in a sorted slice of float64s and returns the index
as specified by Search. The return value is the index to insert x if x is not
present \(it could be len\(a\)\).
The slice must be sorted in ascending order.  

[\(view code\)](<./Sort.hx#L108>)


## function searchInts


```haxe
function searchInts(a:Array<Int>, x:Int):Int
```



SearchInts searches for x in a sorted slice of ints and returns the index
as specified by Search. The return value is the index to insert x if x is
not present \(it could be len\(a\)\).
The slice must be sorted in ascending order.  

[\(view code\)](<./Sort.hx#L101>)


## function searchStrings


```haxe
function searchStrings(a:Array<String>, x:String):Int
```



SearchStrings searches for x in a sorted slice of strings and returns the index
as specified by Search. The return value is the index to insert x if x is not
present \(it could be len\(a\)\).
The slice must be sorted in ascending order.  

[\(view code\)](<./Sort.hx#L115>)


## function slice


```haxe
function slice(x:stdgo.AnyInterface, less:(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool):Void
```



Slice sorts the slice x given the provided less function.
It panics if x is not a slice.  


The sort is not guaranteed to be stable: equal elements
may be reversed from their original order.
For a stable sort, use SliceStable.  


The less function must satisfy the same requirements as
the Interface type's Less method.  

[\(view code\)](<./Sort.hx#L127>)


## function sliceIsSorted


```haxe
function sliceIsSorted(x:stdgo.AnyInterface, less:(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool):Bool
```



SliceIsSorted reports whether the slice x is sorted according to the provided less function.
It panics if x is not a slice.  

[\(view code\)](<./Sort.hx#L141>)


## function sliceStable


```haxe
function sliceStable(x:stdgo.AnyInterface, less:(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool):Void
```



SliceStable sorts the slice x using the provided less
function, keeping equal elements in their original order.
It panics if x is not a slice.  


The less function must satisfy the same requirements as
the Interface type's Less method.  

[\(view code\)](<./Sort.hx#L136>)


## function sort


```haxe
function sort(data:stdgo.sort.Interface):Void
```



Sort sorts data in ascending order as determined by the Less method.
It makes one call to data.Len to determine n and O\(n\*log\(n\)\) calls to
data.Less and data.Swap. The sort is not guaranteed to be stable.  


Note: in many situations, the newer slices.SortFunc function is more
ergonomic and runs faster.  

[\(view code\)](<./Sort.hx#L150>)


## function stable


```haxe
function stable(data:stdgo.sort.Interface):Void
```



Stable sorts data in ascending order as determined by the Less method,
while keeping the original order of equal elements.  


It makes one call to data.Len to determine n, O\(n\*log\(n\)\) calls to
data.Less and O\(n\*log\(n\)\*log\(n\)\) calls to data.Swap.  


Note: in many situations, the newer slices.SortStableFunc function is more
ergonomic and runs faster.  

[\(view code\)](<./Sort.hx#L210>)


## function strings


```haxe
function strings(x:Array<String>):Void
```



Strings sorts a slice of strings in increasing order.  


Note: consider using the newer slices.Sort function, which runs faster.  

[\(view code\)](<./Sort.hx#L180>)


## function stringsAreSorted


```haxe
function stringsAreSorted(x:Array<String>):Bool
```



StringsAreSorted reports whether the slice x is sorted in increasing order.  


Note: consider using the newer slices.IsSorted function, which runs faster.  

[\(view code\)](<./Sort.hx#L199>)


# Typedefs


```haxe
import stdgo.sort.*
```


## typedef Float64Slice


```haxe
typedef Float64Slice = stdgo._internal.sort.Float64Slice;
```


## typedef Float64Slice\_asInterface


```haxe
typedef Float64Slice_asInterface = Dynamic;
```


## typedef Float64Slice\_static\_extension


```haxe
typedef Float64Slice_static_extension = Dynamic;
```


## typedef IntSlice


```haxe
typedef IntSlice = stdgo._internal.sort.IntSlice;
```


## typedef IntSlice\_asInterface


```haxe
typedef IntSlice_asInterface = Dynamic;
```


## typedef IntSlice\_static\_extension


```haxe
typedef IntSlice_static_extension = Dynamic;
```


## typedef Interface


```haxe
typedef Interface = stdgo._internal.sort.Interface;
```


## typedef StringSlice


```haxe
typedef StringSlice = stdgo._internal.sort.StringSlice;
```


## typedef StringSlice\_asInterface


```haxe
typedef StringSlice_asInterface = Dynamic;
```


## typedef StringSlice\_static\_extension


```haxe
typedef StringSlice_static_extension = Dynamic;
```


## typedef T\_lessSwap


```haxe
typedef T_lessSwap = Dynamic;
```


## typedef T\_reverse


```haxe
typedef T_reverse = Dynamic;
```


## typedef T\_reverse\_asInterface


```haxe
typedef T_reverse_asInterface = Dynamic;
```


## typedef T\_reverse\_static\_extension


```haxe
typedef T_reverse_static_extension = Dynamic;
```


## typedef T\_sortedHint


```haxe
typedef T_sortedHint = stdgo._internal.sort.T_sortedHint;
```


## typedef T\_xorshift


```haxe
typedef T_xorshift = stdgo._internal.sort.T_xorshift;
```


## typedef T\_xorshift\_asInterface


```haxe
typedef T_xorshift_asInterface = Dynamic;
```


## typedef T\_xorshift\_static\_extension


```haxe
typedef T_xorshift_static_extension = Dynamic;
```


