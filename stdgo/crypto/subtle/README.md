# Module: stdgo.crypto.subtle


[(view library index)](../../stdgo.md)


# Overview


 


# Index


- [function constantTimeByteEq\(\_x:stdgo.GoUInt8, \_y:stdgo.GoUInt8\):stdgo.GoInt](<#function-constanttimebyteeq>)

- [function constantTimeCompare\(\_x:stdgo.Slice\<stdgo.GoByte\>, \_y:stdgo.Slice\<stdgo.GoByte\>\):stdgo.GoInt](<#function-constanttimecompare>)

- [function constantTimeCopy\(\_v:stdgo.GoInt, \_x:stdgo.Slice\<stdgo.GoByte\>, \_y:stdgo.Slice\<stdgo.GoByte\>\):Void](<#function-constanttimecopy>)

- [function constantTimeEq\(\_x:stdgo.GoInt32, \_y:stdgo.GoInt32\):stdgo.GoInt](<#function-constanttimeeq>)

- [function constantTimeLessOrEq\(\_x:stdgo.GoInt, \_y:stdgo.GoInt\):stdgo.GoInt](<#function-constanttimelessoreq>)

- [function constantTimeSelect\(\_v:stdgo.GoInt, \_x:stdgo.GoInt, \_y:stdgo.GoInt\):stdgo.GoInt](<#function-constanttimeselect>)

# Functions


```haxe
import stdgo.crypto.subtle.Subtle
```


## function constantTimeByteEq


```haxe
function constantTimeByteEq(_x:stdgo.GoUInt8, _y:stdgo.GoUInt8):stdgo.GoInt
```


ConstantTimeByteEq returns 1 if x == y and 0 otherwise. 


[\(view code\)](<./Subtle.hx#L39>)


## function constantTimeCompare


```haxe
function constantTimeCompare(_x:stdgo.Slice<stdgo.GoByte>, _y:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```


ConstantTimeCompare returns 1 if the two slices, x and y, have equal contents and 0 otherwise. The time taken is a function of the length of the slices and is independent of the contents. 


[\(view code\)](<./Subtle.hx#L16>)


## function constantTimeCopy


```haxe
function constantTimeCopy(_v:stdgo.GoInt, _x:stdgo.Slice<stdgo.GoByte>, _y:stdgo.Slice<stdgo.GoByte>):Void
```


ConstantTimeCopy copies the contents of y into x \(a slice of equal length\) if v == 1. If v == 0, x is left unchanged. Its behavior is undefined if v takes any other value. 


[\(view code\)](<./Subtle.hx#L53>)


## function constantTimeEq


```haxe
function constantTimeEq(_x:stdgo.GoInt32, _y:stdgo.GoInt32):stdgo.GoInt
```


ConstantTimeEq returns 1 if x == y and 0 otherwise. 


[\(view code\)](<./Subtle.hx#L45>)


## function constantTimeLessOrEq


```haxe
function constantTimeLessOrEq(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt
```


ConstantTimeLessOrEq returns 1 if x \<= y and 0 otherwise. Its behavior is undefined if x or y are negative or \> 2\*\*31 \- 1. 


[\(view code\)](<./Subtle.hx#L70>)


## function constantTimeSelect


```haxe
function constantTimeSelect(_v:stdgo.GoInt, _x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt
```


ConstantTimeSelect returns x if v == 1 and y if v == 0. Its behavior is undefined if v takes any other value. 


[\(view code\)](<./Subtle.hx#L33>)


