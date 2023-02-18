# Module: `stdgo.sort`

[(view library index)](../stdgo.md)


# Overview


Package sort provides primitives for sorting slices and user\-defined collections.  



<details><summary>hl tests passed</summary>
<p>

```
=== RUN  TestSearch
--- PASS: TestSearch (%!s(float64=0.0002529621124267578))

=== RUN  TestFind
--- PASS: TestFind (%!s(float64=4.00543212890625e-05))

=== RUN  TestSearchEfficiency
--- PASS: TestSearchEfficiency (%!s(float64=0.01903986930847168))

=== RUN  TestSearchWrappers
--- PASS: TestSearchWrappers (%!s(float64=1.1920928955078125e-05))

=== RUN  TestSearchWrappersDontAlloc
--- PASS: TestSearchWrappersDontAlloc (%!s(float64=5.9604644775390625e-06))

=== RUN  TestSearchExhaustive
--- PASS: TestSearchExhaustive (%!s(float64=0.03955793380737305))

=== RUN  TestFindExhaustive
--- PASS: TestFindExhaustive (%!s(float64=0.08128499984741211))

=== RUN  TestSortIntSlice
--- PASS: TestSortIntSlice (%!s(float64=3.3855438232421875e-05))

=== RUN  TestSortFloat64Slice
--- PASS: TestSortFloat64Slice (%!s(float64=3.695487976074219e-05))

=== RUN  TestSortStringSlice
--- PASS: TestSortStringSlice (%!s(float64=5.1021575927734375e-05))

=== RUN  TestInts
--- PASS: TestInts (%!s(float64=2.384185791015625e-05))

=== RUN  TestFloat64s
--- PASS: TestFloat64s (%!s(float64=4.100799560546875e-05))

=== RUN  TestStrings
--- PASS: TestStrings (%!s(float64=5.793571472167969e-05))

=== RUN  TestSlice
--- PASS: TestSlice (%!s(float64=0.00017905235290527344))

=== RUN  TestSortLarge_Random
--- PASS: TestSortLarge_Random (%!s(float64=0.014808893203735352))

=== RUN  TestReverseSortIntSlice
--- PASS: TestReverseSortIntSlice (%!s(float64=5.1021575927734375e-05))

=== RUN  TestBreakPatterns
--- PASS: TestBreakPatterns (%!s(float64=7.295608520507812e-05))

=== RUN  TestReverseRange
--- PASS: TestReverseRange (%!s(float64=1.1920928955078125e-05))

=== RUN  TestNonDeterministicComparison
--- PASS: TestNonDeterministicComparison (%!s(float64=5.367734909057617))

=== RUN  TestSortBM
--- PASS: TestSortBM (%!s(float64=0.6072349548339844))

=== RUN  TestHeapsortBM
--- PASS: TestHeapsortBM (%!s(float64=0.7611658573150635))

=== RUN  TestStableBM
--- PASS: TestStableBM (%!s(float64=0.9910252094268799))

=== RUN  TestAdversary
--- PASS: TestAdversary (%!s(float64=0.0213620662689209))

=== RUN  TestStableInts
--- PASS: TestStableInts (%!s(float64=3.0040740966796875e-05))

=== RUN  TestStability
--- PASS: TestStability (%!s(float64=0.02584385871887207))

=== RUN  TestCountStableOps
--- PASS: TestCountStableOps (%!s(float64=0.37839508056640625))

=== RUN  TestCountSortOps
--- PASS: TestCountSortOps (%!s(float64=0.03610706329345703))

```
</p>
</details>

<details><summary>interp tests passed</summary>
<p>

```
=== RUN  TestSearch
--- PASS: TestSearch (%!s(float64=0.0018398761749267578))

=== RUN  TestFind
--- PASS: TestFind (%!s(float64=6.604194641113281e-05))

=== RUN  TestSearchEfficiency
--- PASS: TestSearchEfficiency (%!s(float64=0.0820150375366211))

=== RUN  TestSearchWrappers
--- PASS: TestSearchWrappers (%!s(float64=1.5020370483398438e-05))

=== RUN  TestSearchWrappersDontAlloc
--- PASS: TestSearchWrappersDontAlloc (%!s(float64=1.2874603271484375e-05))

=== RUN  TestSearchExhaustive
--- PASS: TestSearchExhaustive (%!s(float64=0.1731090545654297))

=== RUN  TestFindExhaustive
--- PASS: TestFindExhaustive (%!s(float64=0.37192702293395996))

=== RUN  TestSortIntSlice
--- PASS: TestSortIntSlice (%!s(float64=0.00022292137145996094))

=== RUN  TestSortFloat64Slice
--- PASS: TestSortFloat64Slice (%!s(float64=0.00024700164794921875))

=== RUN  TestSortStringSlice
--- PASS: TestSortStringSlice (%!s(float64=0.0001327991485595703))

=== RUN  TestInts
--- PASS: TestInts (%!s(float64=0.0001728534698486328))

=== RUN  TestFloat64s
--- PASS: TestFloat64s (%!s(float64=0.0002300739288330078))

=== RUN  TestStrings
--- PASS: TestStrings (%!s(float64=0.0001239776611328125))

=== RUN  TestSlice
--- PASS: TestSlice (%!s(float64=0.0005559921264648438))

=== RUN  TestSortLarge_Random
--- PASS: TestSortLarge_Random (%!s(float64=0.17056608200073242))

=== RUN  TestReverseSortIntSlice
--- PASS: TestReverseSortIntSlice (%!s(float64=0.0003800392150878906))

=== RUN  TestBreakPatterns
--- PASS: TestBreakPatterns (%!s(float64=0.0005600452423095703))

=== RUN  TestReverseRange
--- PASS: TestReverseRange (%!s(float64=5.1021575927734375e-05))

=== RUN  TestNonDeterministicComparison
--- PASS: TestNonDeterministicComparison (%!s(float64=32.650245904922485))

=== RUN  TestSortBM
--- PASS: TestSortBM (%!s(float64=2.406829833984375))

=== RUN  TestHeapsortBM
--- PASS: TestHeapsortBM (%!s(float64=4.50872802734375))

=== RUN  TestStableBM
--- PASS: TestStableBM (%!s(float64=4.660267114639282))

=== RUN  TestAdversary
--- PASS: TestAdversary (%!s(float64=0.24206805229187012))

=== RUN  TestStableInts
--- PASS: TestStableInts (%!s(float64=0.00018715858459472656))

=== RUN  TestStability
--- PASS: TestStability (%!s(float64=0.17490196228027344))

=== RUN  TestCountStableOps
--- PASS: TestCountStableOps (%!s(float64=2.4515631198883057))

=== RUN  TestCountSortOps
--- PASS: TestCountSortOps (%!s(float64=0.3642458915710449))

```
</p>
</details>

<details><summary>jvm tests failed</summary>
<p>

```
IO.Overflow("write_ui16")
stdgo/internal/Macro.macro.hx:35: define
```
</p>
</details>


# Index


- [`function find(_n:stdgo.GoInt, _cmp:()):{_1:Bool, _0:stdgo.GoInt}`](<#function-find>)

- [`function float64s(_x:stdgo.Slice<stdgo.GoFloat64>):Void`](<#function-float64s>)

- [`function float64sAreSorted(_x:stdgo.Slice<stdgo.GoFloat64>):Bool`](<#function-float64saresorted>)

- [`function heapsort(_data:stdgo.sort.Interface):Void`](<#function-heapsort>)

- [`function ints(_x:stdgo.Slice<stdgo.GoInt>):Void`](<#function-ints>)

- [`function intsAreSorted(_x:stdgo.Slice<stdgo.GoInt>):Bool`](<#function-intsaresorted>)

- [`function isSorted(_data:stdgo.sort.Interface):Bool`](<#function-issorted>)

- [`function reverse(_data:stdgo.sort.Interface):stdgo.sort.Interface`](<#function-reverse>)

- [`function reverseRange(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-reverserange>)

- [`function search(_n:stdgo.GoInt, _f:()):stdgo.GoInt`](<#function-search>)

- [`function searchFloat64s(_a:stdgo.Slice<stdgo.GoFloat64>, _x:stdgo.GoFloat64):stdgo.GoInt`](<#function-searchfloat64s>)

- [`function searchInts(_a:stdgo.Slice<stdgo.GoInt>, _x:stdgo.GoInt):stdgo.GoInt`](<#function-searchints>)

- [`function searchStrings(_a:stdgo.Slice<stdgo.GoString>, _x:stdgo.GoString):stdgo.GoInt`](<#function-searchstrings>)

- [`function slice(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool):Void`](<#function-slice>)

- [`function sliceIsSorted(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool):Bool`](<#function-sliceissorted>)

- [`function sliceStable(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool):Void`](<#function-slicestable>)

- [`function sort(_data:stdgo.sort.Interface):Void`](<#function-sort>)

- [`function stable(_data:stdgo.sort.Interface):Void`](<#function-stable>)

- [`function strings(_x:stdgo.Slice<stdgo.GoString>):Void`](<#function-strings>)

- [`function stringsAreSorted(_x:stdgo.Slice<stdgo.GoString>):Bool`](<#function-stringsaresorted>)

- [typedef Float64Slice](<#typedef-float64slice>)

  - [`function len():stdgo.GoInt`](<#float64slice-function-len>)

  - [`function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool`](<#float64slice-function-less>)

  - [`function search( _x:stdgo.GoFloat64):stdgo.GoInt`](<#float64slice-function-search>)

  - [`function sort():Void`](<#float64slice-function-sort>)

  - [`function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#float64slice-function-swap>)

- [typedef IntSlice](<#typedef-intslice>)

  - [`function len():stdgo.GoInt`](<#intslice-function-len>)

  - [`function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool`](<#intslice-function-less>)

  - [`function search( _x:stdgo.GoInt):stdgo.GoInt`](<#intslice-function-search>)

  - [`function sort():Void`](<#intslice-function-sort>)

  - [`function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#intslice-function-swap>)

- [typedef Interface](<#typedef-interface>)

- [typedef StringSlice](<#typedef-stringslice>)

  - [`function len():stdgo.GoInt`](<#stringslice-function-len>)

  - [`function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool`](<#stringslice-function-less>)

  - [`function search( _x:stdgo.GoString):stdgo.GoInt`](<#stringslice-function-search>)

  - [`function sort():Void`](<#stringslice-function-sort>)

  - [`function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#stringslice-function-swap>)

# Examples


- [`exampleFloat64s`](<#examplefloat64s>)

- [`exampleFloat64sAreSorted`](<#examplefloat64saresorted>)

- [`exampleInts`](<#exampleints>)

- [`exampleIntsAreSorted`](<#exampleintsaresorted>)

- [`exampleReverse`](<#examplereverse>)

- [`exampleSearch`](<#examplesearch>)

- [`exampleSearchFloat64s`](<#examplesearchfloat64s>)

- [`exampleSearchInts`](<#examplesearchints>)

- [`exampleSearch_descendingOrder`](<#examplesearch_descendingorder>)

- [`exampleSlice`](<#exampleslice>)

- [`exampleSliceStable`](<#exampleslicestable>)

- [`exampleStrings`](<#examplestrings>)

# Functions


```haxe
import stdgo.sort.Sort
```


## function find


```haxe
function find(_n:stdgo.GoInt, _cmp:()):{_1:Bool, _0:stdgo.GoInt}
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






i, found := sort.Find\(x.Len\(\), func\(i int\) int \{  



return strings.Compare\(target, x.At\(i\)\)  



\}\)  



if found \{  



fmt.Printf\("found %s at entry %d\\n", target, i\)  



\} else \{  



fmt.Printf\("%s not found, would insert at %d", target, i\)  



\}  



[\(view code\)](<./Sort.hx#L229>)


## function float64s


```haxe
function float64s(_x:stdgo.Slice<stdgo.GoFloat64>):Void
```


Float64s sorts a slice of float64s in increasing order.  
Not\-a\-number \(NaN\) values are ordered before other values.  



### exampleFloat64s


<details><summary></summary>
<p>


```haxe
function exampleFloat64s():Void {
        var _s = (new Slice<GoFloat64>(0, 0, (5.2 : GoFloat64), (-1.3 : GoFloat64), (0.7 : GoFloat64), (-3.8 : GoFloat64), (2.6 : GoFloat64)) : Slice<GoFloat64>);
        stdgo.sort.Sort.float64s(_s);
        stdgo.fmt.Fmt.println(Go.toInterface(_s));
        _s = (new Slice<GoFloat64>(0, 0, stdgo.math.Math.inf((1 : GoInt)), stdgo.math.Math.naN(), stdgo.math.Math.inf((-1 : GoInt)), (0 : GoFloat64)) : Slice<GoFloat64>);
        stdgo.sort.Sort.float64s(_s);
        stdgo.fmt.Fmt.println(Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Sort.hx#L377>)


## function float64sAreSorted


```haxe
function float64sAreSorted(_x:stdgo.Slice<stdgo.GoFloat64>):Bool
```


Float64sAreSorted reports whether the slice x is sorted in increasing order,  
with not\-a\-number \(NaN\) values before any other values.  



### exampleFloat64sAreSorted


<details><summary></summary>
<p>


```haxe
function exampleFloat64sAreSorted():Void {
        var _s = (new Slice<GoFloat64>(0, 0, (0.7 : GoFloat64), (1.3 : GoFloat64), (2.6 : GoFloat64), (3.8 : GoFloat64), (5.2 : GoFloat64)) : Slice<GoFloat64>);
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.sort.Sort.float64sAreSorted(_s)));
        _s = (new Slice<GoFloat64>(0, 0, (5.2 : GoFloat64), (3.8 : GoFloat64), (2.6 : GoFloat64), (1.3 : GoFloat64), (0.7 : GoFloat64)) : Slice<GoFloat64>);
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.sort.Sort.float64sAreSorted(_s)));
        _s = (new Slice<GoFloat64>(0, 0, (5.2 : GoFloat64), (1.3 : GoFloat64), (0.7 : GoFloat64), (3.8 : GoFloat64), (2.6 : GoFloat64)) : Slice<GoFloat64>);
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.sort.Sort.float64sAreSorted(_s)));
    }
```


</p>
</details>


[\(view code\)](<./Sort.hx#L396>)


## function heapsort


```haxe
function heapsort(_data:stdgo.sort.Interface):Void
```





[\(view code\)](<./Sort.hx#L134>)


## function ints


```haxe
function ints(_x:stdgo.Slice<stdgo.GoInt>):Void
```


Ints sorts a slice of ints in increasing order.  



### exampleInts


<details><summary></summary>
<p>


```haxe
function exampleInts():Void {
        var _s = (new Slice<GoInt>(0, 0, (5 : GoInt), (2 : GoInt), (6 : GoInt), (3 : GoInt), (1 : GoInt), (4 : GoInt)) : Slice<GoInt>);
        stdgo.sort.Sort.ints(_s);
        stdgo.fmt.Fmt.println(Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Sort.hx#L370>)


## function intsAreSorted


```haxe
function intsAreSorted(_x:stdgo.Slice<stdgo.GoInt>):Bool
```


IntsAreSorted reports whether the slice x is sorted in increasing order.  



### exampleIntsAreSorted


<details><summary></summary>
<p>


```haxe
function exampleIntsAreSorted():Void {
        var _s = (new Slice<GoInt>(0, 0, (1 : GoInt), (2 : GoInt), (3 : GoInt), (4 : GoInt), (5 : GoInt), (6 : GoInt)) : Slice<GoInt>);
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.sort.Sort.intsAreSorted(_s)));
        _s = (new Slice<GoInt>(0, 0, (6 : GoInt), (5 : GoInt), (4 : GoInt), (3 : GoInt), (2 : GoInt), (1 : GoInt)) : Slice<GoInt>);
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.sort.Sort.intsAreSorted(_s)));
        _s = (new Slice<GoInt>(0, 0, (3 : GoInt), (2 : GoInt), (4 : GoInt), (1 : GoInt), (5 : GoInt)) : Slice<GoInt>);
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.sort.Sort.intsAreSorted(_s)));
    }
```


</p>
</details>


[\(view code\)](<./Sort.hx#L389>)


## function isSorted


```haxe
function isSorted(_data:stdgo.sort.Interface):Bool
```


IsSorted reports whether data is sorted.  



[\(view code\)](<./Sort.hx#L349>)


## function reverse


```haxe
function reverse(_data:stdgo.sort.Interface):stdgo.sort.Interface
```


Reverse returns the reverse order for data.  



### exampleReverse


<details><summary></summary>
<p>


```haxe
function exampleReverse():Void {
        var _s = (new Slice<GoInt>(0, 0, (5 : GoInt), (2 : GoInt), (6 : GoInt), (3 : GoInt), (1 : GoInt), (4 : GoInt)) : Slice<GoInt>);
        stdgo.sort.Sort.sort(stdgo.sort.Sort.reverse(Go.asInterface((_s : IntSlice))));
        stdgo.fmt.Fmt.println(Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Sort.hx#L343>)


## function reverseRange


```haxe
function reverseRange(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void
```





[\(view code\)](<./Sort.hx#L137>)


## function search


```haxe
function search(_n:stdgo.GoInt, _f:()):stdgo.GoInt
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






x := 23  



i := sort.Search\(len\(data\), func\(i int\) bool \{ return data\[i\] \>= x \}\)  



if i \< len\(data\) && data\[i\] == x \{  



x is present at data\[i\]  



\} else \{  



x is not present in data,  



but i is the index where it would be inserted.  



\}  



As a more whimsical example, this program guesses your number:  






func GuessingGame\(\) \{  



var s string  



fmt.Printf\("Pick an integer from 0 to 100.\\n"\)  



answer := sort.Search\(100, func\(i int\) bool \{  



fmt.Printf\("Is your number \<= %d? ", i\)  



fmt.Scanf\("%s", &s\)  



return s \!= "" && s\[0\] == 'y'  



\}\)  



fmt.Printf\("Your number is %d.\\n", answer\)  



\}  



### exampleSearch


<details><summary></summary>
<p>


```haxe
function exampleSearch():Void {
        var _a = (new Slice<GoInt>(
0,
0,
(1 : GoInt),
(3 : GoInt),
(6 : GoInt),
(10 : GoInt),
(15 : GoInt),
(21 : GoInt),
(28 : GoInt),
(36 : GoInt),
(45 : GoInt),
(55 : GoInt)) : Slice<GoInt>);
        var _x:GoInt = (6 : GoInt);
        var _i:GoInt = stdgo.sort.Sort.search((_a.length), function(_i:GoInt):Bool {
            return _a[(_i : GoInt)] >= _x;
        });
        if ((_i < _a.length) && (_a[(_i : GoInt)] == _x)) {
            stdgo.fmt.Fmt.printf(("found %d at index %d in %v\n" : GoString), Go.toInterface(_x), Go.toInterface(_i), Go.toInterface(_a));
        } else {
            stdgo.fmt.Fmt.printf(("%d not found in %v\n" : GoString), Go.toInterface(_x), Go.toInterface(_a));
        };
    }
```


</p>
</details>


### exampleSearch\_descendingOrder


<details><summary></summary>
<p>


```haxe
function exampleSearch_descendingOrder():Void {
        var _a = (new Slice<GoInt>(
0,
0,
(55 : GoInt),
(45 : GoInt),
(36 : GoInt),
(28 : GoInt),
(21 : GoInt),
(15 : GoInt),
(10 : GoInt),
(6 : GoInt),
(3 : GoInt),
(1 : GoInt)) : Slice<GoInt>);
        var _x:GoInt = (6 : GoInt);
        var _i:GoInt = stdgo.sort.Sort.search((_a.length), function(_i:GoInt):Bool {
            return _a[(_i : GoInt)] <= _x;
        });
        if ((_i < _a.length) && (_a[(_i : GoInt)] == _x)) {
            stdgo.fmt.Fmt.printf(("found %d at index %d in %v\n" : GoString), Go.toInterface(_x), Go.toInterface(_i), Go.toInterface(_a));
        } else {
            stdgo.fmt.Fmt.printf(("%d not found in %v\n" : GoString), Go.toInterface(_x), Go.toInterface(_a));
        };
    }
```


</p>
</details>


[\(view code\)](<./Sort.hx#L191>)


## function searchFloat64s


```haxe
function searchFloat64s(_a:stdgo.Slice<stdgo.GoFloat64>, _x:stdgo.GoFloat64):stdgo.GoInt
```


SearchFloat64s searches for x in a sorted slice of float64s and returns the index  
as specified by Search. The return value is the index to insert x if x is not  
present \(it could be len\(a\)\).  
The slice must be sorted in ascending order.  



### exampleSearchFloat64s


<details><summary></summary>
<p>


```haxe
function exampleSearchFloat64s():Void {
        var _a = (new Slice<GoFloat64>(0, 0, (1 : GoFloat64), (2 : GoFloat64), (3.3 : GoFloat64), (4.6 : GoFloat64), (6.1 : GoFloat64), (7.2 : GoFloat64), (8 : GoFloat64)) : Slice<GoFloat64>);
        var _x:GoFloat64 = (2 : GoFloat64);
        var _i:GoInt = stdgo.sort.Sort.searchFloat64s(_a, _x);
        stdgo.fmt.Fmt.printf(("found %g at index %d in %v\n" : GoString), Go.toInterface(_x), Go.toInterface(_i), Go.toInterface(_a));
        _x = (0.5 : GoFloat64);
        _i = stdgo.sort.Sort.searchFloat64s(_a, _x);
        stdgo.fmt.Fmt.printf(("%g not found, can be inserted at index %d in %v\n" : GoString), Go.toInterface(_x), Go.toInterface(_i), Go.toInterface(_a));
    }
```


</p>
</details>


[\(view code\)](<./Sort.hx#L259>)


## function searchInts


```haxe
function searchInts(_a:stdgo.Slice<stdgo.GoInt>, _x:stdgo.GoInt):stdgo.GoInt
```


SearchInts searches for x in a sorted slice of ints and returns the index  
as specified by Search. The return value is the index to insert x if x is  
not present \(it could be len\(a\)\).  
The slice must be sorted in ascending order.  



### exampleSearchInts


<details><summary></summary>
<p>


```haxe
function exampleSearchInts():Void {
        var _a = (new Slice<GoInt>(0, 0, (1 : GoInt), (2 : GoInt), (3 : GoInt), (4 : GoInt), (6 : GoInt), (7 : GoInt), (8 : GoInt)) : Slice<GoInt>);
        var _x:GoInt = (2 : GoInt);
        var _i:GoInt = stdgo.sort.Sort.searchInts(_a, _x);
        stdgo.fmt.Fmt.printf(("found %d at index %d in %v\n" : GoString), Go.toInterface(_x), Go.toInterface(_i), Go.toInterface(_a));
        _x = (5 : GoInt);
        _i = stdgo.sort.Sort.searchInts(_a, _x);
        stdgo.fmt.Fmt.printf(("%d not found, can be inserted at index %d in %v\n" : GoString), Go.toInterface(_x), Go.toInterface(_i), Go.toInterface(_a));
    }
```


</p>
</details>


[\(view code\)](<./Sort.hx#L248>)


## function searchStrings


```haxe
function searchStrings(_a:stdgo.Slice<stdgo.GoString>, _x:stdgo.GoString):stdgo.GoInt
```


SearchStrings searches for x in a sorted slice of strings and returns the index  
as specified by Search. The return value is the index to insert x if x is not  
present \(it could be len\(a\)\).  
The slice must be sorted in ascending order.  



[\(view code\)](<./Sort.hx#L270>)


## function slice


```haxe
function slice(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool):Void
```


Slice sorts the slice x given the provided less function.  
It panics if x is not a slice.  



The sort is not guaranteed to be stable: equal elements  
may be reversed from their original order.  
For a stable sort, use SliceStable.  



The less function must satisfy the same requirements as  
the Interface type's Less method.  



### exampleSlice


<details><summary></summary>
<p>


```haxe
function exampleSlice():Void {
        var _people = (new Slice<Person>(0, 0, (new Person(("Gopher" : GoString), (7 : GoInt)) : Person), (new Person(("Alice" : GoString), (55 : GoInt)) : Person), (new Person(("Vera" : GoString), (24 : GoInt)) : Person), (new Person(("Bob" : GoString), (75 : GoInt)) : Person)) : Slice<Person>);
        stdgo.sort.Sort.slice(Go.toInterface(_people), function(_i:GoInt, _j:GoInt):Bool {
            return _people[(_i : GoInt)].name < _people[(_j : GoInt)].name;
        });
        stdgo.fmt.Fmt.println(Go.toInterface(("By name:" : GoString)), Go.toInterface(_people));
        stdgo.sort.Sort.slice(Go.toInterface(_people), function(_i:GoInt, _j:GoInt):Bool {
            return _people[(_i : GoInt)].age < _people[(_j : GoInt)].age;
        });
        stdgo.fmt.Fmt.println(Go.toInterface(("By age:" : GoString)), Go.toInterface(_people));
    }
```


</p>
</details>


[\(view code\)](<./Sort.hx#L286>)


## function sliceIsSorted


```haxe
function sliceIsSorted(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool):Bool
```


SliceIsSorted reports whether the slice x is sorted according to the provided less function.  
It panics if x is not a slice.  



[\(view code\)](<./Sort.hx#L310>)


## function sliceStable


```haxe
function sliceStable(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool):Void
```


SliceStable sorts the slice x using the provided less  
function, keeping equal elements in their original order.  
It panics if x is not a slice.  



The less function must satisfy the same requirements as  
the Interface type's Less method.  



### exampleSliceStable


<details><summary></summary>
<p>


```haxe
function exampleSliceStable():Void {
        var _people = (new Slice<Person>(0, 0, (new Person(("Alice" : GoString), (25 : GoInt)) : Person), (new Person(("Elizabeth" : GoString), (75 : GoInt)) : Person), (new Person(("Alice" : GoString), (75 : GoInt)) : Person), (new Person(("Bob" : GoString), (75 : GoInt)) : Person), (new Person(("Alice" : GoString), (75 : GoInt)) : Person), (new Person(("Bob" : GoString), (25 : GoInt)) : Person), (new Person(("Colin" : GoString), (25 : GoInt)) : Person), (new Person(("Elizabeth" : GoString), (25 : GoInt)) : Person)) : Slice<Person>);
        stdgo.sort.Sort.sliceStable(Go.toInterface(_people), function(_i:GoInt, _j:GoInt):Bool {
            return _people[(_i : GoInt)].name < _people[(_j : GoInt)].name;
        });
        stdgo.fmt.Fmt.println(Go.toInterface(("By name:" : GoString)), Go.toInterface(_people));
        stdgo.sort.Sort.sliceStable(Go.toInterface(_people), function(_i:GoInt, _j:GoInt):Bool {
            return _people[(_i : GoInt)].age < _people[(_j : GoInt)].age;
        });
        stdgo.fmt.Fmt.println(Go.toInterface(("By age,name:" : GoString)), Go.toInterface(_people));
    }
```


</p>
</details>


[\(view code\)](<./Sort.hx#L301>)


## function sort


```haxe
function sort(_data:stdgo.sort.Interface):Void
```


Sort sorts data in ascending order as determined by the Less method.  
It makes one call to data.Len to determine n and O\(n\*log\(n\)\) calls to  
data.Less and data.Swap. The sort is not guaranteed to be stable.  



[\(view code\)](<./Sort.hx#L328>)


## function stable


```haxe
function stable(_data:stdgo.sort.Interface):Void
```


Stable sorts data in ascending order as determined by the Less method,  
while keeping the original order of equal elements.  



It makes one call to data.Len to determine n, O\(n\*log\(n\)\) calls to  
data.Less and O\(n\*log\(n\)\*log\(n\)\) calls to data.Swap.  



[\(view code\)](<./Sort.hx#L412>)


## function strings


```haxe
function strings(_x:stdgo.Slice<stdgo.GoString>):Void
```


Strings sorts a slice of strings in increasing order.  



### exampleStrings


<details><summary></summary>
<p>


```haxe
function exampleStrings():Void {
        var _s = (new Slice<GoString>(0, 0, ("Go" : GoString), ("Bravo" : GoString), ("Gopher" : GoString), ("Alpha" : GoString), ("Grin" : GoString), ("Delta" : GoString)) : Slice<GoString>);
        stdgo.sort.Sort.strings(_s);
        stdgo.fmt.Fmt.println(Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Sort.hx#L383>)


## function stringsAreSorted


```haxe
function stringsAreSorted(_x:stdgo.Slice<stdgo.GoString>):Bool
```


StringsAreSorted reports whether the slice x is sorted in increasing order.  



[\(view code\)](<./Sort.hx#L402>)


# Typedefs


```haxe
import stdgo.sort.*
```


## typedef Float64Slice


```haxe
typedef Float64Slice = var x:stdgo.GoFloat64
```


Float64Slice implements Interface for a \[\]float64, sorting in increasing order,  
with not\-a\-number \(NaN\) values ordered before other values.  



### Float64Slice function len


```haxe
function len():stdgo.GoInt
```





[\(view code\)](<./Sort.hx#L1515>)


### Float64Slice function less


```haxe
function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


Less reports whether x\[i\] should be ordered before x\[j\], as required by the sort Interface.  
Note that floating\-point comparison by itself is not a transitive relation: it does not  
report a consistent ordering for not\-a\-number \(NaN\) values.  
This implementation of Less places NaN values before any others, by using:  






x\[i\] \< x\[j\] || \(math.IsNaN\(x\[i\]\) && \!math.IsNaN\(x\[j\]\)\)  



[\(view code\)](<./Sort.hx#L1511>)


### Float64Slice function search


```haxe
function search( _x:stdgo.GoFloat64):stdgo.GoInt
```


Search returns the result of applying SearchFloat64s to the receiver and x.  



[\(view code\)](<./Sort.hx#L1522>)


### Float64Slice function sort


```haxe
function sort():Void
```


Sort is a convenience method: x.Sort\(\) calls Sort\(x\).  



[\(view code\)](<./Sort.hx#L1490>)


### Float64Slice function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```





[\(view code\)](<./Sort.hx#L1494>)


## typedef IntSlice


```haxe
typedef IntSlice = var x:stdgo.GoInt
```


IntSlice attaches the methods of Interface to \[\]int, sorting in increasing order.  



### IntSlice function len


```haxe
function len():stdgo.GoInt
```





[\(view code\)](<./Sort.hx#L1441>)


### IntSlice function less


```haxe
function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```





[\(view code\)](<./Sort.hx#L1437>)


### IntSlice function search


```haxe
function search( _x:stdgo.GoInt):stdgo.GoInt
```


Search returns the result of applying SearchInts to the receiver and x.  



[\(view code\)](<./Sort.hx#L1448>)


### IntSlice function sort


```haxe
function sort():Void
```


Sort is a convenience method: x.Sort\(\) calls Sort\(x\).  



[\(view code\)](<./Sort.hx#L1424>)


### IntSlice function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```





[\(view code\)](<./Sort.hx#L1428>)


## typedef Interface


```haxe
typedef Interface = var a:{<__underlying__> | (_i:stdgo.GoInt, _j:stdgo.GoInt):Void | {<haxe_doc>} | (_i:stdgo.GoInt, _j:stdgo.GoInt):Bool | {<haxe_doc>} | ():stdgo.GoInt | {<haxe_doc>} | ():stdgo.AnyInterface}
```


An implementation of Interface can be sorted by the routines in this package.  
The methods refer to elements of the underlying collection by integer index.  



## typedef StringSlice


```haxe
typedef StringSlice = var x:stdgo.GoString
```


StringSlice attaches the methods of Interface to \[\]string, sorting in increasing order.  



### StringSlice function len


```haxe
function len():stdgo.GoInt
```





[\(view code\)](<./Sort.hx#L1573>)


### StringSlice function less


```haxe
function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```





[\(view code\)](<./Sort.hx#L1569>)


### StringSlice function search


```haxe
function search( _x:stdgo.GoString):stdgo.GoInt
```


Search returns the result of applying SearchStrings to the receiver and x.  



[\(view code\)](<./Sort.hx#L1580>)


### StringSlice function sort


```haxe
function sort():Void
```


Sort is a convenience method: x.Sort\(\) calls Sort\(x\).  



[\(view code\)](<./Sort.hx#L1556>)


### StringSlice function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```





[\(view code\)](<./Sort.hx#L1560>)


